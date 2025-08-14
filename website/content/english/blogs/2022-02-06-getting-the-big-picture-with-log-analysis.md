---
title: "Getting the big picture with Log Analysis | Last9 SRE Platform"
date: 2022-02-06
draft: false
categories: ["DevOps"]
tags: ["Alerting", "SLOs", "Log Analysis", "SRE"]
images:
- https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTc3M3wwfDF8c2VhcmNofDZ8fHBpY3R1cmV8ZW58MHx8fHwxNjQ4MTIyMTcz&ixlib=rb-1.2.1&q=80&w=2000
---

> Original Complete Article : [Getting the big picture with Log Analysis](https://blog.last9.io/getting-the-big-picture-with-log-analysis/)

## Summary

The article emphasizes the importance of **log analysis** in understanding system states and troubleshooting issues, especially in complex distributed systems. It outlines a practical log management process, including collecting data from various sources, cataloging and indexing the data, and enabling effective searching and analysis. Key aspects covered are:

*   **Log Management**: Implementing practices for collecting, cataloging, and indexing log data.
*   **Log Types**: Understanding different log types like application, server, system, access, and change/deployment logs.
*   **Data Refinement**: Creating data pipelines to refine datasets and improve system efficiency.
*   **Alerts and Dashboards**: Setting up dashboards for historical data and alerts based on **Service Level Objectives (SLOs)** to avoid alert fatigue.
*   **Continuous Improvement**: Encouraging teams to adopt log standards, involve junior resources in log analysis, and strive for a zero-error system.

The article advocates for viewing log analysis as a means to stimulate continuous improvement, enabling better system resilience and efficient problem resolution. It also highlights the necessity of a log management system and recommends centering alerts around the SLI/SLO approach.
