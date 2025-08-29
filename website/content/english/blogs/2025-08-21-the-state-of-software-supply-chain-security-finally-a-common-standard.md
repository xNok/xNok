---
title: "The State of Software Supply Chain Security: Finally, a Common Standard?"
date: 2025-08-21
draft: false
categories: ["Security", "DevOps"]
tags: ["Software Supply Chain", "SLSA", "In-toto", "Open Source"]
images:
- https://miro.medium.com/v2/resize:fit:1050/1*Eb8AI9MBWaW4uTb7E_7SXA.png
- https://miro.medium.com/v2/resize:fit:1050/1*2Enatwx2YpcOJA2L-uCD9g.png
- https://miro.medium.com/v2/resize:fit:1050/1*9krAZGQhOsdLkODGFknUEA.png
- https://miro.medium.com/v2/resize:fit:1050/1*pwRoTQRjXqnI5WTyeLkWyA.png
- https://miro.medium.com/v2/resize:fit:1050/1*WVdBhf4jFUos7XUUsXgVKA.png
- https://miro.medium.com/v2/resize:fit:1050/1*qJXv87HwoB0UU5QCZfr23A.png
---

> Original Article: [Read on Medium](https://itnext.io/the-state-of-software-supply-chain-security-finally-a-common-standard-0c0b41f4f62e)

## Summary

This article delves into the critical issues surrounding **software supply chain security** and the limitations of current practices. It emphasizes the importance of establishing a common standard for **traceability** and **evidence-based security measures** in software development. I introduce key initiatives like **SLSA** (Supply-chain Levels for Software Artifacts) and **In-toto**, highlighting how these frameworks aim to enhance **trust** and **transparency** in both proprietary and **open-source software**. You will also explore practical tools and strategies to improve the security of your software supply chain and meet emerging **regulatory requirements**.

## The Software Supply Chain Traceability Issue

For years, the DevOps approach has prioritized delivery, often overlooking the significant threat posed by untrusted open-source code. While efforts have focused on hardening build systems like Jenkins or GitHub Actions, these systems still rely heavily on third-party dependencies. This creates numerous potential side-channel attacks, making the "Trust the Build System" model fundamentally flawed. The ultimate artifact deployed to production is an aggregation of many software components, many of which are outside our direct control. Therefore, a universal process is needed to track the journey of products and their materials from beginning to end, ensuring comprehensive **supply chain traceability**. We need all third parties to adopt a unified standard to map the complete composition and origin of our software components.

## Building Trust — Baby Steps

A primary step towards building trust involves saving byproducts like code analyses and vulnerability scans as **evidence**. This evidence is then validated against a set of constraints, or "Gates," ensuring that no artifact proceeds to production without meeting these conditions. Furthermore, incorporating **artifact signing** using a cryptographic seal guarantees the integrity and authenticity of deployed software artifacts. This approach significantly improves traceability within our build system, allowing for more confident continuous deployments. However, this model still doesn't fully address trust and transparency issues with external dependencies, even with evidence-based gating and tamper-proof artifacts.

## Building Trust — Closing the Loop

The ideal solution for comprehensive software supply chain traceability involves extending the evidence system to require external dependencies to provide verifiable evidence before consumption. The main challenge lies in standardizing this evidence exchange, as different companies may have varying systems. This necessitates a new communication standard for software artifact information, one that ensures the authenticity of each piece of evidence, allows for tracing the chain of dependencies and evidence, and provides standard documents with predefined metadata.

## Toward Conventional and Verifiable Artifact Evidence(s)

In response to the increasing number of software supply chain attacks, several initiatives have emerged to develop a common standard for verifiable artifact evidence.

### A Foundation for Artifacts “Provenance”

**SLSA** (Supply-chain Levels for Software Artifacts), introduced by Google in 2021, aims to provide a "certificate of provenance" for each artifact, similar to how food supply chains identify product origin and quality. Triggered by attacks like SolarWinds, SLSA defines the standard for exchanging these provenance certificates and offers guidelines for their implementation. It introduces a four-level maturity model for artifact provenance:
*   **Level 1**: The build process is fully scripted/automated and generates provenance.
*   **Level 2**: The Build service generates signed provenance.
*   **Level 3**: Source and build platforms meet specific standards to guarantee source and provenance integrity.
*   **Level 4**: Validation requires a two-person review, meaning the build must be reproducible and re-validated by a third party.

While SLSA offers a strong foundation for build-time provenance, a broader range of metadata across the entire software development lifecycle is needed.

### Extending “Provenance” to a Wide Range of Build Metadata

**In-toto** extends the concept of provenance to encompass comprehensive build metadata, including information about the entire software supply chain. It advocates that project owners define a "layout" and that artifacts must be verifiable against all steps specified in this layout. In-toto argues for recording provenance for the entire supply chain, not just the final build stage, because components can become vulnerable at any point.

An In-toto attestation consists of metadata (the predicate) describing a specific creation step (e.g., test, build, package). This metadata is incorporated into a statement detailing the artifact and its creation claims, then digitally signed to form an attestation. Multiple attestations across various supply chain stages can be bundled, stored, and verified. SLSA version 1 has adopted the In-toto format, making its build attestation compatible with In-toto's specifications.

Several tools facilitate the adoption of these standards:
*   The **In-toto attestation framework**: A Python CLI for automating attestation generation and validation.
*   Integrations from **GitHub**, **GitLab**, and **Docker**: These platforms are working on embedding SLSA attestation generators directly into pipelines.
*   **Witness**: A CLI tool donated to In-toto by TestifySec, designed to create audit trails for software supply chains using the In-toto specification, offering a range of pre-implemented attestations.

## Conclusion

The evolution of **software supply chain security** has led to the emergence of common standards for traceability and evidence-based gating. The rise of **SLSA** and **In-toto**, complemented by tools like **Witness**, represents a crucial advancement in fostering **trust** and **transparency** in **open-source software** artifacts.

The next step is to make these tools readily available to open-source maintainers and distribution platforms (e.g., GitHub, NPM, DockerHub). This will enable the attachment of attestations to artifacts, facilitating better validation and a stronger chain of trust for open-source dependencies.

Wider adoption of these standards will bring significant benefits:
*   **Enhanced Security**: A substantial improvement in software supply chain security, mitigating side-channel attacks and vulnerabilities.
*   **Improved Traceability**: The ability to trace the complete lifecycle of software artifacts, simplifying problem identification and resolution.
*   **Compliance**: Assistance in meeting new regulatory mandates, such as the Secure Software Development Framework (SSDF) in the USA.
*   **Trust in Open Source**: Increased confidence in open-source projects, which have historically faced trust challenges.
*   **Automation Opportunities**: The enablement of automated security checks and streamlined development processes through collected build metadata.
