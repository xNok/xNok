---
title: "Go REST Guide. gorilla/mux Router"
date: 2023-07-25
draft: false
categories: ["Programming"]
tags: ["Golang", "REST API"]
images:
- https://www.jetbrains.com/guide/assets/thumbnail-a22e3d85.png
---

> Original Article: [Go REST Guide. gorilla/mux Router](https://www.jetbrains.com/go/guide/tutorials/rest_api_series/gorilla-mux/)

## Summary

In this article, I will guide you through building a Golang REST API using the [Gorilla/Mux router](https://github.com/gorilla/mux). You will explore how a router enhances request handling in REST APIs, reducing code compared to the standard library. 

Key points:

*   **Router Benefits:** **Routers** streamline request dispatch to handler functions, cutting down on repetitive code.
*   **gorilla/mux Features:**  how to define routes, handle HTTP methods, implement subrouters, and utilize middleware.
*   **Practical Implementation:** Build a simple REST API, focusing on routers and exploring features like subrouters and middleware for reusable handler functionalities.

This guide is part of a series where we compare building a REST API with the standard library, gorilla/mux and gin.
