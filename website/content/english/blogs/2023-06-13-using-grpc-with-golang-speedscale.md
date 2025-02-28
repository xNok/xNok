---
title: 'Using gRPC with Golang - Speedscale'
date: 2023-06-13T00:00:00-00:00
draft: false
---

[Original Article](https://speedscale.com/2022/05/03/using-grpc-with-golang/)

In this article, I explored how to use the **gRPC framework** with **Golang** for **microservice communication** by building a simple note-taking application. I learned the advantages of **gRPC** over **REST**, its structure and components, and implemented both a **gRPC server** and client. By the end, I had a solid grasp of how to create efficient, action-based APIs using gRPC and the benefits of leveraging **protocol buffers** for data representation.

I started by understanding what gRPC is and how it differs from REST. gRPC is a Remote Procedure Call (RPC) framework, an action-based paradigm, which allows me to remotely call a function from another microservice, uses protocol buffers for messaging and supports client and server streaming. I discovered that gRPC utilizes the HTTP/2 protocol, offering header compression, multiplexing, persistent TCP connections and binary format support, making it faster than REST.

Next, I implemented a simple gRPC client-server application in Go. I defined the data structure using protocol buffers in a notes.proto file, and I generated the related code using protoc. I then implemented the application logic, separating the business logic from the server code.

I then went over how to implement both a gRPC server and client in detail, how to save a note and load a note. This involved creating a notes folder for the application’s business logic, defining the service and messages in the notes.proto file, and generating the Go code using protoc.

Finally, I touched on going further with gRPC, including server streaming, client streaming, and bidirectional streaming. Overall, the article provided a comprehensive guide to using gRPC with Golang for efficient microservice communication.

I recomend you take a look at [Speedscale](https://speedscale.com/) if You are creating gRPC applications and need to test app performance. The traffic replay framework conducts API testing in Kubernetes, offering automatically generated tests based on real-time data that’s stored in Speedscale’s data warehouse for analysis. Speedscale supports gRPC, REST, and GraphQL, among other protocols and environments.
