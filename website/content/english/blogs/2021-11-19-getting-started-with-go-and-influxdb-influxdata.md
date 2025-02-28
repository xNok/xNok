--- 
title: Getting Started with Go and InfluxDB | InfluxData
date: 2021-11-19
draft: false
description: In this article, you will learn how to integrate InfluxDB with a Go application, enabling you to effectively manage time-series data.
author: Alexandre Couëdelo
images: 
- https://www.influxdata.com/wp-content/uploads/influxdb-querying-data.png
tags: [InfluxDB, Go, Time-Series Data, IoT, Database]
--- 

> Original article: [Getting Started with Go and InfluxDB | InfluxData](https://www.influxdata.com/blog/getting-started-go-influxdb/)

## Summary

This article guides you through integrating **InfluxDB**, a high-performance time-series database, with a **Go** application. You'll learn how to set up a local **InfluxDB** instance using Docker, establish connections using the **Go** client library, and perform data insertions and queries. The tutorial covers data modeling, insertion methods, and querying techniques for a temperature monitoring application. By following this guide, you can gain a solid understanding of how to use **InfluxDB** with **Go** for managing time-series data.

This tutorial covers:

*   Setting up InfluxDB with Docker.
*   Connecting to InfluxDB using the Go client library.
*   Modeling data for time-series storage.
*   Inserting data using line protocol, data points with constructors, and fluent style.
*   Querying data using [Flux](https://www.influxdata.com/products/flux/) scripting language.
