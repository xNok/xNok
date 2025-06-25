---
title: "Succeeding with Backstage: Backstage as Part of a Broader Developer Productivity Engineering (DPE) Initiative"
date: 2023-11-13
draft: false
categories: ["Developer Experience"]
tags: ["Backstage", "Developer Productivity", "Developer Experience"]
images:
- https://www.kosli.com/images/blog/kosli-blog-succeeding-with-backstage-4-backstage-as-part-of-a-broader-developer-productivity-engineering-dpe-initiative-social-1-.jpg
---

> Original Article: [Succeeding with Backstage: Backstage as Part of a Broader Developer Productivity Engineering (DPE) Initiative](https://www.kosli.com/blog/succeeding-with-backstage-4-backstage-as-part-of-a-broader-developer-productivity-engineering-dpe-initiative/)

## Summary

This article, the final in the “Succeeding with Backstage” series, details how to integrate **Backstage** into a broader **Developer Productivity Engineering (DPE)** initiative. **DPE** is a new discipline, rooted in lean manufacturing and aligned with Agile and DevOps, focused on simplifying developer tasks and fostering collaboration to enhance their overall experience. I explain that **DPE** originated at Netflix and aims to combat productivity loss in complex, fast-growing tech environments by streamlining activities from coding to testing.

**Backstage** naturally complements **DPE** by centralizing the software ecosystem through its software catalog, integrating various tools via plugins (like for API documentation or CI/CD tools such as GitLab, GitHub Actions, and CircleCI), and significantly improving **information retrieval**. Its powerful **software templates** automate workflows, ensuring project consistency and speeding up new project creation, thereby boosting **developer empowerment** and autonomy.

However, I identify several limitations. **Backstage** can be complex to set up and maintain, requiring a **dedicated team** for deployment, upgrades, and customization. While it offers useful plugins like CI/CD Statistics, gathering specific **DPE metrics** (such as cycle speed or feedback loop correctness) often necessitates developing custom backend plugins, as the current plugin ecosystem lacks dedicated DPE-focused tools. Moreover, **Backstage** does not directly address **performance optimization** of processes and pipelines, a crucial aspect of **DPE**. Therefore, achieving significant ROI with Backstage in a DPE context demands a substantial resource commitment and a clear adoption strategy.

## Key Concepts

*   **Developer Productivity Engineering (DPE):** A discipline focused on improving developer productivity and experience through analysis, task simplification, standardization, and promoting collaboration. It addresses challenges in complex tech stacks by optimizing activities from coding and building to continuous integration and testing.
*   **Backstage:** A platform for building internal developer portals, offering a central place to catalog software ecosystems and integrate various tools via plugins.
*   **Software Catalog:** A centralized catalog of software components and services within an organization, improving information retrieval.
*   **Software Templates:** Automated templates that streamline workflows, help developers save time, and maintain project consistency by bootstrapping code repositories or provisioning infrastructure.
*   **Information Retrieval:** A key goal of DPE, improved by Backstage's ability to centralize documentation and tool integrations.
*   **Dedicated Team:** A necessary resource for successful Backstage implementation, responsible for deployment, maintenance, upgrades, and customization.
*   **Performance Optimization:** A core element of DPE focused on improving the speed and efficiency of development processes and pipelines, which Backstage currently does not directly address.

## What Is Developer Productivity Engineering?

DPE draws inspiration from lean manufacturing methods and is closely aligned with Agile and DevOps. It’s a relatively recent development in the evolution of software engineering best practices. DPE has emerged as a catalyst for shortening development task durations through analysis, task simplification, and standardization.

DPE as a practice was initiated by Netflix in 2016 and then adopted by Microsoft, Splunk, and Gradle. DPE addresses the technology challenges that arise in fast growing companies. As the amount of code, the number of code repositories and dependencies, and the complexity of the tech stack increase, developers tend to spend less time in a productive and creative state. Instead, they become increasingly frustrated and delayed by unproductive tasks like waiting for the build process, responding to failing pipelines, debugging unclear errors, and resolving dependency issues.

The scope of DPE encompasses activities ranging from coding and building to continuous integration (CI) and testing. This is what sets it apart from other trends, such as DevOps, DevExp, and platform engineering. While these other approaches aim to provide a more comprehensive solution for delivering fast and reliable software, DPE focuses on the specific needs and challenges in the early phase of software development. It recognizes that developers should primarily invest their time in designing and writing software.

![DPE Scope](https://i.imgur.com/6rXGbGu.png)

### The Key Goals of Developer Productivity Engineering

In short, DPE aims to improve collaboration and delivery speed in software development. The key to a successful DPE initiative is identifying significant opportunities with a good return on investment (ROI) and ensuring that the adoption and cost of tools result in a proportional improvement in developers’ experience and productivity.

DPE advocates for a data-driven decision process and measures team productivity as the combination of collaborative effectiveness and the quality of creative flow. Both concepts are very broad (and possibly too abstract) and can only be comprehended using proxy metrics such as build speed, build and test reliability, debug time, and dependency issues. Thus, a DPE initiative focuses on tracking important metrics and monitoring.

There are currently no standard metrics for DPE, but four elements stand out as key pillars for optimizing software development processes from which metrics can be derived:

*   Degree of automation: What is the proportion of tasks that are automated? What actions are developers required to perform manually?
*   Speed of cycles (lead times): How much time are developers spending at each process stage (design, code, build, test, and so on)?
*   Correctness of the feedback loop: Are errors clear and accurate (no false positives or false negatives) and discovered as early as possible so they don’t impact the speed of the cycle?
*   Retrieval of information: How much time do developers spend to obtain information? How do they usually proceed (documentation, messaging, meetings, and so on)?

Then, based on these metrics, DPE aims to contribute positively to the ROI (in terms of developer time and cost) for software development improvement efforts. It achieves these improvements through a variety of methods, including the following:

*   Efficient tooling and infrastructure
*   Automation and CI/CD
*   Performance optimization in the build process
*   Effective collaboration and communication
*   Developer empowerment and reliable support

![DPE Methods](https://i.imgur.com/xAwRAqu.png)

## Backstage as Part of Developer Productivity Engineering

Now that you have a solid understanding of what DPE is and the metrics you need to measure, let’s look at how well Backstage and DPE can work together.

Does Backstage offer an effective way of achieving key DPE objectives? Can we use Backstage to improve developers’ quality of creative flow and collaborative effectiveness?

### How Can Backstage Contribute to DPE Initiatives?

Companies should provide developers with resources, documentation, and hands-on guidance to help them navigate through the system and troubleshoot issues more efficiently. This is one of the key offerings of Backstage, which provides a single pane of glass, including a software catalog, documentation, and integration with other tools via plugins. In terms of DPE, this contributes to the key goal of optimal information retrieval.

Image courtesy of Spotify
![Backstage Overview](https://i.imgur.com/LJEsNaE.png)

Backstage is designed to be fully customizable and extensible. This means that each Backstage instance can be unique and tailored to meet your company’s specific needs. You can find several plugins that help centralize the information in Backstage. For instance:

*   The API Documentation and GraphiQL plugins provide a central place for API documentation, making it easy to work with APIs written by other developers.
*   Most popular CI/CD tools have dedicated plugins, such as GitLab, GitHub Actions, and CircleCI. These plugins can help developers navigate through the state of their application delivery process with back and forth between multiple UIs.

Another core feature of Backstage that can greatly contribute to DPE initiatives is software templates. Software templates automate workflows, helping developers save time and maintain project consistency by bootstrapping code repositories or provisioning infrastructure. Starting a new project can be time-consuming, and your company will greatly benefit from having all projects follow the same structure. Additionally, developers can be immediately productive if they change projects.

Backstage improves the developer experience through the software catalog’s ability to display all relevant information in a single user interface and software templates that enhance automation capabilities. This is a great tool for DPE that empowers developers and makes them more autonomous in their day-to-day tasks.

### What Are the Limitations of Backstage DPE Initiatives?

Backstage can be a valuable tool for centralizing and managing various aspects of DPE monitoring and tracking metrics for your services and application delivery. For example, the CI/CD Statistics plugin is a very useful tool. However, if you want to use this plugin, you have to write your own backend plugin to obtain the metrics.

Furthermore, Backstage can be complex, especially for companies and teams that are new to it. You only truly gain the benefits of Backstage once you have a dedicated team for it, as Backstage needs to be deployed in your own infrastructure, and you also need to perform maintenance, upgrades, and customization. You also need to implement a process to help with its adoption, as discussed in the previous installment of this series.

Backstage is the perfect tool to build an internal developer platform, but the plugin ecosystem is still in development. Currently, there are no specific plugins that truly focus on DPE initiatives and provide insight into the speed of the cycle and the correctness of the feedback loop. In short, you won’t be able to use Backstage to pilot your DPE initiatives and will have to rely on other tools for metrics.

Backstage only covers a small part of a DPE initiative. For instance, it won’t help with performance optimization of processes and pipelines, which is a core element of DPE. Therefore, while Backstage is a really good product to improve the developer experience, if you don’t have the bandwidth to allocate to this initiative, you might want to explore other opportunities with better ROI.

That being said, a well-planned Backstage initiative can easily overcome these issues. But, you will absolutely need to form a dedicated team with the skills to operate and maintain Backstage as well as write custom plugins. Then, ensure you have a clear plan on how you will encourage developers to adopt Backstage by making it a tool they understand and enjoy working with. If you don’t have the resources to fully commit to Backstage in these ways it will be very difficult to succeed.

## Conclusion

Developer productivity engineering (DPE) seeks to empower developers by simplifying workflows and enhancing collaboration so that they can spend most of their time designing and writing software. Backstage is a powerful tool for anyone looking to build a successful DPE initiative. By offering a centralized platform for cataloging your software ecosystem and providing seamless integration with your tech stack, Backstage demonstrates the potential to help your DPE initiatives. However, Backstage itself requires you to dedicate resources to add the features you need, either by installing existing plugins or creating your own.

You’ve now reached the end of the “Succeeding with Backstage” series. If you’ve followed along since the first series focused on evaluating Backstage, you should have all the necessary knowledge to implement Backstage and ensure its successful continued adoption. If you’ve only joined for this series, it might be worth checking out Evaluating Backstage and Implementing Backstage for a more in-depth look at the platform and its inner workings.

A final note: remember that one of Backstage’s greatest strengths lies in its community. Now that you’re a Backstage pro, it might be worth considering how you can contribute to the community and cultivate even further improvements in the platform.