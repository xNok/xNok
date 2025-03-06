---
title: "How to Create SSH keys with Terraform"
date: 2022-05-17
draft: false
categories: ["Terraform", "GitHub Actions", "Security"]
tags: ["Terraform", "GitHub Actions", "SSH", "CI/CD"]
images:
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/bd7f1233-e7ca-477f-8b2e-61f050221db8/0Awoi_2ICuXm2yOY1.png
---

> Original Article: [How to Create SSH keys with Terraform?](https://faun.pub/how-to-create-ssh-keys-with-terraform-a615dfc631c1)

## Summary

This article guides you through generating **SSH key pairs** using **Terraform**, provisioning a virtual machine (**VM**) with the generated keys, and leveraging **GitHub Actions** for secure server access. It covers key generation, VM configuration, and setting up secrets in GitHub, ensuring efficient and secure infrastructure management. The article emphasizes managing **SSH keys** as code to enhance security and streamline **CI/CD** pipelines.

Key topics include:

*   Generating SSH key pairs with Terraform.
*   Provisioning a VM with the generated SSH keys (Digital Ocean example).
*   Using GitHub Actions to securely access the server.
*   Automating the creation of GitHub environment secrets with Terraform.

This approach enables you to manage your infrastructure as code and avoid manually handling **SSH keys**, thereby improving security and automation in your **DevOps** workflows. You will also learn how to avoid manually handling **SSH keys** by automating their creation and management using Terraform and GitHub Actions.
