---
title: "Properly Welcome Users in Slack with Golang using Socket Mode"
date: 2021-04-27
draft: false
categories: ["Programming"]
tags: ["Slack", "Golang"]
images:
- https://miro.medium.com/v2/resize:fit:1100/format:webp/1*9V15W8s7J8EA3R1yRdX-kQ.png
---

[Original Article](https://levelup.gitconnected.com/properly-welcome-users-in-slack-with-golang-using-socket-mode-9a206d30a34a)

## Summary

This article provides a comprehensive guide on building **Slack Applications** using **Golang** and **Socket Mode** to enhance user engagement. I will show you how to implement two key interaction patterns: sending **ephemeral messages** when users join a channel and delivering persistent messages to your app's **App Home** when mentioned. You'll gain a foundational understanding of configuring your Slack application, managing events, and creating dynamic user interfaces with **Go templates** and **Block Kit**. This tutorial emphasizes creating meaningful, non-intrusive interactions to improve the user experience within your Slack workspace.

## Key Concepts

*   **Socket Mode**: A connection method for Slack apps that doesn't require a public server, making it ideal for local development or small, internal applications.
*   **Ephemeral Messages**: Temporary messages visible only to a specific user, perfect for sending private instructions or reactions to user actions without cluttering public channels.
*   **App Home**: A dedicated, persistent space within Slack for your application, where users can find information, tutorials, and private messages from your app. It's an excellent alternative to private bot messages for delivering persistent information.
*   **Event API**: Slack's mechanism for delivering real-time events to your application, such as `app_mentioned` (when your app is tagged) and `member_join_channel` (when a user joins a channel).
*   **slack-go library**: The official Go client for the Slack API, simplifying interaction with Slack's features.
*   **Handler and Middleware Design Pattern**: An architectural approach used in the tutorial to process Slack events efficiently and modularly.
*   **Go Templates and Block Kit**: Techniques used to dynamically generate and format rich Slack messages and interactive views. **Block Kit** is a UI framework for Slack messages, and **Go Templates** allow for injecting dynamic data into these JSON-based message structures.
