---
title: "Introduction to App Manifest: A Long-Awaited Feature by Slack App Developers is Now in Beta"
date: 2023-06-13
draft: false
categories: ["Slack"]
tags: ["App Manifest", "Slack App"]
images:
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/720c3f3d-2077-4dd9-bf33-d8fda1df83cd/0YIpA9ty1rtafsCqa?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466WPQOVCTM%2F20250303%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250303T201220Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEKT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMiJHMEUCIQDXFfqfoHAPww4HR4FhGmDnZebZL0Q29pUVSoTDGS01VwIgMBOOnOuVvrzbkP1a4hllO0ev0lbQt5zQjP1U%2FXAeFUwqiAQI3f%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw2Mzc0MjMxODM4MDUiDAfeM630bDGFMb4OiyrcA5VeGrN1UEjpdesrUcTJwH3MXFrPZIu2IqA7uaR%2BFykG4VXHvc2MZuP%2BLCZ2TMfDAgO3SUqVExNWsFXKX7mqdF86wtnGFv8LIYPu1TT2%2FH1VDqytm%2F7ARzpPV9BE1JpIbI%2FBLZD%2B%2FYEh0yVaFnkiTatGRJy7crlCY8TU1rEbygSCGI2F5K5USLQxMCJ3AmpMvyM5A%2BHGS8KPFDePw8CAi4l%2BaXJP3pK3mYYVhUx5LU1Vaa0fqNOq%2BNExts9lcm%2F6qcSrPi0Uwz25zoNS1L8%2BYJPfuvUAZmoo4p3F0CeoDSevvaWt5ge22Yx%2BBZB5OZmnfVjFIucmli4lFtSCIfNwFfqhfeUeTLli1dX1pTjt728e6GGpm8N0wmWjF5EyK4C%2F8QnavlqTlZuH7415Stm2kJfbeAtUQKO5X%2BxoGjaGdZvnfq7EFG0CC%2FeUywzStxKMH%2BjmM17tGj%2FokRZaDxhSu3rRZHbn6K02bVis4Kf9pN29WxtEi%2F7o96ABREK0MKaZH2nQFIsrEvHpgA4yoBiYnmNInFiuZR4iucAmFYWkcFfqo3foy%2FYGNYWPvcIGDee5ycZzS1EGHjaCH9c1FhccwLFfyoIPM%2Fxy4Mgw8TzPNHIGQX1a6qFFK%2BBizXmEMPGYmL4GOqUBBYtTpBGVptNCYzlnqPPfHjaPGMLpFVlr%2FLswkQbln%2FwZfAW4h6bPm7WlqIjkGqLBdfOCKdilcho7F2MRwtpbsDfrhpTKembX2TZi7FqT8saBpDoJI%2B0XUsgILFcCVlRejFYvx3eEPmNV9gehpCIZeo%2BafIZYY4d%2FsQnynrl%2Fdr%2BkhP%2FrrtqIzMb12qW%2FoAyMBZa0c6OANEdrAlH4nKeMQV62jfef&X-Amz-Signature=de99e917e66495390be491d8fdc20ef47e5cbe39a0082285c2659edc37453be0&X-Amz-SignedHeaders=host&x-id=GetObject
---

> [Original Article](https://levelup.gitconnected.com/introduction-to-app-manifest-a-long-awaited-feature-by-slack-app-developers-is-now-in-beta-fe35e8f914ee)

## Summary

This article introduces the **App Manifest**, a new feature by Slack that allows developers to configure their Slack applications using a configuration file. You can think of it as a way to define your application as code. The article emphasizes that it was difficult to navigate through Slack's administration UI and documentation, and the new feature acts as a glossary of all the Slack App features. The article covers key aspects of the App Manifest, including the display information, OAuth config, settings, and various features such as App Home, Slash Commands, Shortcuts, Workflow Steps, and Unfurl Domains.

Key concepts covered in the article:

*   **Display Information**: General information about your application, reflected in the App Directory and the About section.
*   **OAuth Config**: Scopes required for using Slack Web API.
*   **Settings**: Configuration for event-driven aspects of Slack, like the Event API and Interactive Messages.
*   **App Home**: A customizable space where users interact with your applications.
*   **Slash Commands**: Commands that users can type in Slack to interact with your app.
*   **Shortcuts**: User-friendly ways to interact with your application, which can be global or message-specific.
*   **Workflow Steps**: Steps that users can add to their workflows to extend the capabilities of the Workflow Builder.
*   **Unfurl Domains**: Customize messages and options related to your application by handling links from your domain.

The App Manifest helps to create quickly a new app or duplicate your app configuration.
