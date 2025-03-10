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

This article guides **you** through creating a personalized sprites library for **PlantUML**, enhancing diagrams with custom visuals. **You** will learn how to convert images to PlantUML sprites and use the generated sprites in **your** PlantUML diagrams. Finally, I demonstrate how to create a PlantUML library by adding styling definitions to elements using Macros, and the use of `!define` and `!includeurl` to create a less verbose and intuitive diagram definition.

As a bonus, I detailed setting up a **Devcontainer** environment, simplifying the setup of all tooling requirements.

## Key Concepts

*   **PlantUML Sprites**: Graphic elements for styling PlantUML components.
*   **PlantUML Macros**: Functions for defining configuration sets in PlantUML.
*   **PlantUML Libraries**: Collection of sprites that can be reused to create diagrams with custom style

## References

*   [PlantUML sprite](https://plantuml.com/sprite)
*   [PlantUML Hitchhikers Guide](https://crashedmind.github.io/PlantUMLHitchhikersGuide/PlantUMLSpriteLibraries/plantuml_sprites.html)
*   [Stdlib Overview](https://crashedmind.github.io/PlantUMLHitchhikersGuide/Stdlib/StdLibOverview.html)