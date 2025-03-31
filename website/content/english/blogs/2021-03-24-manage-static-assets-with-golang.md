---
title: "Manage Static Assets with Golang"
date: 2021-03-24
draft: false
categories: ["Golang", "Slack"]
tags: ["Golang", "SlackBot"]
images:
- https://miro.medium.com/v2/resize:fit:1100/format:webp/1*EmVgjYhgcGYobXu_9T5DIg.png
---

> Original Article: [Manage Static Assets with Golang](https://couedeloalexandre.medium.com/manage-static-assets-with-embed-golang-1-16-75c89c3eea39)

## Summary

This article explores managing static assets in Golang applications using the new `embed` package introduced in version 1.16. This feature simplifies shipping assets directly into your application binary, which is particularly useful for handling SlackBot messages. 

The article delves into using `embed` to create and render customizable messages crafted with **Slack Block-kit**.

## Key Concepts

*   **Golang embed Package:** A new feature in Golang 1.16 that allows embedding files and directories into the application binary.
*   **Block-kit Builder:** A tool to design and create Slack message layouts using JSON payloads.

## References

*   [Golang embed Package Documentation](https://pkg.go.dev/embed)
*   [Slack Block-kit Builder](https://api.slack.com/tools/block-kit-builder)
*   [Example SlackBot Repository](https://github.com/xNok/go-slackbot)
