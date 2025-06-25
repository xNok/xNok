---
title: "Continuous Integration Security (CI) Pipelines—Gologic"
date: 2024-03-25
draft: false
categories: ["Security"]
tags: ["CI/CD", "Security", "DevOps"]
images:
- https://www.gologic.ca/wp-content/uploads/2024/01/Blog_4360-x-3267_Securite-11-1024x767.png
- https://cdn-cklan.nitrocdn.com/YrReRsuFxsGpWvJkqvmljTPLGThGPHEj/assets/images/optimized/rev-8c11cbc/www.gologic.ca/wp-content/uploads/2024/03/Blog_1200x627_Securite-9-1024x535.png
- https://cdn-cklan.nitrocdn.com/YrReRsuFxsGpWvJkqvmljTPLGThGPHEj/assets/images/optimized/rev-8c11cbc/www.gologic.ca/wp-content/uploads/2024/01/Untitled-6-1024x539.png
---

[Original Article](https://www.gologic.ca/en/continuous-integration-security/)

## Summary

This article explores how to enhance the security of **Continuous Integration (CI) pipelines**, which are critical yet vulnerable points in the software delivery system. It emphasizes a dual approach: securing the CI system itself and ensuring the artifacts produced are free from vulnerabilities. I learned that you can significantly improve your pipeline security standards by integrating best practices and specialized tools.

The article highlights two primary techniques for producing secure artifacts: **Static Code Analysis (SAST)** and **Software Bill of Materials (SBOM)**. SAST scans your custom code for vulnerabilities by identifying common patterns, while SBOM creates a list of all components (including open-source libraries) used in your application and checks them against databases like OWASP for known vulnerabilities. Tools like Sonarqube/Sonarcloud (for SAST) and Cyclonedx/Mend (for SBOM) are mentioned as examples, along with Microsoft's recent offerings like Defender for DevOps and GitHub Advanced Security (GHAS) for Azure DevOps (which includes dependency scanning with Dependabot, SAST with CodeQL, and secret scanning).

Furthermore, the article stresses the importance of securing the CI system itself by adhering to the **principle of least privilege**. This means avoiding granting global credentials to your CI system. Instead, each pipeline should be endowed with only the precise permissions it requires and have its own dedicated set of credentials. This meticulous approach strengthens security by mitigating risks associated with shared credentials and streamlining the identification and nullification of compromised secrets. Managed Identity in Azure DevOps Pipelines is presented as a solution to securely authenticate and authorize pipelines to access resources using OpenID Connect (OIDC), ensuring that least privileges are granted.

By implementing these practices—validating both your code and imported components with SAST and SBOM, and adopting the principle of least privilege in your pipelines—you can significantly strengthen the security of your CI pipelines and protect your development and deployment processes from potential breaches.

## Key Concepts

*   **Producing Secure Artifacts**:
    *   **Static Code Analysis (SAST)**: Scans source code for vulnerabilities by detecting common insecure coding patterns.
    *   **Software Bill of Materials (SBOM)**: Generates a comprehensive list of all software components and their versions within an application, enabling checks against vulnerability databases (e.g., OWASP).
    *   **Tools**: Sonarqube/Sonarcloud (SAST), Cyclonedx/Mend (SBOM), Microsoft's Defender for DevOps, GitHub Advanced Security (GHAS) for Azure DevOps (Dependabot, CodeQL, Secret scanning).

*   **Using a Secure CI System**:
    *   **Principle of Least Privilege**: Granting only the minimum necessary permissions for each pipeline to perform its specific tasks. This prevents widespread access in case of a breach.
    *   **Dedicated Credentials**: Each pipeline should have its own set of credentials instead of using global, overarching credentials.
    *   **Managed Identity**: In Azure DevOps Pipelines, Managed Identity (using OpenID Connect - OIDC) provides a secure way to authenticate pipelines to access resources with least privilege.

## References

*   OWASP (as a database for SBOM)
*   Sonarqube / Sonarcloud
*   Cyclonedx / Mend
*   Microsoft Defender for DevOps
*   GitHub Advanced Security (GHAS) for Azure DevOps
*   OpenID Connect (OIDC)