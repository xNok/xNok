---
title: "Why organizations are turning to decoupled authorization solutions | Cerbos"
date: 2023-11-21
draft: false
categories: ["Security"]
tags: ["Authorization", "Security"]
images: 
- https://cdn.builder.io/api/v1/image/assets/2517c53399d846eea97f6c5ae8804b7f/842076d3c54c4c2789a2db691d28afe8
---

> Original Article: [Original Article](https://www.cerbos.dev/blog/why-organizations-are-turning-to-decoupled-authorization-solutions)

## Summary

This article explores the increasing adoption of **decoupled authorization solutions** by organizations seeking enhanced productivity, security, and reliability. It explains how **outsourcing authorization logic** to external services or libraries allows developers to concentrate on business logic implementation. The article contrasts traditional authorization methods with decoupled approaches, highlighting the advantages of **flexibility**, **customization**, and **cost reduction**. It also addresses the trend of outsourcing security functions and managing associated risks, recommending Cerbos as a potential decoupled authorization solution.

In traditional authorization, the process of determining whether a user or service is allowed to perform a specific action is typically handled within the application stack. This often involves multiple layers of security, from filtering IPs at the DNS level to controlling read/write access to a database. However, this segmentation can be difficult to maintain, as each tool or product has its own paradigm, requiring developers to learn multiple approaches to configure authorization logic.

Decoupled authorization offers a unified solution by extracting the authorization logic from each component and creating a unique framework that consumes policies from a repository. This allows authorization rules to be updated independently of the application, freeing developers to focus on the business logic of their application.

The advantages of decoupled authorization include increased flexibility and customization, as changes to authorization rules can be made easily without affecting the rest of the application. It can also contribute to cost reduction by minimizing code duplication and streamlining the development process. Additionally, decoupled authorization can prevent mistakes and bad practices by using proven techniques such as ACL, RBAC, or ABAC, and having validation logic coded by security experts.


## Key Concepts

*   **Traditional vs. Decoupled Authorization:** Understanding the differences between traditional, multi-layered authorization and the unified approach of decoupled authorization.
*   **Advantages of Decoupled Authorization:** Exploring the benefits of flexibility, customization, cost reduction, and prevention of mistakes.
*   **Outsourcing Security Functions:** Recognizing the trend towards outsourcing security functions like authentication, encryption, and threat management.
*   **Managing Risks:** Identifying and mitigating the risks associated with relying on a third-party authorization provider.

## References

*   [Cerbos](https://www.cerbos.dev/)
