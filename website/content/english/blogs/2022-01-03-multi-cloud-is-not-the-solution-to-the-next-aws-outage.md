---
title: "Multi-Cloud is NOT the solution to the next AWS outage"
date: 2022-01-03
draft: false
categories: ["DevOps"]
tags: ["Multi-Cloud", "AWS", "Disaster Recovery"]
images: 
  - https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/e1e3d17a-a889-4a7e-82a5-f0417c4f34cd/0v3yLF0diiOcQIKaH
---

[Original Article](https://faun.pub/multi-cloud-is-not-the-solution-to-the-next-aws-outage-bb41c0b14573)

In this article, I explore why **multi-cloud** is often not the right solution for handling **AWS outages**, especially if you're just starting with disaster recovery. Instead of relying on a complex multi-cloud setup, I focus on more practical and effective strategies to ensure your services remain available.

I outline three main disaster recovery strategies, each with its own response time and cost implications:

*   **Active-Recovery (Backup and Restore):** This is the most basic strategy, where you restore your infrastructure from backups in a new region. It's cost-effective but has the longest recovery time.
*   **Active-Passive (Warm Standby):** A step up, this involves having a scaled-down version of your infrastructure running in a separate region that you can switch to during an outage.
*   **Active-Active (Multi-site):** The most resilient and expensive option, where you have two or more active regions serving traffic simultaneously. This setup requires careful architectural planning, especially for data replication.

I also touch on the complexities of a multi-cloud active-active setup and the challenges of remaining cloud-agnostic. While it might seem like the ultimate solution, it's often unnecessary and introduces significant overhead.

By the end of the article, you'll have a better understanding of how to build a resilient architecture without jumping straight to a multi-cloud solution.

### References

* [Amazon Explains The Cause Behind Tuesday's Massive AWS Outage](https://www.bleepingcomputer.com/news/technology/amazon-explains-the-cause-behind-tuesday-s-massive-aws-outage/)
* [Disaster Recovery (DR) Architecture on AWS, Part IV: Multi-Site Active/Active](https://aws.amazon.com/blogs/architecture/disaster-recovery-dr-architecture-on-aws-part-iv-multi-site-active-active/)
* [Using VPC Endpoints in Multi-Region Architectures with Route 53 Resolver](https://awscloudfeed.com/whats-new/architecture/using-vpc-endpoints-in-multi-region-architectures-with-route-53-resolver)
* [Multi-Region Database Deployments](https://dzone.com/refcardz/multi-region-database-deployments)