---
title: "Evaluating Backstage: How Backstage Works"
date: 2023-09-08
draft: false
categories: ["DevOps", "Backstage", "Internal Developer Platform"]
tags: ["Backstage", "Plugins", "Security", "Developer Experience", "IDP"]
images:
- https://www.kosli.com/images/blog/kosli-blog-evaluating-backstage-how-backstage-works-social.jpg
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/10753ab0-8745-4f8b-95f9-0537dfccb97f/kosli-blog-evaluating-backstage-how-backstage-works_huf5a8b140c2d61068f3e598727d7df66b_418712_1366x0_resize_q90_h2_box.webp
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/433cbe07-613d-4850-91d4-0cbe61fb9ba0/Q9yhKPH.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/0abb1898-787b-49fa-a8d7-1c438ea5c883/rjV5wUX.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/1ba566cb-6cd6-4c29-b4dd-bb7cfbc1b4d6/78ZnreI.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/4ea862e6-2ca8-47de-a6a3-f596563983a8/xkqKpEx.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/c2592f85-db7e-4e3f-abff-19448eb81ea9/9IFYMZK.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/a202bb14-3f53-4891-b8e9-7e37f0684fb5/WbftMh4.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/c6cad105-cc20-4b16-8028-7cb42d4c5265/Es4W5Sc.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/47ceacc3-8087-47e2-ade4-11934ec57d21/59WHIOR.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/9aa88394-da04-42c5-b287-e649078ffaa2/CeilU05.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/47ae5953-1c80-4a57-826c-ffcbbf619eaa/Y0WvlCg.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/aa1ae0c9-0da6-4f0c-b48b-f56c18c969b8/QNUF6Uq.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/7b776898-b835-445d-836b-797fac6ff0d7/W4FtCwI.png
---

> Original Article: [Evaluating Backstage: How Backstage Works](https://www.kosli.com/blog/evaluating-backstage-how-backstage-works/)

## Summary

This article delves into the inner workings of **Backstage**, an **Internal Developer Platform (IDP)** designed to unify diverse developer tools and information into a single, customizable UI. I explore its core functionalities, including its role as a **software catalog** that centralizes all software components, and its capability to serve as a comprehensive frontend for developer tools through a modular plugin ecosystem. Backstage is highly customizable and leverages **GitOps** principles for managing its catalog definitions.

Key offerings include a **Technical Documentation Hub (TechDocs)**, a powerful **resource search engine**, and **software templates** that facilitate self-service project creation and infrastructure automation via "Golden Paths." These features empower developers with autonomy while ensuring adherence to best practices.

The article also explains Backstage's **plugin architecture**, highlighting that almost every feature is implemented as a plugin. Custom plugins can be developed to tailor the UI and integrate with external systems, requiring a basic understanding of Node.js and React.

Finally, I address critical **security concerns** for adopting Backstage. The platform's threat model identifies integrators, partially trusted internal users, and untrusted external users. Security recommendations include deploying Backstage behind identity-aware proxies, securing APIs with JWT tokens, carefully validating configurations, and being cautious with plugins that have elevated permissions like the Scaffolder. The article emphasizes that integrators are responsible for enforcing security measures across core plugins and carefully vetting community plugins to maintain a secure environment.

## Key Concepts

*   **Internal Developer Platform (IDP):** Backstage acts as a central hub for development tools and information.
*   **Software Catalog:** A core feature of Backstage that centralizes and categorizes software components.
*   **GitOps:** Configuration management best practices used for storing Backstage catalog definitions in Git repositories.
*   **System Model:** A conceptual representation defining entities (system, component, resource, API) and their relationships within the Backstage catalog.
*   **Technical Documentation Hub (TechDocs):** Backstage's feature for hosting documentation as code using Markdown and MkDocs.
*   **Resource Search Engine:** A powerful search capability within Backstage that indexes various information sources.
*   **Software Templates & Golden Paths:** Self-service solutions within Backstage for automating project creation and infrastructure provisioning.
*   **Plugin Architecture:** The modular and extensible nature of Backstage, where most functionalities are implemented as Node.js and React plugins.
*   **Security Threat Model:** Backstage's approach to identifying and mitigating security risks, involving integrators, internal users, and external users.
*   **Security Recommendations:** Best practices for securing Backstage deployments, including using identity-aware proxies, JWT tokens, input validation, and careful plugin assessment.