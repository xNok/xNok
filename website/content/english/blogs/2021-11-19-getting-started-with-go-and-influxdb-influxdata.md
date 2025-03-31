---
title: "Getting Started with Go and InfluxDB | InfluxData"
date: 2021-11-19
draft: false
description: In this article, you will learn how to integrate InfluxDB with a Go application, enabling you to manage time-series data effectively.
categories: ["Golang", "InfluxDB"]
tags: ["Golang", "InfluxDB", "time-series", "database"]
images:
- https://www.influxdata.com/wp-content/uploads/influxdb-querying-data.png
---

> Original Article: [Getting Started with Go and InfluxDB](https://www.influxdata.com/blog/getting-started-go-influxdb/)

## Summary

This article guides you through integrating **InfluxDB**, a high-performance time-series database, with a Go application. I'll walk you through setting up a local InfluxDB instance using Docker, establishing connections with the Go client library, and performing data insertions and queries. By following this tutorial, you will gain a solid understanding of how to model your data, utilize different insertion methods, and implement queries to extract insights from your temperature monitoring application.


## Key Concepts

*   **InfluxDB:** A **high-performance data store** explicitly written for **time-series data**, offering tools to ingest, transform, and visualize data.
*   **Go Client Library:**  A dedicated client library to integrate InfluxDB directly into your backend application.
*   **Data Modeling:** Structuring your data to store changes in "thermostat settings" to InfluxDB, including user identifiers, desired average, and maximum temperatures.
*   **Data Insertion Methods:**
    *   **Line Protocol:** Uses text-based database queries, treating records as measurementName, fields, and tags.
    *   **Data Point with Constructor:** Employs maps to populate data, convenient when parameters are already in the desired format.
    *   **Data Point with Fluent Style:** Utilizes a builder pattern for step-by-step query construction, enhancing readability.
*   **Batching:** The InfluxDB client uses batching to send data to the database. By default, no data will be sent to the database until the batch size is reached (5,000 points by default), as a trade between the load on the database and the availability of the data.
*   **Flux Query Language:**  A functional language used to select, filter, and aggregate data in InfluxDB.

## References

*   [Go client library](https://pkg.go.dev/github.com/influxdata/influxdb-client-go/v2)
