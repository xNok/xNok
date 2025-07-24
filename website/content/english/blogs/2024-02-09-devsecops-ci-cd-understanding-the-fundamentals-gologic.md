---
title: "DevSecOps CI/CD : Understanding the Fundamentals"
date: 2024-02-09
draft: false
categories: ["Security"]
tags: ["DevSecOps", "CI/CD"]
images:
- https://www.gologic.ca/wp-content/uploads/2023/10/Blog_4360-x-3267_Securite-5-1024x767.png
- https://cdn-cklan.nitrocdn.com/YrReRsuFxsGpWvJkqvmljTPLGThGPHEj/assets/images/optimized/rev-b74ebcd/www.gologic.ca/wp-content/uploads/2024/02/Untitled-2024-02-10-1659.png
---

> Original Article: [DevSecOps CI/CD : Understanding the Fundamentals—Gologic](https://www.gologic.ca/en/devsecops-ci-cd/)

## Summary

This article explores the fundamentals of **DevSecOps** CI/CD pipelines, emphasizing the crucial balance between **speed** and **security** in software development. You will learn how to secure your delivery process and CI/CD pipelines by understanding key security features and measures to consider.

The article delves into **7 crucial security points** within the CI/CD process that require attention:

1.  **Developer Identity**: Verifying developers' identities using methods like commit signing, SSH keys, and SSO to ensure secure contributions.
2.  **CI/CD Workload Identity**: Limiting permissions to only what is necessary for CI/CD processes to prevent attackers from manipulating code and artifacts, ensuring the principle that security is paramount.
3.  **Supply Chain Vulnerability from External-Source**: Employing automated tools to continuously scan and monitor open-source components, ensuring they are up-to-date and free from known vulnerabilities.
4.  **Artifact Store Vulnerability**: Protecting artifacts generated in the CI/CD process through artifact signing, which adds an extra layer of security by verifying their integrity and authenticity before deployment.
5.  **Outdated Artefacts and Latent vulnerabilities**: Implementing robust versioning strategies and continuously keeping dependencies updated to mitigate risks from newly discovered vulnerabilities that could impact released systems or DevOps pipelines.
6.  **Secret Store and Configuration Store**: Securely storing sensitive information like passwords and API keys in a dedicated secret store, with access restricted only to necessary roles.
7.  **Configuration Store**: Securing configuration files in Git repositories, especially in GitOps approaches, to prevent direct impacts on live environments from unauthorized changes.

This article is the first in a series on secure software development, offering comprehensive insights into establishing robust security practices throughout your software development cycle.

## Key Concepts

*   **DevSecOps CI/CD Pipelines**: Balancing **speed** and **security** in software delivery.
*   **Security Features**: Safeguarding sensitive information and preventing unauthorized access.
*   **Vulnerability Mitigation**: Identifying and addressing potential security weaknesses.
*   **Secure Software Development**: Establishing robust security practices throughout the development cycle.
*   **Developer Identity Verification**: Ensuring the authenticity of code contributors.
*   **CI/CD System Permissions**: Limiting access to prevent pipeline manipulation.
*   **Software Supply Chain Security**: Managing risks from external components.
*   **Artifact Integrity**: Protecting generated software packages.
*   **Dependency Management**: Keeping software components updated to prevent latent vulnerabilities.
*   **Secure Secret Management**: Safely storing sensitive credentials.
*   **GitOps Security**: Protecting infrastructure and application configurations in Git.
