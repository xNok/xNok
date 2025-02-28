---
title: "Speedup Ansible Playbook Pull-Requests by only running affected roles"
date: 2024-07-23
draft: false
categories: ["DevOps"]
tags: ["Ansible", "GitHub Actions", "CI/CD"]
images:
  - https://miro.medium.com/v2/resize:fit:955/1*V-ShWQ8gWe6JHw0985945g.png
---

> Original Complete Article : [Read on Medium](https://medium.com/itnext/speedup-ansible-playbook-merge-request-by-only-running-affected-roles-42d9ca3f6433)

## Summary

This article explains how I optimized my **Ansible playbooks** pull-requests by implementing a feature I called `affected_roles`. This allows for conditional role execution based on changes detected in a **pull request**. 

This solution involves detecting which roles are affected by changes using a dedicated role that runs on the Ansoble executor and sets facts about which roles are affected based on `git diff` This allows you to define `when` conditions on each role you want to run conditionally. I provide code snippets and explanations for registering the current branch, detecting changes, extracting affected folders, and filtering folders within the roles directory.

I hope this will be helpful to anyone having to deal with the Ansible playbook and will allow you to have faster pull request validations on your Ansible projects.
