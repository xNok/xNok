---
title: "Securely Managing Artifacts in CI/CD Pipelines"
date: 2024-06-18
draft: false
categories: ["Security"]
tags: ["DevSecOps", "CI/CD", "SLSA"]
images:
- https://www.gologic.ca/wp-content/uploads/2024/06/Blog_4360-x-3267_Securite-22-1024x767.png
---

> Original Article: [Securely Managing Artifacts in CI/CD Pipelines](https://www.gologic.ca/en/securely-managing-artifacts-pipelines-ci-cd/)

## Summary

This article explores best practices for securely managing software artifacts within **CI/CD pipelines**, emphasizing **traceability** and **integrity**. The article introduces the **SLSA framework** for ensuring the integrity and security of software artifacts, which consists of three progressive levels of security. It delves into the process of hardening artifact security based on SLSA recommendations, which include **dependency tracking**, implementing **digital signatures**, validating **source code**, and certifying the **build platform**. By the end of the article, you will understand how to implement these strategies to protect your delivery process against supply chain vulnerabilities.

The **security challenge** with artifacts is achieving perfect traceability by verifying the source and origin of each of its components and transformations. In this article, you will learn about **SLSA**, a security framework designed to provide guidelines around the integrity and security of software artifacts, and key points to harden the security of your artifacts.

The **SLSA framework** is structured around three progressive levels: Level 1 focuses on basic documentation and automation (e.g., Software Bill of Materials (SBOM)), Level 2 introduces signed artifacts to prevent tampering, and Level 3 focuses on a hardened build platform for full reproducibility and traceability. SLSA aims to be a global standard for build processes, reflecting the level of trust in a software component, with an ideal target of SLSA 3.

To enhance artifact security, the article highlights four key areas: Dependencies, Stamping Artifacts and Validating Stamps, Source Code, and Hardened Build Platform.

### References

*   [SLSA Website](https://slsa.dev/)
