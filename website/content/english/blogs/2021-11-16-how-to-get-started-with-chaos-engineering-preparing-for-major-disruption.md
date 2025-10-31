---
title: "How to Get Started with Chaos Engineering? - Preparing for Major Disruption"
date: 2021-11-16
#description: "This is meta description"
author: "Alexandre Couëdelo"
tags: ["Chaos Engineering", "DevOps", "Site Reliability Engineering"]
---

[Original Article](https://faun.pub/road-map-to-choas-engineering-preparing-for-major-disruption-e5dc01c73f2c)

In this article, I'll walk you through how to get started with **Chaos Engineering** to ensure your systems can withstand major disruptions. Major outages, like those experienced by [AWS](https://awsmaniac.com/aws-outages/) and [Facebook](https://engineering.fb.com/2021/10/04/networking-traffic/outage/), are a reality. Being prepared is the best insurance policy, leading to better architecture, less burnout, and a more engaged team.

**Chaos Engineering** is the discipline of experimenting on a software system in production to build confidence in its ability to withstand turbulent conditions. I categorize disruptions into four types and recommend tackling the most critical scenarios first to lay a solid foundation for incident response.

Here are the five steps I recommend you follow to get ready for any disaster:

### 1. Build a Baseline
Before you start breaking things, you need a robust **Alerting and Monitoring** system. You can't fly blind. The first step is to define your system's **'steady state'**—a measurable output that indicates normal behavior. This involves setting up three types of monitoring:
*   **Network Monitoring**: To ensure firewalls, routers, and servers are functioning correctly.
*   **Infrastructure Monitoring**: To validate that your IT infrastructure, including external providers and services, is running.
*   **Application Monitoring**: To track software behavior, including logs, errors, and performance.

### 2. Destroy Your Dev Environment Every Day
Once you have good observability, it's time to stress-test your system. I recommend shutting down your non-production environments daily and recreating them from scratch. This practice validates your automation scripts, reduces costs, and helps eliminate **technical debt**. If a developer makes a manual change, it gets wiped out the next day, reinforcing an **"everything as code"** culture.

### 3. Migrate Dev Environment to Another Data Center
Your infrastructure scripts shouldn't lock you into a single geographical region. You should refactor your configurations to allow deployment in any region your cloud provider supports. This is a good time to explore different migration strategies:
*   **Active-Active**: Two sites are running simultaneously, with traffic load-balanced between them.
*   **Active-Passive**: One primary site handles traffic while a second one is on standby, ready to scale up.
*   **Active-Recovery**: A single active region with the capability to deploy to a new one when needed.

### 4. Build Your Incident Response Strategy
Technical readiness is only half the battle. You need a documented **incident response strategy** that clearly defines roles and procedures. Ask yourself:
*   How do we detect critical problems?
*   Who coordinates the incident response?
*   Who needs to be contacted?
*   How do we communicate internally and externally?
*   What is our target time to get back online?

### 5. Organize a Gameday
Finally, you need to practice. A **Gameday** is a simulated incident where your team follows the response procedure. This helps validate your documentation, test your migration scripts, and build muscle memory for real-world events.

By following these foundational steps, you build a resilient system and a prepared team *before* introducing advanced tools like [Chaos Monkey](https://netflix.github.io/chaosmonkey/) or [Gremlin](https://www.gremlin.com/). In future articles, I'll explore how to use tools like [chaostoolkit](https://chaostoolkit.org/) to automate these experiments.
