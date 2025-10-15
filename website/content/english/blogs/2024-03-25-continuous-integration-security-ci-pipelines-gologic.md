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

I've updated my summary of the Gologic article on Continuous Integration (CI) security. The key takeaway is the importance of a two-pronged approach: securing the CI system itself and ensuring the software you build is secure.

To do this, I learned about a few key practices. First, using **Static Code Analysis (SAST)** to scan my own code for vulnerabilities. Second, creating a **Software Bill of Materials (SBOM)** to check all the third-party libraries and dependencies I use for known security issues. Finally, I've adopted the **principle of least privilege** for the CI system itself. This means each pipeline gets only the permissions it absolutely needs, which minimizes the potential damage if a secret is ever compromised.

By focusing on these areas, I can build a more secure and resilient software delivery process.