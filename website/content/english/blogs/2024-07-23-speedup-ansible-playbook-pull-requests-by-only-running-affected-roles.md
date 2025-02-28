---title: "Speedup Ansible Playbook Pull-Requests by only running affected roles"
date: 2024-07-23
draft: false
categories: ["DevOps"]
tags: ["Ansible", "GitHub Actions", "CI/CD"]
images:
  - https://miro.medium.com/v2/resize:fit:955/1*V-ShWQ8gWe6JHw0985945g.png
---

> Original Complete Article : [Read on Medium](https://medium.com/itnext/speedup-ansible-playbook-merge-request-by-only-running-affected-roles-42d9ca3f6433)

## Summary

This article explains how I optimized **Ansible playbook** deployments by implementing a feature called `affected_roles`. This allows for conditional role deployment based on changes detected in a **pull request**. I walk you through detecting which roles are affected by changes, using **GitHub Actions** in conjunction with Ansible, and improving the efficiency of CI/CD workflows. The key is to create an `affected_roles` role that runs on localhost and sets facts about which roles are affected based on `git diff`. This allows you to define `when` conditions on each role you want to run conditionally. I provide code snippets and explanations for registering the current branch, detecting changes using `git diff`, extracting affected folders, and filtering folders within the roles directory.

I hope this was helpful to You and alow you to have faster pull request validations on your Ansible projects.
