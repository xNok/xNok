---
title: "Using gRPC with Golang"
date: 2023-06-13T00:00:00+00:00
draft: false
---

[Original Article](https://speedscale.com/2022/05/03/using-grpc-with-golang/)

This article explores how to use the **gRPC framework** with **Golang** for microservice communication. I build a simple note-taking application to demonstrate the advantages of gRPC over REST, understand its structure and components, and implement both a gRPC server and client. By the end of this tutorial, You will have a solid grasp of how to create efficient, action-based APIs using gRPC and the benefits of leveraging protocol buffers for data representation.

**Key points:**

*   **gRPC** is a Remote Procedure Call (RPC) framework that provides better speed and efficiency than REST APIs.
*   **Protocol buffers** offer more efficient binary data representation than text-based formats like JSON or XML.
*   The tutorial guides You through implementing a gRPC client-server application in Go, including creating a Go project, implementing application logic, and implementing the gRPC server and client.
*   The article also covers advanced topics such as streaming with gRPC.

You can find the complete code for this tutorial in [this GitHub repo](https://github.com/xNok/go-grpc-demo).
