---
title: "How to Configure GitHub Environments with Terraform?"
images:
  - https://miro.medium.com/max/902/1*AQ3-knCHXNJYTqsijexnIw.png
  - https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/998cf968-6bea-4fe2-87ba-908a218d6c32/08LGZywgql02z0-MJ?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB4662NSSWABV%2F20250630%2Fus-west-2%2Fs3%2Fs3%2Faws4_request&X-Amz-Date=20250630T220118Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEM3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMiJIMEYCIQCHqtJnqChrcw6S5SBm%2BeTSYebLUw5PYVDBEup4E9ojQAIhAL6fbRG%2B4FKuDz4xVyPiPm%2FBP4AQClXW2wl6miA1qNreKogECMb%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMNjM3NDIzMTgzODA1IgydkcIVxM7oXP%2BdUY4q3AO5e24PD5grtfB5EhryejDkozCvRhrugYx2PqOzoebbW82dwdyuoYVEy%2BUY0wLcz0bAbn9sucAXH3Gct7XyLGo41Fa7GIqnsHN7jRxVW3lZ8KHMda5KjUILKUgEauK3lieaooLBhpM1zDzwh1sH8KhGyuWZIE7JVYdGbQSmI8eJjRV7GHvVVLe%2Bmqaj6S0uB28wc7T8XKn87j8NRqHvsMU2jCR9dN2R7%2B3VOhEV0YqdzybLSzY%2BjeJrfM2sPvcyvzAILy7wgen54NZHmZkDgjReTTRvxA26WBIO3Cg%2BYmuFcG2pnFqabPOgHHIUX3IiOH%2F8fWfSCWlSNp6vbPAjvypTOOjaMvpu%2F0lH3uQqYwx97q%2Fo9o%2BBiP8srYCN%2FIQgM5WAxaUu8wND60jWvir8CkFUf9FGUMCKaClvEfozZaa7VOBxjrWQj%2FmztFF3FQ%2BlukZs6rygvruX7iEInKxbdsyTfUUtOrA3km4Bhc51PKQCAsZqCXjO4ynBZ3769p0W8HM5V0wLprwBPG51tOwT9bwr7OFLfywlU0CgrNWZTwZFBHNj49jL6atIzIRWEGp2tdyj2jIPS9g4xSgcFS5NAtjRblUAqf6hLPcn%2FBUl6SalXjo6HM9PFYsfCC11nzDj%2BYvDBjqkAehlDmMdU6w3TXupG0Xt8dyz%2Ba%2FsSi2mDqg0miBc6vZiuRF%2FFlXyx07ySEZ9YE7ImwrZHPbPn6kLXQSMC9IRfTlnGG5xhTsQ9AseUYABjZDQcLPxZYNoq2gpGSPkjKlJCKaCptNn7%2BnXrjbW9rPx6nwiGUFhZwDyLVaez84jysC0Uh2j9XVhgI8Xrjx3nLuJgV%2F5rCwyZodaBgA06jAygghviSZe&X-Amz-Signature=85286291f037e4be60b010304f152c81245ac7b1f8dbc2aba068a231e46fc719&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject
date: 2022-05-04
draft: false
categories: ["DevOps", "Terraform", "GitHub Actions"]
tags: ["Terraform", "GitHub Actions", "Environments", "CI/CD", "DevOps"]
---

[Original Article](https://medium.com/p/d2b76766547b)

## Summary

This article delves into **automating GitHub environment configuration** using **Terraform**, a key practice for streamlining **deployment workflows** within **GitHub Actions**. It highlights the significant advantages of leveraging GitHub environments, specifically their ability to facilitate **environment-specific variable** definitions, enforce robust **protection rules** to prevent unauthorized deployments, and maintain a comprehensive **deployment history**.

I demonstrate the practical steps involved, including setting up the **GitHub Terraform provider** and authenticating securely with a **personal access token**. The article guides you through the process of provisioning **secrets** into GitHub environments using Terraform, emphasizing best practices for managing sensitive information (with a note on the benefits of Terraform Cloud for state file security). Furthermore, I explain how to configure **branch protection rules** and implement **deployment reviewers** to introduce crucial manual approval steps, ensuring controlled and secure deployments.

This integration of Terraform with GitHub is presented as a method to significantly reduce manual interventions and enhance the security posture of your **CI/CD pipelines**. This work is part of a larger series focused on self-hosted projects using Terraform, Ansible, and GitHub.

## Key Concepts

*   **GitHub Environments**: A feature in GitHub Actions to manage and track provisioning and deployment workflows, offering environment-specific variables, protection rules, and deployment history.
*   **Terraform GitHub Provider**: Used to automate the configuration of GitHub repositories and environments, including provisioning secrets and setting branch protection rules.
*   **Personal Access Token (PAT)**: Used for authentication with GitHub APIs via Terraform. (Note: GitHub Apps are recommended for enhanced security in production).
*   **Deployment Reviewers**: A feature to add a manual approval step to workflows, useful for reviewing Terraform plans before application or for trunk-based development.
*   **Branch Protection Rules**: Enforce best practices like requiring pull requests, workflow validations, and preventing force pushes for deployment branches.

## References

*   [How to configure GitHub Environments with Terraform?](https://medium.com/p/d2b76766547b)
*   [How to provision VM on digitalocean with Terraform?](https://medium.com/p/d2b76766547b)
*   [How to create SSH keys with Terraform?](https://medium.com/p/d2b76766547b)
*   [How to create Ansible Inventory with Terraform?](https://medium.com/p/d2b76766547b)
*   [How to run an Ansible playbook using GitHub Action?](https://m.medium.com/p/d2b76766547b)
