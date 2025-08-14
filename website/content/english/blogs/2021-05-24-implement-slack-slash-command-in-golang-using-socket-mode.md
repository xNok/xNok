---
title: "Implement Slack Slash Command in Golang using Socket Mode"
date: 2021-05-24
draft: false
categories: ["Programming"]
tags: ["Slack", "Golang", "Socket Mode", "Block Kit"]
images:
  - https://miro.medium.com/v2/resize:fit:1100/format:webp/1*zrHYgmyoKFH_xz5uxBsMcA.png
---

> [Original Article](https://levelup.gitconnected.com/implement-slack-slash-command-in-golang-using-socket-mode-ac693e38148c)

## Summary

This article explores **Slack Slash Commands** as a powerful tool for extending Slack's capabilities and integrating with external systems. It highlights their significance in creating simple shortcuts and even establishing a comprehensive **ChatOps Headquarter**.

I explain that slash commands are composed of two elements: the command itself (e.g., `/rocket`) and any accompanying text (e.g., `count=5`). I emphasize the importance of parsing this text effectively and, crucially, providing helpful feedback or interactive elements like **Modals** for incorrect arguments, which I've found to be a more user-friendly approach.

The tutorial outlines a five-step process for implementing a Slack Slash Command in Golang using **Socket Mode**:

1.  **Getting Ready**: This involves activating Socket Mode, registering necessary OAuth scopes (like `chat:write` for posting messages), and officially registering your chosen slash command (e.g., `/rocket`) within Slack.
2.  **Project Structure**: I guide you through setting up a clear and organized project structure, recommending distinct directories for `controllers`, `drivers`, and `views`.
3.  **Basic Setup**: This step involves creating the foundational `driver/slack.go` and `main.go` files, which serve as the entry point and Slack API interaction layer.
4.  **Create the Controller (`slashCommandController.go`)**: This section dives into the core logic. I describe how to handle incoming slash commands and manage subsequent user interactions, such as button clicks. Specifically, the controller receives the `/rocket` command, sends an **ephemeral interactive message** for user confirmation, and then updates this message upon user approval to display a countdown. Key programming points include casting the generic `socketmode.Event` into a `slack.SlashCommand` type, acknowledging events within the strict 3-second Slack response window, and methods for sending messages.
5.  **Create the View (`slashCommandView.go`)**: The final step focuses on dynamically generating Slack messages using **Block Kit**. My preferred method involves saving Block Kit payloads as JSON files and then using Go templates to render these views, injecting variables such as the user's name and action IDs for interactive components.

The article also provides deeper insights into **Response URLs**. I explain these as temporary webhooks that allow up to five interactions within a 30-minute window, even if your bot hasn't been explicitly added to the channel. I differentiate between `slack.ResponseTypeInChannel` (visible to everyone) and `slack.ResponseTypeEphemeral` (visible only to the user who triggered the command) for controlling message visibility. Furthermore, I suggest alternative approaches for handling commands, such as scheduling messages, sending messages directly to the Slack App Home for a consolidated interaction history, and, my personal preference, using **Modals** for collecting user input due to their superior user-friendliness compared to parsing complex command-line arguments.

Finally, I encourage you to consider further enhancements to the application, such as adding buttons to configure rocket types or implementing Modals to make the countdown duration customizable, thereby solidifying the foundation for developing more sophisticated Slack applications.

---