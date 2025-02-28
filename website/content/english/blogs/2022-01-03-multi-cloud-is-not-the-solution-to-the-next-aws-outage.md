---
title: "Multi-Cloud is NOT the solution to the next AWS outage"
date: 2022-01-03
draft: false
categories: ["DevOps"]
tags: ["Multi-Cloud", "AWS", "Disaster Recovery"]
images: 
  - https://miro.medium.com/v2/resize:fit:1100/format:webp/0*v3yLF0diiOcQIKaH
---

> Original Article: [Multi-Cloud is NOT the solution to the next AWS outage](https://faun.pub/multi-cloud-is-not-the-solution-to-the-next-aws-outage-bb41c0b14573)

## Summary

In light of recent AWS outages, I felt compelled to delve deeper into disaster recovery strategies. This article explores the limitations of **multi-cloud solutions** and presents effective alternatives for ensuring service availability.

While multi-cloud solutions might seem like the ultimate answer, I argue that they aren't always the best approach, especially for those just starting with recovery strategies. Instead, I discuss architectural solutions and recovery plans that can help you prepare for the next outage.

## key Concepts

*   **Active-Recovery (Backup and Restore):** This involves recreating resources in a new region after a disaster. It requires infrastructure automation and regular testing of recovery scripts. The main challenge is managing and replicating backups.
    *   Response Time: ~Hours
    *   Cost: ~$

*   **Active-Passive (Warm Standby):** In this mode, the infrastructure is ready, and traffic redirection is the primary task. It adds overhead to the CD pipeline but allows for sanity checks before deployments.
    *   Response Time: ~Minutes
    *   Cost: ~$$

*   **Active-Active (Multi-site):** This paradigm requires careful consideration of infrastructure and software design, especially concerning databases. Solutions include master/slave architecture and geo-partitioning.
    *   Response Time: ~Seconds
    *   Cost: ~$$$

I also briefly touch on the complexities of an **Active-Active multi-cloud** setup and the challenges of maintaining cloud agnosticism.

## References

* [Amazon Explains The Cause Behind Tuesday's Massive AWS Outage](https://www.bleepingcomputer.com/news/technology/amazon-explains-the-cause-behind-tuesday-s-massive-aws-outage/)
* [Disaster Recovery (DR) Architecture on AWS, Part IV: Multi-Site Active/Active](https://aws.amazon.com/blogs/architecture/disaster-recovery-dr-architecture-on-aws-part-iv-multi-site-active-active/)
* [Using VPC Endpoints in Multi-Region Architectures with Route 53 Resolver](https://awscloudfeed.com/whats-new/architecture/using-vpc-endpoints-in-multi-region-architectures-with-route-53-resolver)
* [Multi-Region Database Deployments](https://dzone.com/refcardz/multi-region-database-deployments)
