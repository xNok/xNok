---
title: "DevSecOps CI/CD : Understanding the Fundamentals"
date: 2024-02-09
draft: false
categories: ["Security"]
tags: ["DevSecOps", "CI/CD"]
images:
- https://www.gologic.ca/wp-content/uploads/2023/10/Blog_4360-x-3267_Securite-5-1024x767.png
---

[Original Article](https://www.gologic.ca/en/devsecops-ci-cd/)

I've written an article that explores the fundamentals of **DevSecOps** CI/CD pipelines, emphasizing the importance of balancing **speed** and **security** in software development, in the same way DevOps strives for **speed** and **reliability**.

In this article, you will learn about key security features and measures to safeguard sensitive information, prevent unauthorized access, and mitigate potential security vulnerabilities thought **7 crucial security points** in the CI/CD process that require attention, including:

1.  **Developer Identity:** Verifying developers' identities using methods like commit signing, SSH keys, and SSO.
2.  **CI/CD Workload Identity:** Limiting permissions to only what’s necessary for CI/CD processes to prevent attackers from manipulating code and artifacts.
3.  **Supply Chain Vulnerability from External-Source:** Ensuring open-source components are up-to-date and free from known vulnerabilities.
4.  **Artifact Store Vulnerability:** Protecting artifacts generated in the CI/CD process with artifact signing to verify their integrity and authenticity.
5.  **Outdated Artefacts and Latent vulnerabilities:** Implement versioning and keep dependencies updated
6.  **Secret Store and Configuration Store:** Securely storing secrets like passwords and API keys, and restricting access to necessary roles.
7.  **Configuration Store:** Secure configurations using GitOps approach

This article is the first in a series on secure software development, offering insights into establishing robust security practices throughout the software development cycle.

*This summary has been reviewed and is up-to-date with the original article.*
