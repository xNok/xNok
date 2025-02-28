---
title: "Multi-Cloud is NOT the solution to the next AWS outage"
date: 2022-01-03
---

Original article: [Multi-Cloud is NOT the solution to the next AWS outage](https://faun.pub/multi-cloud-is-not-the-solution-to-the-next-aws-outage-bb41c0b14573)

In this article, I explore disaster recovery strategies and argue that multi-cloud isn't always the best solution for AWS outages, especially if you're new to recovery strategies. I cover three main approaches:

*   **Active-Recovery (Backup and Restore)**: This involves recreating resources in a new region after a disaster. It requires infrastructure automation and regular testing of recovery scripts. The main challenge is managing and replicating backups.
    *   Response Time: ~Hours
    *   Cost: ~$

*   **Active-Passive (Warm Standby)**: Here, the infrastructure is ready, and you redirect traffic and scale up. It adds overhead to the CD pipeline but offers opportunities for testing. It's like having a dev environment ready for disaster recovery.
    *   Response Time: ~Mins
    *   Cost: ~$$

*   **Active-Active (Multi-site)**: This requires careful software design and dedicated infrastructure. Databases are a key challenge, often addressed with master/slave architectures or geo-partitioning. It also adds complexity to CI/CD.
    *   Response Time: ~Seconds
    *   Cost: ~$$$

I also briefly discuss **Active-Active multi-cloud** setups and the challenges of being cloud agnostic. If you can rely on multiple regions, you should be well-prepared for outages. Ultimately, the article encourages you to consider these strategies to prepare your architecture for **resilience** and ensure continuous service availability during outages. 