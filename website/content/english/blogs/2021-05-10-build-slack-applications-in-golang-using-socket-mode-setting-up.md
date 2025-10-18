---
title: "Build Slack Applications in Golang using Socket Mode - Setting Up"
date: 2021-05-10
# hero: /images/hero.png
---

[Original Article](https://medium.com/geekculture/build-slack-application-in-golang-using-socket-mode-setting-up-57f454e63c0a)

In this article, I'll walk you through the process of building **Slack applications in Golang using Socket Mode**. If you've been following my series on building Slack Bots, you'll know that every Slack application requires a few setup steps. This tutorial is designed to be a great starting point for anyone, whether you're a beginner or have some experience.

### Why Socket Mode?

I prefer using **Socket Mode** for a few reasons. It's more convenient and secure for both small personal projects and company applications. With Socket Mode, you don't need to expose your bot over the internet. This means you can host your bot on your laptop, a Raspberry Pi, or a private server. It's an ideal solution as long as you don't plan to distribute your app via the [Slack App Directory](https://slack.com/apps).

### What You'll Learn

I've broken down the setup process into three main phases:

1.  **Configure your Application**: I'll show you how to navigate the Slack UI to configure everything you need for your app.
2.  **Create the project repository**: We'll initialize a Go project and set up the necessary files and directories.
3.  **Code the entry point `main.go`**: I'll provide a foundational `main.go` file that you can reuse for other Slack applications.

### Getting Started

Before we dive in, you can clone [my repository](https://github.com/xNok/slack-go-demo-socketmode) to try out the app. Once you've set up your Slack application as described in this article, you can run it with a simple command:

```
go run ./main.go
```

By the end of this tutorial, you'll have a solid foundation for building your own Slack applications in Go using Socket Mode.

You can find the full article with detailed instructions and code examples on [Medium](https://medium.com/geekculture/build-slack-application-in-golang-using-socket-mode-setting-up-57f454e63c0a).