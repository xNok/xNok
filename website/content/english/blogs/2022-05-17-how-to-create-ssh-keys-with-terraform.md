---
title: "How to Create SSH keys with Terraform"
date: 2022-05-17
draft: false
categories: ["DevOps"]
tags: ["Terraform", "GitHub Actions"]
images:
- https://miro.medium.com/v2/resize:fit:1100/format:webp/0*Awoi_2ICuXm2yOY1.png
---

> Original Article: [How to Create SSH keys with Terraform?](https://faun.pub/how-to-create-ssh-keys-with-terraform-a615dfc631c1)

## Summary

This article guides you through generating **SSH key pairs** using **Terraform**, provisioning a virtual machine (**VM**) with the generated keys, and leveraging **GitHub Actions** for secure server access. It covers key generation, VM configuration, and setting up secrets in GitHub, ensuring convenient infrastructure management. 

Key topics include:

*   Generating SSH key pairs with Terraform.
*   Provisioning a VM with the generated SSH keys (Digital Ocean example).
*   Using GitHub Actions to securely access the server.
*   Automating the creation of GitHub environment secrets with Terraform.

This approach enables you to manage your infrastructure as code and avoid manually handling **SSH keys**, assuming you trust your Terraform Backend Storage (an issue that might finally be solved in future terraform versions)
