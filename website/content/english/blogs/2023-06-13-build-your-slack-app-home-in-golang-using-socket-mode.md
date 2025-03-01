---
title: "Build Your Slack App Home in Golang Using Socket Mode"
date: 2021-04-08
draft: false
categories: ["Programming"]
tags: ["Golang", "Slack API", "Socket Mode"]
images:
- https://miro.medium.com/v2/resize:fit:1100/format:webp/1*NQ-IvvHA4NPlKbgzLkEP_g.png
---

> Original Article: [Build Your Slack App Home in Golang Using Socket Mode](https://medium.com/better-programming/build-a-slack-app-home-in-golang-using-socket-mode-aff7b855bb31)

## Summary

This article guides you through implementing a **Slack App Home** in **Golang** using the `slack-go` library and **Slack's Socket Mode**. An App Home provides a customizable space within Slack for documentation and user interaction.

The tutorial covers:

*   Configuring your Slack application with the necessary permissions and Socket Mode activated.
*   Setting up a Go project and importing the `slack-go` library.
*   Creating controllers to handle Slack events, including `app_home_opened`, interactions with buttons, and modal submissions.
*   Implementing views using Slack's Block Kit to build the App Home UI, including displaying stickie notes.

**Socket Mode** is a key feature, allowing you to host your bot on a laptop, Raspberry Pi, or private server without needing a public IP address. You will also learn how to manage static assets using Go's `embed` feature, and how to build dynamic views.

In conclusion, you'll have one of the basics of building interactive Slack applications using Golang and Socket Mode.
