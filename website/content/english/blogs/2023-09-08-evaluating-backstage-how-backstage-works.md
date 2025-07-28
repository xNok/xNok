---
title: "Evaluating Backstage: How Backstage Works"
date: 2023-09-08
draft: false
categories: ["DevOps", "Backstage", "Internal Developer Platform"]
tags: ["Backstage", "Plugins", "Security", "Developer Experience", "IDP"]
images:
- https://www.kosli.com/images/blog/kosli-blog-evaluating-backstage-how-backstage-works-social.jpg
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