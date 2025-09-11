---
title: "How to Create Ansible Inventory with Terraform?"
date: 2022-05-26
draft: false
categories: ["DevOps"]
tags: ["Terraform", "Ansible", "GitHub Actions"]
images:
  - https://miro.medium.com/max/902/1*q3hBzwv18My0sjrr8nYliw.png
---

> Original Article: [How to create Ansible Inventory with Terraform?](https://medium.com/p/a32fcbe11be6)

## Summary

This article guides you through creating an **Ansible inventory** using **Terraform**, effectively combining infrastructure provisioning with configuration management. You'll learn how I generate the inventory file with Terraform's `templatefile` function, store it as a **GitHub secret**, and leverage **GitHub Actions** for seamless automation of server configuration. The post emphasizes using dedicated tools for specific operations and provides practical examples for setting up your environment, including managing SSH key pairs for secure server connections. I delve into the benefits of this approach for sharing information between toolchains and streamlining your DevOps workflow.

## Key Concepts

*   **Ansible Inventory Generation with Terraform:** Learn to create dynamic Ansible inventory files using Terraform's templating capabilities.
*   **GitHub Secrets for Inventory Storage:** Discover how to securely store your Ansible inventory as a GitHub secret for automated workflows.
*   **GitHub Actions Integration:** Understand how to trigger Ansible runs using GitHub Actions after infrastructure provisioning.
*   **SSH Key Pair Management:** Emphasizes the importance of SSH key pairs and host key inventory for secure connections.

## References

*   [Original Article](https://medium.com/p/a32fcbe11be6)
*   [Terraform templatefile function documentation](https://www.terraform.io/docs/language/functions/templatefile.html)
*   [Ansible Inventory documentation](https://docs.ansible.com/ansible/latest/inventory_guide/index.html)
*   [GitHub Actions documentation](https://docs.github.com/en/actions)
*   [GitHub provider for Terraform documentation](https://registry.terraform.io/providers/integrations/github/latest/docs)
*   [digitalocean_droplet Terraform resource](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet)
*   [github_repository_environment Terraform resource](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_environment)
*   [github_actions_environment_secret Terraform resource](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_secret)