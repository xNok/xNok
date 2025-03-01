--- 
title: "Diagram as Code: Create Your Own Sprites library for PlantUML"
date: 2023-12-05
draft: false
categories: ["Diagram as Code"]
tags: ["PlantUML", "Sprites", "Diagrams"]
images:
- https://miro.medium.com/v2/resize:fit:1200/1*ioPsh4XYhWZV2GsoZ0gd-Q.png
---

> Original Article : [Read on Medium](https://medium.com/itnext/diagram-as-code-create-your-own-sprites-library-for-plantuml-f8cffb83b038)

## Summary

This article guides **you** through creating a personalized sprites library for **PlantUML**, enhancing diagrams with custom visuals. It details setting up a **Devcontainer** environment, which simplifies the setup of all tooling requirements. Then the blog post goes through creating sprites by using the command line, converting images to PlantUML sprites, and using the generated sprites in your PlantUML diagrams. Finally, **I** demonstrate how to create a PlantUML library by adding styling definitions to elements using Macros, and the use of `!define` and `!includeurl` to create a less verbose and intutive diagram.

## Key Concepts

*   **Sprites:** Graphic elements for styling PlantUML components.
*   **Devcontainer:** A VSCode tool that works inside a container to guarantee the same environment.
*   **Macros:** Functions for defining configuration sets in PlantUML.
*   **Libraries**: Collection of sprites that can be reused to create diagrams with custom style
