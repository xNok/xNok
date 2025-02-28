--- 
title: Getting Started with Go and InfluxDB | InfluxData
date: 2021-11-19T00:00:00+00:00
draft: false
description: In this article, you will learn how to integrate InfluxDB with a Go application, enabling you to effectively manage time-series data.
author: Alexandre Couëdelo
images: []
tags: [InfluxDB, Go, Time-Series Data, IoT, Database]
--- 

Original article: [Getting Started with Go and InfluxDB | InfluxData](https://www.influxdata.com/blog/getting-started-go-influxdb/)

This article guides you through integrating **InfluxDB**, a high-performance time-series database, with a **Go** application. You'll learn how to set up a local **InfluxDB** instance using Docker, establish connections using the **Go** client library, and perform data insertions and queries. The tutorial covers data modeling, insertion methods, and querying techniques for a temperature monitoring application. By following this guide, you can gain a solid understanding of how to use **InfluxDB** with **Go** for managing time-series data.

The author Alexandre Couëdelo explores the integration of InfluxDB with Go, demonstrating how to manage time-series data effectively. You will begin by setting up a local InfluxDB database using Docker and creating connections with the Go client library. I'll walk you through data modeling, different insertion methods, and implementing queries to extract insights from your application. By the end of this tutorial, You will have a solid foundation for leveraging InfluxDB with Go in your projects.

Key takeaways:

*   Setting up InfluxDB with Docker.
*   Connecting to InfluxDB using the Go client library.
*   Modeling data for time-series storage.
*   Inserting data using line protocol, data points with constructors, and fluent style.
*   Querying data using Flux.
