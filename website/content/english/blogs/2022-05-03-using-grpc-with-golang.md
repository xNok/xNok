--- 
title: "Using gRPC with Golang"
date: 2022-05-03
draft: false
categories: ["DevOps", "Go"]
tags: ["gRPC", "Golang", "Microservices"]
images:
- http://speedscale.com/wp-content/uploads/2022/05/Go-Logo_Aqua.jpg
---

> Original Article: [Using gRPC with Golang](http://speedscale.com/wp-content/uploads/2022/05/Go-Logo_Aqua.jpg)

## Summary

This tutorial will teach You how to use the **gRPC** Golang library to establish microservice communication. **gRPC** offers performance gains over **REST** APIs by utilizing **HTTP/2** protocol which enables header compression, multiplexing, persistent **TCP** connections, and binary format support with protocol buffers. This article guides you through implementing a simple client-server application in Go to archive and retrieve notes based on keywords. You'll start by building a small note-taking application, then use the client to send notes to the server.

## Key Concepts

*   **gRPC:** A high-performance, open-source universal RPC framework.
*   **Protocol Buffers:** A language-neutral, platform-neutral extensible mechanism for serializing structured data.
*   **HTTP/2:** A major revision of the HTTP network protocol that enables more efficient communication.

## Code Snippets

The article includes code snippets for:

*   Creating a Go project.
*   Implementing the application logic.
*   Implementing the gRPC server and client.

You can find the entire code in this [GitHub repo](https://github.com/xNok/go-grpc-demo).

## Going Further with gRPC

The article also touches on advanced gRPC concepts like streaming.