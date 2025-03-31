---
title: "Handler and Middleware Design Pattern in Golang"
date: 2021-03-30
draft: false
categories: ["Golang"]
tags: ["Golang", "Middleware", "Handler"]
images:
- https://miro.medium.com/v2/resize:fit:1100/format:webp/1*Cj9IpxiMkFFcu0lz9sQ66Q.png
---

> Original Article: [Handler and Middleware Design Pattern in Golang](https://medium.com/codex/handler-and-middleware-design-pattern-in-golang-de23ec452fce)

## Summary

This article explores the **Handler** and **Middleware** design pattern in Golang, focusing on managing events efficiently. It covers the concept of **handlers** and **middleware functions**, demonstrates their implementation, and provides practical examples. The goal is to help you create clean and flexible code for handling events.

The key components discussed are:

1.  A Server that listens to Events and dispatches them to the proper handler(s) function.
2.  One or several middlewares that perform pre and/or post-processing of the event
3.  A handler function that processes the event

The article provides code snippets and examples for implementing this pattern in Go, emphasizing the benefits of using handlers and middleware for event management.

## Key Concepts

*   **Handler Function:** A function invoked to handle a specific type of event.
*   **Middleware:** A function that wraps another handler, sitting between the server and the handler for pre or post-processing.
*   **EventDispatcher:** Processes events sent to a channel, checks the event type, and calls all registered functions for that type.

## References

*   [Golang Gophers](https://github.com/egonelbre/gophers)

I hope you find this summary helpful. Let me know if you have any other questions.
