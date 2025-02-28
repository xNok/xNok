--- 
title: "Multi-Cloud is NOT the solution to the next AWS outage" 
date: 2022-01-03T00:00:00+00:00 
author: Alexandre Couedelo 
slug: multi-cloud-is-not-the-solution-to-the-next-aws-outage 
draft: false 
---

Original Article: [Multi-Cloud is NOT the solution to the next AWS outage](https://faun.pub/multi-cloud-is-not-the-solution-to-the-next-aws-outage-bb41c0b14573)

In this article, I argue that **multi-cloud solutions** aren't always the best starting point for improving resilience and you should consider alternatives like **disaster recovery**.

I outline three main strategies:

*   **Active-Recovery** (Backup and Restore):

    In this mode, resources are recreated in new regions after a disaster. This requires automation and region-agnostic scripts. Key challenges include managing backups and ensuring their usability in recovery regions. Response time is around ~Hours, Cost: ~$.

*   **Active-Passive** (Warm Standby):

    Here, the infrastructure is ready, and traffic needs redirection and scaling. It adds overhead to the CD pipeline but allows for sanity checks before active region deployments. Response Time: ~Mins, Cost: ~$$

*   **Active-Active** (Multi-site):

    This paradigm requires careful software design, especially for databases and stateful applications. Challenges include data replication and user behavior considerations. Response Time: ~Seconds, Cost: ~$$$

I emphasize the importance of automation, regular testing of recovery scripts, and careful management of stateful applications, especially databases. The article concludes that while multi-cloud can be an option for advanced active-active setups, it's often more complex and costly than other strategies, especially when getting started with **disaster recovery**.