---
title: "Speedup Ansible Playbook Pull-Requests by only running affected roles"
date: 2024-07-23
draft: false
categories: ["DevOps"]
tags: ["Ansible", "GitHub Actions", "CI/CD"]
images:
  - https://miro.medium.com/v2/resize:fit:955/1*V-ShWQ8gWe6JHw0985945g.png
---

> Original Article : [Read on Medium](https://medium.com/itnext/speedup-ansible-playbook-merge-request-by-only-running-affected-roles-42d9ca3f6433)

## Summary

This article explains how **I** optimized my **Ansible playbooks** pull-requests by implementing a feature I called `affected_roles`. This allows for conditional role execution based on changes detected in a **pull request**. This solution involves detecting which roles are affected by changes, using a dedicated role that runs on the Ansible executor and sets facts about which roles are affected based on `git diff`. This allows **you** to define `when` conditions on each role you want to run conditionally. I provide code snippets and explanations for registering the current branch, detecting changes, extracting affected folders, and filtering folders within the roles directory. I hope this will be helpful to anyone having to deal with the Ansible playbook and will allow you to have faster pull request validations on your Ansible projects.

# Problem Statement

I recently encountered a frustrating inefficiency in my self-hosted projects using Ansible and GitHub Actions: every pull request triggered the execution of all defined Ansible roles, even when only minor configuration changes were made. For a relatively small project, this full playbook run for atomic changes significantly hampered iteration and feature development. My goal was to devise a solution for conditional role deployment based on changes detected in a pull request.

My approach assumes the environment is synchronized with the main branch; pull requests should focus on atomic changes. Once a pull request is merged, the entire playbook should run for sanity.

You can find the project I'm referencing on GitHub:
- [infra-bootstrap-tools](https://github.com/xNok/infra-bootstrap-tools)

To address this, I propose creating an `affected_roles` Ansible role designed to run on `localhost` (either locally or within the GitHub Action Runner). This role will use `git diff` to determine which roles have been affected by changes and then set facts accordingly. These facts will allow us to define `when` conditions for each role, enabling conditional execution. Let’s dig in!

# Detecting affected Roles

Ansible roles are a structured way to organize tasks, making code reuse easier. A role is considered "affected" if any files within its dedicated folder have changed.

## Registering the Current Branch

First, we need to identify the current branch to differentiate between main branch runs (where all roles should execute) and feature branch runs (where only affected roles should execute).

Initially, I tried this:
```yaml
- name: Register current branch
  ansible.builtin.shell: git rev-parse --abbrev-ref HEAD
  register: branch

- debug: msg="{{ branch.stdout }}"
```

However, GitHub Actions operate on a detached head, which complicates direct branch detection. To make this CI/CD agnostic, I assume a `BRANCH_NAME` variable is set in the CI environment.

Here’s the adjusted task:
```yaml
- name: Register current branch
  ansible.builtin.shell: |
    if [ -z "$BRANCH_NAME" ]; then
      BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
    fi
    echo $BRANCH_NAME
  register: branch
```

In GitHub Actions, you can set the `BRANCH_NAME` environment variable like this:
```yaml
- name: run playbook
  run: |
    ansible-playbook -i inventory ansible/docker-swarm-portainer-caddy.yml
  env:
    BRANCH_NAME: ${{ github.head_ref }}
```

## Detecting Changes Using Git Diff

Next, we use `git diff` to pinpoint files that have changed between the main branch and the current branch.

```yaml
- name: Register the git diff
  ansible.builtin.shell: git diff --name-only origin/main..origin/{{ branch.stdout }} .
  register: diff

- debug: msg="{{ diff.stdout_lines }}"
```

It’s crucial to specify `origin/main..origin/{{ branch.stdout }}` because GitHub Actions perform shallow clones, making local branch references unavailable.

## Extracting Affected Folders

The next step involves extracting the folders from the `git diff` output to identify directories with changes. This is where the core logic begins. We use a regex to parse the file list into unique folder paths.

```yaml
- name: Extract folders from the diff
  set_fact:
    changed_folders: "{{ diff.stdout_lines
      | map('regex_replace', '^(.*)/.*$' , '\1')
      | unique }}"
```

The `regex_replace` and `unique` filters are essential for obtaining a clean list of modified folders.

## Filtering Folders Within the Roles Directory

Finally, we filter these `changed_folders` to specifically identify those within the `roles` directory, focusing on the roles that have actually been modified. While it might be possible to combine this with the previous step, separating them simplified the regex logic.

```yaml
- name: Filter folders within the roles directory
  set_fact:
    roles_with_changes: "{{ changed_folders
      | select('match', '^' + roles_folder + '/')
      | map('regex_replace', '^' + roles_folder + '/([^/]+)/.*$', '\1')
      | unique }}"
  when: branch.stdout != default_branch
```

This ensures that only truly modified roles are considered for conditional execution. These tasks complete the detection logic!

# Using the affected_roles Role in the Main Playbook

We encapsulate this logic into a dedicated Ansible role named `affected_roles`. Assuming a folder structure like this:

```
roles/
  affected_roles/
    tasks/
      main.yml
  role1/
  role2/
  role3/
```

You can find the completed code for the `affected_roles` here:
- [infra-bootstrap-tools/ansible/roles/utils-affected-roles/tasks/main.yaml](https://github.com/xNok/infra-bootstrap-tools/blob/main/ansible/roles/utils-affected-roles/tasks/main.yaml)

Now, we can integrate the `affected_roles` into our main playbook. After it executes on `localhost`, the `hostvars['localhost']['roles_with_changes']` variable will contain a list of roles that need to be run. Here’s an example:

```yaml
- name: Determine affected roles
  hosts: localhost
  gather_facts: no
  roles:
    - affected_roles

- name: Conditionally run roles based on changes
  hosts: all
  gather_facts: no
  tasks:
    - name: Include role_1 if it has changes
      include_role:
        name: role_1
      when: "'role_1' in hostvars['localhost']['roles_with_changes']"
    - name: Include role_2 if it has changes
      include_role:
        name: role_2
      when: "'role_2' in hostvars['localhost']['roles_with_changes']"
    - name: Include role_3 if it has changes
      include_role:
        name: role_3
      when: "'role_3' in hostvars['localhost']['roles_with_changes']"
```

This main playbook first runs `affected_roles` to identify changes, then conditionally includes `role_1`, `role_2`, and `role_3` based on the `roles_with_changes` variable.

# Conclusion

The `affected_roles` feature significantly enhances the efficiency of my Ansible playbook deployments by ensuring that only the roles impacted by changes in a pull request are executed. This leads to faster CI/CD pipelines and a more streamlined development workflow.

If you are interested in learning more about running Ansible playbooks with GitHub Actions, I recommend this article:
- [How to Run an Ansible Playbook using GitHub Action?](https://faun.pub/automate-your-provisioning-from-github-8c9bb75de8f3)

Here are a few more recommendations if you are interested in Ansible and GitHub Action automation:
- Create an Ansible Inventory with Terraform. You don’t want to manually create the inventory and define a secret in Github Action as we did in this tutorial. This is an unnecessary step, so let’s automate it.
- Create SSH keys with Terraform. How about you also create `KNOWN_HOSTS` , `SSH_KEY` Directly with Terraform, so you never have to configure anything in GitHub UI.

If you’re interested in my other stories, DevOps, Kubernetes, and Security, Follow me on [Twitter](https://twitter.com/xNok) and [LinkedIn](https://www.linkedin.com/in/alexandrecouedelo/).