---
title: "Multi-Cloud is NOT the solution to the next AWS outage"
date: 2022-01-03
draft: false
categories: ["Disaster Recovery"]
tags: ["Multi-Cloud", "AWS", "Outage", "Disaster Recovery"]
images: 
  - https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/e1e3d17a-a889-4a7e-82a5-f0417c4f34cd/0v3yLF0diiOcQIKaH?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466RFEEIGBZ%2F20250228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250228T155843Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJHMEUCIAMHVxO1aCSeq6PJ9efLC%2FoH%2Beh7Cqr8quldLaTfm2NWAiEAlyD5iqd2N5Mg55DkzoSyk9qAZISPq83X02LQ1O48Oc0qiAQIkf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw2Mzc0MjMxODM4MDUiDCouSSpFcdC%2FTDN2kyrcA20Ka8Bn0%2BfFEEspD4LInTCECEDFQLdP3yzVvnxyVLofb6uCls3%2BOMdrildgFPSkYudxAaQGVQYE0%2FIWJVeF7HvetGcz19rlSYAE6deNu1v5PR2sHnautvSceIjEvwmqFgJUtG76fuiiuZzDnYls%2FMIOli3aFD%2BHZuWUSIDm8JB1ZQhaW9DnYK7kN2Jjz9SbM%2FFS8UxWlj7%2FGAUQ7G4kg4hMB0gckTte5T7KIbahaGcHd9wsEYc560gWD5ogRhVoWB82LZ80IZh8q6mcbbCpo8Ack6JR0QrXA43kLqwrdnZXleNnh7Evq%2BhtGYaMVmV9uEzxhIrZLujC5Eg1XsZmyvLir7XX1%2FUUzOovHErYWk0apu9hfcnZt%2B003xs2dfHof28WV6dPnLZqNEiMJPWYZ6Fr%2BFySdIXUFlPdmyCl7COW9gMPUB0jS8T2uTx%2BFSMvvWp4FHsP0xq3Zoyr5UxR9Ge4Ay3rtj6FjZ8x43C2l0ZySzflZXMpZECjc2ZOGG2NwQChuxcwXTGi%2BD4fL9cOb19VVgGz35LRIX5jBq9105Clh3ZyZ1FggEdPrBwbnX5fg4ZqbxyKB%2B66rHD6WX1FOwLRcOkMvchaTtv2UNP5ybzHjtKrnyAgNUyx63vwMPauh74GOqUBZvVpnZ1XOVmz4fSCE2jTCt1%2BAmVKPxBu%2BoF1W5Z9byxhIwt9Xk19M1XuFfuMRTvnl7OeEilp1jzLBUYsqnJ4SVLMcFd2nECfjNTJJyz5bBOYTK1a5ZrTjuisvR2S6KTKg757ws%2Fxa2uHmT7QE0xjqte4D8x4PA78POBeJyUlBnkOYyfEf5jElyAoo8DB8J0JC8R28WssZnqQnPFY%2FuthrnizSjHR&X-Amz-Signature=5714eb686696c6be933d0f16d096a6d67791087ea240c4022b45d0a4042e4d1b&X-Amz-SignedHeaders=host&x-id=GetObject
---

> Original Article: [Multi-Cloud is NOT the solution to the next AWS outage](https://faun.pub/multi-cloud-is-not-the-solution-to-the-next-aws-outage-bb41c0b14573)

In light of recent AWS outages, I felt compelled to delve deeper into disaster recovery strategies. This article explores the limitations of **multi-cloud solutions** and presents effective alternatives for ensuring service availability.

While multi-cloud solutions might seem like the ultimate answer, I argue that they aren't always the best approach, especially for those just starting with recovery strategies. Instead, I discuss architectural solutions and recovery plans that can help you prepare for the next outage.

I explore three main disaster recovery strategies:

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

**References:**

*   [Amazon Explains The Cause Behind Tuesday's Massive AWS Outage](https://www.bleepingcomputer.com/news/technology/amazon-explains-the-cause-behind-tuesday-s-massive-aws-outage/)
*   [Disaster Recovery (DR) Architecture on AWS, Part IV: Multi-Site Active/Active](https://aws.amazon.com/blogs/architecture/disaster-recovery-dr-architecture-on-aws-part-iv-multi-site-active-active/)
*   [Using VPC Endpoints in Multi-Region Architectures with Route 53 Resolver](https://awscloudfeed.com/whats-new/architecture/using-vpc-endpoints-in-multi-region-architectures-with-route-53-resolver)
*   [Multi-Region Database Deployments](https://dzone.com/refcardz/multi-region-database-deployments)
