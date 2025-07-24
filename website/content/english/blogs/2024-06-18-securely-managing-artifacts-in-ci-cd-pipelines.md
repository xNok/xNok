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

In this article, you will learn about the **best practices** for securely managing software **artifacts** within **CI/CD pipelines**. I will highlight the importance of **traceability** and **integrity** in your software supply chain. The article introduces the **SLSA framework**, detailing its three progressive levels of security. You will gain actionable insights on how to harden artifact security through **dependency tracking**, implementing **digital signatures**, validating **source code**, and certifying your **build platform**. By the end, you will understand how to implement these strategies to protect your delivery process against **supply chain vulnerabilities**.

## Key Concepts

The **SLSA framework** (**Supply-chain Levels for Software Artifacts**) is designed to provide guidelines around the integrity and security of software artifacts. It consists of three progressive levels:
*   **SLSA Level 1:** Focuses on basic documentation and automation to ensure a consistent and secure build process, producing provenance like a Software Bill of Materials (**SBOM**).
*   **SLSA Level 2:** Introduces **signed artifacts** to prevent tampering after the build process, using a private key accessible only to the build platform.
*   **SLSA Level 3:** Requires a **hardened build platform** to ensure artifacts are built from the official source using the official build process. Builds at this level are fully reproducible and traceable. SLSA aims to be a global standard for build processes, reflecting the level of trust you can place in a software component.

To enhance artifact security, the article highlights four key areas:
*   **Dependencies:** Tracking dependencies and publishing a Software Bill of Materials (**SBOM**) is crucial for transparency, enabling better risk management and preventing vulnerabilities from compromised dependencies.
*   **Stamping Artifacts and Validating Stamps:** Implementing **digital signatures** is a main requirement for SLSA Level 2. This ensures that artifacts haven't been tampered with after the build process, providing strong, tamper-proof validation.
*   **Source Code:** For SLSA Level 3, it's essential to validate that an artifact was built from the **official source code** and using the **official build process**. This involves adding references to source code, pipeline scripts, and manifests to the provenance attestation. Signed commits by developers can further certify origin.
*   **Hardened Build Platform:** The "certification" of your build platform is the second requirement for SLSA Level 3. This involves using a security control plane (like **Sigstore**) that provides an ephemeral signing key for a runner using **workload identity**. The build platform's metadata is added to the certificate of provenance for validation.

## References

*   [SLSA Website](https://slsa.dev/)
