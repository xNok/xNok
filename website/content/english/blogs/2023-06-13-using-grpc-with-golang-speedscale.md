---
title: "Using gRPC with Golang"
date: 2023-06-13
draft: false
categories: ["Golang", "gRPC", "Microservices"]
tags: ["gRPC", "Golang", "Protocol Buffers", "Speedscale"]
images:
- http://speedscale.com/wp-content/uploads/2022/05/Go-Logo_Aqua.jpg
---

> Original Article: [Using gRPC with Golang](http://speedscale.com/blog/using-grpc-with-golang/)

## Summary

This tutorial explains how to use the **gRPC** Golang library for **microservice** communication by building a simple note-taking application. **gRPC** offers performance gains over REST APIs due to its use of **HTTP/2**, which includes header compression, multiplexing, persistent TCP connections, and binary format support with **protocol buffers**. You will learn how to implement **gRPC** by creating a server and a client that can save and load notes, and how to implement streaming using gRPC. Finally you, as the reader, will learn how **Speedscale** can help you test app performance.
