---
title: "Rotating Docker Swarm Secrets with Ansible"
date: 2024-07-29
draft: false
categories: ["DevOps"]
tags: ["Ansible", "Docker", "Security"]
images:
- https://miro.medium.com/v2/resize:fit:955/0*uNwHpgYYzuLaV68n.png
---

> Original Article: [Rotating Docker Swarm Secrets with Ansible](https://medium.com/itnext/rotating-docker-swarm-secrets-with-ansible-cbaddfdd8ee9)

## Summary

In this article, I guide you through effectively rotating **Docker Swarm secrets** using **Ansible**, ensuring your application maintains security by managing secret values efficiently. Docker Swarm secrets are **immutable**, which presents a challenge for updates. I provide a step-by-step guide on implementing an Ansible role for secret rotation, covering crucial steps like **checksum calculations** to detect changes, **creating new secrets**, **updating Docker Compose files** to reference these new secrets, and **cleaning up unused secrets**. By automating this process, you will gain a clear understanding of efficient secret management in a Docker Swarm environment, significantly enhancing your **security posture**.

## References

*   [infra-bootstrap-tools/ansible/roles/utils-rotate-docker-secrets](https://github.com/xNok/infra-bootstrap-tools/tree/main/ansible/roles/utils-rotate-docker-secrets)
*   [How to Run an Ansible Playbook using GitHub Action?](https://faun.pub/@alexandrecoudelo/how-to-run-an-ansible-playbook-using-github-action-b9c95c7b3ca3)