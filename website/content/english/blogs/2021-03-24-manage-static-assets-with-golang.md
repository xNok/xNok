---
title: "Manage Static Assets with Golang"
date: 2021-03-24
draft: false
categories: ["Golang", "SlackBots"]
tags: ["embed", "Golang", "SlackBot", "Block-kit", "JSON"]
images:
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/f9888c0f-03f6-498b-b951-0eed7cca54aa/1EmVgjYhgcGYobXu_9T5DIg.png
---

> Original Article: [Manage Static Assets with Golang | by Alexandre Couëdelo | Mar, 2021 | Medium | Medium](https://couedeloalexandre.medium.com/manage-static-assets-with-embed-golang-1-16-75c89c3eea39)

## Summary

In this article, I explore how to manage static assets in **Golang** applications using the new `embed` package introduced in version 1.16. This **package** simplifies the process of embedding files directly into your application binary. I find this feature particularly useful for handling resources like **JSON** payloads for **SlackBot** messages. The article provides insights into creating and rendering customizable messages using **Block-kit**, and I discuss the advantages of this approach for building efficient Slack applications. You will learn how the `embed` package offers a convenient solution for keeping static content within a single binary.

## Key Concepts

*   **Golang embed Package:** A new feature in Golang 1.16 that allows embedding files and directories into the application binary.
*   **Static Assets Management:** Efficiently manage static assets such as JSON files, templates, and other resources.
*   **SlackBot Development:** Creating and managing customizable messages for Slack applications using Block-kit.
*   **Block-kit Builder:** A tool to design and create Slack message layouts using JSON payloads.

## References

*   [Golang embed Package Documentation](https://pkg.go.dev/embed)
*   [Slack Block-kit Builder](https://api.slack.com/tools/block-kit-builder)
*   [Example SlackBot Repository](https://github.com/xNok/go-slackbot)
