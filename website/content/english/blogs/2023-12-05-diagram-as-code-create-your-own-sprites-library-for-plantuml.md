---
title: "Diagram as Code: Create Your Own Sprites library for PlantUML"
date: 2023-12-05
draft: false
categories: ["Diagrams"]
tags: ["PlantUML"]
images:
- https://miro.medium.com/v2/resize:fit:1200/1*ioPsh4XYhWZV2GsoZ0gd-Q.png
---

> Original Article : [Read on Medium](https://medium.com/itnext/diagram-as-code-create-your-own-sprites-library-for-plantuml-f8cffb83b038)

## Summary

This article guides **you** on creating **your** own **PlantUML sprites library** to enhance diagrams with custom visuals. **I** explain how to **set up your environment** using a **Devcontainer**, and the **process of generating sprites** from images by resizing and converting them to grayscale with tools like Mogrify and the PlantUML CLI's `create_sprites.sh` script. You will learn to **integrate these sprites** into your diagrams using `!includeurl` and how to **build comprehensive libraries** with **PlantUML Macros** for a less verbose syntax. **I** also touch upon a more **advanced, manual approach** for creating highly customized components. This ultimately provides **you** with the power to create more visually engaging and personalized PlantUML diagrams.

## Key Concepts

*   **PlantUML Sprites**: Graphic elements for styling PlantUML components.
*   **PlantUML Macros**: Functions for defining configuration sets in PlantUML.
*   **PlantUML Libraries**: Collection of sprites that can be reused to create diagrams with custom style

## References

*   [PlantUML sprite](https://plantuml.com/sprite)
*   [PlantUML Hitchhikers Guide](https://crashedmind.github.io/PlantUMLHitchhikersGuide/PlantUMLSpriteLibraries/plantuml_sprites.html)
*   [Stdlib Overview](https://crashedmind.github.io/PlantUMLHitchhikersGuide/Stdlib/StdLibOverview.html)
