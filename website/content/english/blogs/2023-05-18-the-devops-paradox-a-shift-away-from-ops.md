+++
title = 'The DevOps Paradox: a Shift Away from Ops'
images:
  - 'https://miro.medium.com/v2/da:true/resize:fit:1200/0*tRB5KcnA4uUNKA16'
date = 2023-05-18
tags: ["DevOps", "Cloud", "SaaS", "PaaS", "IaaS", "Continuous Delivery", "DevSecOps", "FinOps", "GitOps"]
categories: ["DevOps"]
draft = false
+++

> Original Article: [The DevOps Paradox: a Shift Away from Ops](https://betterprogramming.pub/the-devops-paradox-a-shift-away-from-ops-26b3615ed97e)

## Summary

This article explores the evolving landscape of **DevOps**, highlighting a paradox: while its original aim was to foster collaboration between development (Dev) and operations (Ops) teams, the rise of **cloud infrastructure** has effectively minimized traditional Ops roles. I discuss how the shift from on-premise manual operations to **Infrastructure as a Service (IaaS)**, **Platform as a Service (PaaS)**, and **Software as a Service (SaaS)** has automated many system administration tasks. Consequently, the focus has moved towards **continuous delivery** and the emergence of specialized roles like **DevOps engineers**, who manage the complex ecosystem of automation tools. The article further examines how this evolution has given rise to new paradigms such as **DevSecOps**, **FinOps**, and **GitOps**, all striving to eliminate manual "Ops" interventions, yet retaining "Ops" in their nomenclature. You will gain insight into how the software engineering world, once plagued by siloed teams, has been transformed by tooling and cloud engineering, leading to a redefined understanding of DevOps.

## A Short Story About DevOps Evolution — DevOps Meant Dev and Ops Collaboration, but They Removed Ops From the Equation Instead

These days, we have such a hard time defining DevOps because the problem it initially solves is long gone. For some recent companies, the problem never actually existed! They are doing everything correctly, but instead, the software engineering landscape has evolved so fast that the gap has been filled by tooling and cloud engineering. We are far from the original day of DevOps and its culture shift aiming to break the silos between Dev and Ops.

## The Dev and Ops Silos

Back in 2008, when Patrick Dubois first thought about DevOps, he was looking at the ineffective collaboration between development and operations in a context where project management had just moved from waterfall to Agile. The operation teams at that time managed everything from networking, server, virtual machine, OS, and software updates. This effectively hid a lot of manual operations. Not everything was manual, but it was before Puppet, Chef, and Ansible — or even Terraform existed. Managing server and software releases was nothing simple and required a lot of expertise. Something that would prevent fast and reliable delivery of new software releases.

![DevOps — initial state — Dev vs. Ops](https://miro.medium.com/v2/resize:fit:1050/1*Vk5dtV3buBqbW9Ai-_UTiA.png)

## The Cloud, the First Sign of Fading Silos

AWS, born in 2006, was the first major cloud provider. DevOps was coined in 2008 and was not intended to solve a cloud-management problem but the real Silos between the operation of on-premise infrastructure. This is the root of the confusion about what DevOps is. Two major shifts in the software engineering landscape started around the same time.

When it comes to cloud computing, we use three main models: Software as a Service (SaaS), Platform as a Service (PaaS), and Infrastructure as a Service (IaaS). Because we have been using those high-level constructs, the OPS (system administration) has almost disappeared. This is as if the original culture problem identified by DevOps’s fathers no longer exists. Each model offers different control, flexibility, and management levels of the underlying infrastructure, and very few companies would maintain on-premise infrastructure.

So, while the DevOps movement was trying to solve the “silot” issues between Dev and Ops, cloud infrastructure was already fading part of the problem by making Ops obsolete.

![DevOps — mid-journey — Dev and Ops collaboration](https://miro.medium.com/v2/resize:fit:1050/1*Pymid5AusM8NCS_ndNDKyw.png)

## No Ops, No Silos

The key motos of DevOps are “shift left” and “you build it, you run it,” which can only lead to the transfer of what was an Ops task(s) to Devs. Cloud reduced the need for system administrators (Ops) by offering the IaaS model, lowering the effort for developers to manage and deploy applications themselves.

We can rephrase it to make it sound better! Ops were empowering Devs by offering tools to simplify software integration and deployment, thus reducing the heavy lifting required by operation teams to maintain infrastructure. As a result, we ended up in a situation where we didn’t need system administration (Ops). However, we need someone to maintain those “tools to simplify software integration and deployment.”

This new emerging role didn’t have a name yet since it was brought to you by the former Ops rebranded the “DevOps guys.” Let’s call it DevOps engineer, someone probably said at some point, and it stuck.

![DevOps — End-Story — Dev and NoOps](https://miro.medium.com/v2/resize:fit:1050/1*JoswsIdx2ZopOI8z5TplbA.png)

## DevOps Redefined Itself

DevOps was never about tools; it was about culture. The idea is that software engineering, too, can become more “Lean” and that software delivery can be done just in time. DevOps’ initial problem is maybe long gone, but it gave birth to the most important idea in software engineering: Continuous Delivery.

I have long been on the side of those who claimed DevOps is not a role, not a team, and if you call it that way, you are doing it wrong. Later I realised that, well, things were more complex. We incongruously created a role, “the guy(s) that maintains tools to simplify software integration and deployment,” but didn’t have a name for it.

When you think about it, do you really need “the guy(s) that maintains tools to simplify software integration and deployment” if everything was a cloud offering? Fully managed? Works by the click of a button?

This is the dream of most Cloud providers and of the many DevOps SaaS product (think about GitLab, for instance). The truth is not so simple. While in theory, things could have been simple, and Ops tasks could have been automated, service fully managed, etc. In reality, we created a monster.

![CNCF Landscape — the DevOps monster](https://miro.medium.com/v2/resize:fit:1050/1*juzvw1b1PavsrBX-MmKdWQ.png)

As a result, the challenge for most operation/infrastructure teams (aka. Ops) is navigating the map of countless tools and services, understanding, deploying, and connecting those tools into a coherent infrastructure and tooling that developers can use.

DevOps stuck is that key buzzword, easy to derive into: DevSecOps, FinOps, GitOps, MlOps, etc.

But if you notice, the fragrant that remains is always Ops. The funny part is that each approach aims to remove the Ops of the equations. The Ops, aka “the guy(s) that logs into the system and does things to make it work.”

## TL;DR

The original problem that DevOps set out to solve may no longer exist due to the rise of cloud infrastructure. However, DevOps has given birth to the important idea of continuous delivery and has brought a culture shift in software engineering.

While the term “DevOps” may have stuck around as a buzzword, it has led to the development of new approaches such as DevSecOps, FinOps, and GitOps, all of which aim to remove the need for traditional Ops tasks.

Ultimately, the landscape of DevOps and cloud infrastructure constantly evolves, and it is hard to stay current and select the right tools. Ironically, DevOps initially meant collaboration between Dev and Ops, but it has shifted toward excluding Ops from the equation.
