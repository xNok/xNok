---
title: "Introduction to App Manifest: A Long-Awaited Feature by Slack App Developers is Now in Beta"
date: 2023-06-13
draft: false
categories: ["Programming"]
tags: ["Slack"]
images:
- https://miro.medium.com/v2/resize:fit:1100/format:webp/0*YIpA9ty1rtafsCqa
---

> [Original Article](https://levelup.gitconnected.com/introduction-to-app-manifest-a-long-awaited-feature-by-slack-app-developers-is-now-in-beta-fe35e8f914ee)

## Summary

This article introduces the **App Manifest**, a "new" (it's most likely GA by the time you read this article) feature by Slack that allows developers to configure their Slack applications using a configuration file. You can think of it as a way to define your bot configurations as code. Without the App manifest, navigating through Slack's administration UI and documentation was challenging, and the new feature acts as a glossary of all the Slack App features. The article covers key aspects of the App Manifest, including OAuth config, settings, and various features such as App Home, Slash Commands, Shortcuts, Workflow Steps, and Unfurl Domains.

## Key concepts

*   **Display Information**: General information about your application, reflected in the App Directory and the About section.
*   **OAuth Config**: Scopes required for using Slack Web API.
*   **Settings**: Configuration for event-driven aspects of Slack, like the Event API and Interactive Messages.
*   **App Home**: A customizable space where users interact with your applications.
*   **Slash Commands**: Commands that users can type in Slack to interact with your app.
*   **Shortcuts**: User-friendly ways to interact with your application, which can be global or message-specific.
*   **Workflow Steps**: Steps that users can add to their workflows to extend the capabilities of the Workflow Builder.
*   **Unfurl Domains**: Customize messages and options related to your application by handling links from your domain.

