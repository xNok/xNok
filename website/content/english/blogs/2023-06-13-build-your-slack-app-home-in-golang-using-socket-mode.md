---
title: "Build Your Slack App Home in Golang Using Socket Mode"
date: 2023-06-13
draft: false
categories: ["Go", "Slack"]
tags: ["Golang", "Slack API", "Socket Mode"]
images:
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/825da8aa-e458-483c-8b3f-919d9d4dc323/1NQ-IvvHA4NPlKbgzLkEP_g.png
---

> Original Article: [Build Your Slack App Home in Golang Using Socket Mode](https://www.notion.so/Build-Your-Slack-App-Home-in-Golang-Using-Socket-Mode-by-Alexandre-Cou-delo-Better-Programming-966782ddce4a4f1aadfab216c3832995)

## Summary

This article guides you through implementing a **Slack App Home** in **Golang** using the `slack-go` library and **Slack's Socket Mode**. An App Home provides a customizable space within Slack for documentation and user interaction.

The tutorial covers:

*   Configuring your Slack application with the necessary permissions and Socket Mode activated.
*   Setting up a Go project and importing the `slack-go` library.
*   Creating controllers to handle Slack events, including `app_home_opened`, interactions with buttons, and modal submissions.
*   Implementing views using Slack's Block Kit to build the App Home UI, including displaying stickie notes.

**Socket Mode** is highlighted as a key feature, allowing you to host your bot on a laptop, Raspberry Pi, or private server without needing a public IP address. You will also learn how to manage static assets using Go's `embed` feature, and how to build dynamic views.

In conclusion, you'll gain a solid understanding of how to build interactive Slack applications using Golang and Socket Mode.
