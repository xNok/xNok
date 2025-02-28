---
title: 'Speedup Ansible Playbook Pull-Requests by only running affected roles'
date: 2024-07-23
---

Original article: [Speedup Ansible Playbook Pull-Requests by only running affected roles](https://medium.com/itnext/speedup-ansible-playbook-merge-request-by-only-running-affected-roles-42d9ca3f6433)

This article describes how to optimize **Ansible** playbook deployments by implementing a feature called `affected_roles`. This feature allows for conditional role deployment based on changes detected in a **pull request**. The process involves detecting which roles are affected by changes, using **GitHub Actions** in conjunction with **Ansible**, and ultimately improving the efficiency of CI/CD workflows. The author was frustrated that **Ansible** applied all defined roles, even when nothing had changed, so he created a solution to apply atomic changes without running the entire playbook. You will learn how to implement this feature, which enables conditional role deployment based on changes detected in a pull request. The article provides code snippets and explanations for registering the current branch, detecting changes using `git diff`, and extracting affected folders.

I hope you find it useful to speed up your Ansible Playbook
