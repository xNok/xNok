---
title: "EKS Monitoring | Best Practices & Tools to Use"
date: 2022-01-31
draft: false
github_link: "https://github.com/xNok/xNok"
author: "Alexandre Couëdelo"
tags: ["Kubernetes", "EKS", "Monitoring", "DevOps"]
image: "https://www.containiq.com/post/eks-monitoring/62267b5fcb6d648b04c718f8_EKS_monitoring.png"
description: "In this technical blog article, you will learn about best practices and tools for monitoring your EKS (Elastic Kubernetes Service) cluster."
---

[Original Article](https://www.containiq.com/post/eks-monitoring)

In this article, I'll walk you through the best practices for **monitoring your EKS cluster**, including what to monitor, what tools to use, and how to get started. I'll also introduce you to **ContainIQ**, an alternative to the AWS built-in solutions that can help you get started with monitoring your EKS cluster in minutes.

### What to Monitor in an EKS Cluster

Monitoring is essential for revealing issues in your **Kubernetes clusters**, whether those problems arise from your applications or the components of the cluster themselves. A good monitoring solution will bring you the benefits of **alerting**, **visualization**, **centralized logging**, **metrics**, and **events**.

Here are some of the things you should be monitoring in your EKS cluster:

*   **AWS Resource Limits:** Instead of suffering from AWS resource limits, you should monitor them proactively and set alerts to trigger once you reach a threshold, such as eighty percent of the limit, to give you sufficient time to react.
*   **Nodes:** Keeping your cluster healthy and cost-efficient can be achieved by keeping your node resources around sixty to seventy percent. That way you have enough headroom, but aren’t overpaying for resources you’re not using.
*   **Kubernetes Events:** Kubernetes has a built-in event system that can help you detect problems. Here are a few to keep an eye on:
    *   **CrashLoopBackOff:** a Pod keeps crashing again and again
    *   **ImagePullBackOff:** a Pod is unable to start because the node is unable to pull the container image
    *   **Evicted:** a Pod has been killed by Kubernetes (because it uses too much RAM, for instance)
*   **Applications:** Monitoring an application involves several elements: logs, metrics, traces, and health checks.

### AWS Built-In Solutions

You will heavily rely on **CloudWatch** as the central dashboarding and alerting system. CloudWatch won’t know about your cluster out of the box, so you will need to set up some exporters to have logs and metrics coming in. **CloudWatch Agent** will be in charge of collecting nodes, metrics, and events, while **fluentd** will be responsible for aggregating and shipping application logs. **AWS X-Ray** can be leveraged to achieve distributed tracing, and you can rely on **Prometheus** to collect application metrics.

### Using ContainIQ for EKS Monitoring

As you have seen, monitoring Kubernetes while relying only on AWS services involves a lot of tools. While it can be done, it doesn’t feel like the system was tailor-made for Kubernetes.

**ContainIQ** is a SaaS that makes getting started with Kubernetes monitoring easy. It can replace most AWS solutions in one centralized place and only requires a single agent to get set up. It provides a unified metrics dashboard that lets you see resource usages such as CPU and memory at the node level and at your application/Pod level. It also collects application logs and provides an aggregated logs dashboard.

To get started with ContainIQ, you just need to [register](https://app.containiq.com/register) and install the agent on your EKS cluster. The whole process takes just a few minutes.