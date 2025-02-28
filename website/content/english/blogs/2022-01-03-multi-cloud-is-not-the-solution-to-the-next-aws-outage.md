---
title: "Multi-Cloud is NOT the solution to the next AWS outage"
date: 2022-01-03
draft: false
categories: ["Disaster Recovery"]
tags: ["Multi-Cloud", "AWS", "Disaster Recovery"]
images:
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/e1e3d17a-a889-4a7e-82a5-f0417c4f34cd/0v3yLF0diiOcQIKaH?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB46632GSHWHC%2F20250228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250228T153824Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJIMEYCIQDrI6DE%2BHXC78xzXbxkBAuf%2FxA9mIhiS1j%2FAW57pSePbQIhANdFaeqNuCpeT36ihUDdYGUU3pOrDhG6COjjpbnvk5vPKogECJH%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMNjM3NDIzMTgzODA1IgybYxIi7Gyzrm%2F1Gdwq3AP2KP2X6oaifymBRVNHYUo3ILePI%2FRkQIS%2F75cxbEayGvkLOulWsDTTy6ODBQhLkYLCy63z4YuK6Os2aB7dwtxftuDa5rd38K98oeJHwAGDrAhfjHx8ZXQkIkr6e1pCawhPvWaMwC7Um5k1hUU5vk95LyqRotJNAC9zncWT9EJLi6R9z9bRNiAP1T2yQWG0BmT1Ubp2U4mjDtGJx2Pdr8dHskaXaoUtTVqgRwutkQI6u2daFvR0dEIjVU%2Bi3Mjpg%2FtOoMig9yKs3nEcMwvUpFvAcjOzC4Ka1j8HRtebJhyeK6Kc7v5wiXaJVZqkD8o5XIxa4ruvSDovzlm88bUoYI3xFrQjfgnKE8koM5Lz8K8lVQdYFIyn2KWeFtnqrnh%2BI4bTTDkzZRs7hkxZ9zRzTgsGwvcLPAczzUJn8ifGnHz5x1bS7g6%2Bj9i4AKb6ckDDOnVkTQVSJycEYhraBH05PPgDXF0bsFsnWeIzaHCjayCYDiw69%2BX72xSP3QDoWFWf5yljM9P7Di%2BXpQe3%2Fhg4upQ7K3F7i9ARUkmqZpc98nwaQ%2Fh5GclMSoTQTjc%2B336pZz2chGYXAJi8RF0b9JKw9%2Bc3mcLAWWDOi7HskyHZSJBfuKq%2FRO%2BDTzySFHtI7jDAroe%2BBjqkASYHO5qL3rHRkxCNo7%2B8aw7UFhcMtmAHeVSP0UVAljYi1kIU6HId1SptgqATtKXTyRKHkbjggkZ2jMg6KXOZdtZMdwJkBTfb53P3Szme2yiFYUvtTpvBhRbW5mGvApQ14mZYm038k%2BXR%2FB0MRl8xcwta24yEtFLalaeWwPwjkEi5UOD5fP%2BBWf47bawz5JJiwYsQEePXt2QNDpAHhPZa%2F2zXv9dt&X-Amz-Signature=a740f592f3d32bdaa8efe2a9b7feb241cc505a0a52bb6586a977c38c79671bd3&X-Amz-SignedHeaders=host&x-id=GetObject
---

> Original Article: [Multi-Cloud is NOT the solution to the next AWS outage](https://faun.pub/multi-cloud-is-not-the-solution-to-the-next-aws-outage-bb41c0b14573)

In this article, I explore the limitations of **multi-cloud** solutions as a **disaster recovery** strategy following the latest AWS outage. While multi-cloud might seem like the ultimate solution, I argue that it's not always the best approach, especially for those just starting with recovery strategies. I share insights on effective disaster recovery strategies, focusing on three main approaches:

*   **Active-Recovery (Backup and Restore)**: This involves recreating resources in a new region after a disaster. It requires infrastructure automation and regular testing of recovery scripts. Challenges include managing and replicating backups in target recovery regions.
*   **Active-Passive (Warm Standby)**: In this mode, infrastructure is pre-built and ready to take over traffic. It adds overhead to the CI/CD pipeline but provides opportunities for testing and faster recovery times.
*   **Active-Active (Multi-site)**: This paradigm requires careful consideration of infrastructure and software design. Databases are a primary challenge, often addressed with master/slave architectures or geo-partitioning.

I emphasize that each strategy has its own response time and cost implications, advocating for a progressive approach to mastering these strategies. The article references real-world outages and offers architectural insights to prepare for continuous service availability.
