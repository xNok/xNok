---
title: "Properly Welcome Users in Slack with Golang using Socket Mode"
date: 2021-04-27
draft: false
categories: ["Development", "Golang", "Slack"]
tags: ["Slack", "Golang", "Socket Mode", "App Home", "Ephemeral Messages"]
images:
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/472b5470-55e8-4f4d-ab68-08d2bf3bee2b/19V15W8s7J8EA3R1yRdX-kQ.png
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/26247631-1e20-4880-96c2-d29c04322bee/0zsymSczBxr8eN5ht.gif
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/34158a03-d2f5-45b8-ac82-b3a4dc1495df/1uShXcoRp_llEwjIwRp3XBA.gif
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/abf73223-ff1a-423b-aa2b-95d4633ff73e/161GO_0msCKKY0wAEjQd69g.gif
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/ec0715a6-9ef7-4612-9739-9dae9ae3fc4b/1KQkfC9RaixLhShPGsMZAhg.gif
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/11762afb-7163-4b8c-9507-288acffe3cfa/0NraonvSZTZIKBfNG.gif
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/dd4676a5-0567-499f-82cc-38e6fcf3c36f/1rUbCH6NCWAztZCNRDDahRA.png
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
