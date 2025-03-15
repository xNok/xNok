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

In this article, I guide you through the process of effectively rotating **Docker Swarm secrets** using **Ansible**. As you know, Docker Swarm secrets are immutable, so you will learn how to automate secret management in a Docker Swarm environment. This involves implementing an Ansible role for secret rotation, covering **checksum calculations**, creating new secrets, updating Docker Compose files, and cleaning up unused secrets. By following this guide, you will gain a clear understanding of how to maintain the security of your applications by managing secret values efficiently. I also provide reference links to help you integrate this solution into your CI/CD pipeline, ensuring that your secrets are always up-to-date.

## References

*   [infra-bootstrap-tools/ansible/roles/utils-rotate-docker-secrets at main](https://github.com/xNok/infra-bootstrap-tools/tree/main/ansible/roles/utils-rotate-docker-secrets)
*   [How to Run an Ansible Playbook using GitHub Action?](https://faun.pub/@alexandrecouedelo/how-to-run-an-ansible-playbook-using-github-action-b9c95c7b3ca3)
