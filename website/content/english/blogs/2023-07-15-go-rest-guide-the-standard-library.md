---
title: "Go REST Guide. The Standard Library"
date: 2023-07-15
draft: false
categories: ["Programming"]
tags: ["Go", "REST API", "Standard Library", "Web Development"]
images:
- https://www.jetbrains.com/go/guide/assets/1-run-07a86223.gif
- https://www.jetbrains.com/go/guide/assets/2-endpoints-debbfa6a.gif
- https://www.jetbrains.com/go/guide/assets/03-create-recipe-0a2209c6.png
- https://www.jetbrains.com/go/guide/assets/04-list-recipes-afc2276c.png
- https://www.jetbrains.com/go/guide/assets/05-get-recipe-0fb0453e.png
- https://www.jetbrains.com/go/guide/assets/06-update-recipe-1f2b37bd.png
- https://www.jetbrains.com/go/guide/assets/07-delete-recipe-8aa3496a.png
---

> [Original Article](https://www.jetbrains.com/go/guide/tutorials/rest_api_series/stdlib/)

## Summary

In this article, I explore building a **Go REST API** using the **standard library**. I begin by setting up a simple "Hello World" server and then progressively implement **CRUD operations** for a sample recipe API. You will learn about key components such as `http.ServeMux` for request routing, creating custom HTTP handlers, and structuring your Go application effectively with separate packages for models and storage interfaces. I also cover implementing generic error handling and detailed handlers for creating, listing, retrieving, updating, and deleting recipes. Furthermore, I demonstrate how to perform **integration testing** using Go's `httptest` package. While the standard library offers a native way to build web applications, I highlight its limitations for complex REST APIs, hinting at the need for third-party frameworks, which will be the focus of the next articles in this series.

## Key Concepts

*   **Go Standard Library for Web Development:** How Go's built-in `net/http` package can be used to create HTTP servers and handle requests.
*   **HTTP Server and Routing (`http.ServeMux`):** Understanding how to instantiate a request multiplexer and register URI patterns to dispatch requests to specific handlers.
*   **HTTP Handlers (`http.Handler` Interface):** Implementing the `ServeHTTP` method within a struct to process incoming HTTP requests and generate responses.
*   **REST API Design Principles:** Applying **CRUD operations** (Create, Read, Update, Delete) to a resource (`/recipes`).
*   **Application Structuring:** Organizing Go code into packages (e.g., `recipes` for business logic and data models) and using **interfaces** for data storage abstraction.
*   **JSON Handling:** Encoding and decoding **JSON payloads** using `json.NewDecoder` and `json.Marshal`.
*   **URL Slugification:** Using external packages like `gosimple/slug` to create URL-friendly resource IDs.
*   **Error Handling:** Implementing generic error handlers for `InternalServerError` and `NotFound` responses.
*   **Integration Testing (`httptest`):** Writing comprehensive tests for REST API endpoints using Go's `httptest` package.

## References

*   [Kat Zien's GopherCon 2018 talk about hexagonal architecture](https://www.youtube.com/watch?v=s_C2I6m9bW0)
*   [GitHub repository for the code samples from the article](https://github.com/JetBrains/go-rest-api-tutorial)
*   [gosimple/slug GitHub Repository](https://github.com/gosimple/slug)
*   [stretchr/testify GitHub Repository](https://github.com/stretchr/testify)