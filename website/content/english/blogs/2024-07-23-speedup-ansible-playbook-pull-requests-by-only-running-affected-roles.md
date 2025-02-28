---
title: 'Speedup Ansible Playbook Pull-Requests by only running affected roles'
date: 2024-07-23
draft: false
---

Original article: [Speedup Ansible Playbook Pull-Requests by only running affected roles](https://medium.com/itnext/speedup-ansible-playbook-merge-request-by-only-running-affected-roles-42d9ca3f6433)

In this article, I discuss how to speed up **Ansible** playbook deployments by implementing a feature called `affected_roles`. This feature allows conditional role deployment based on changes detected in a pull request.

I guide you through the process of detecting which roles are affected by changes, using **GitHub Actions** in conjunction with **Ansible**, and improving the efficiency of CI/CD workflows. I was frustrated that Ansible applied all roles, even when nothing had changed, leading to inefficient deployments. The solution involves using `git diff` to identify changed files and then extracting the affected roles. The logic is encapsulated in an `affected_roles` Ansible role. If you are using Ansible for your infra provisioning you will find that tip quite helpfull.
