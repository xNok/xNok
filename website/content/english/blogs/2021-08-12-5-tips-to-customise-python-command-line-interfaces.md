---
title: "5 Tips to Customise Python Command-Line Interfaces"
date: 2021-08-12
categories: ["Python", "CLI"]
tags: ["Python", "CLI"]
images:
  - https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/66ade2d7-f469-4b17-85b8-aadb59a64741/0xv6SdFc-C3wIBUXo?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466Z5NA2C3K%2F20250724%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250724T230917Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEA4aCXVzLXdlc3QtMiJGMEQCIHGvcHlbMImY22%2B06QQlrvMRdEJ2401rBOJtv%2FPf2R4HAiBytYRaFR1kZT3Ii%2B5CBRYEOSeomFCEIdjNh9O4Ky9Jkir%2FAwg3EAAaDDYzNzQyMzE4MzgwNSIMgOHcgQ5NWpHsbVQfKtwDVIhSMOEPg4zJCuzZrd22cAzaNNlzaqulvRdfPIUO%2F9jafSEaM2Fkys1ExJCN8IHvI7VT65U7ftiUnj%2B4dRiE9rXrpPXRrgOyndVvPopIYNpJWTfKMzf03DgvR0sJCr8AOodYXHP%2BKmVYcEwkiHtVjlgUuhkaiUj0pORxZ%2Bbu%2F05e7fR%2FT9qE34c0G5hsoQ2ZZdMJtbRTqf2PNDrq4nZuECq0sGD78IMDBB%2B927%2B7AUCoCv5QBzc4SXsNYdum5vW4lKfReCibeSPvH81IZp2Nr0u%2FiaBNW4cVRt3YudLBNuZ%2F4snq4GOT9510F9l6pZpRH77TiyGeiZ2v9r1C%2F2WXFpBeJ70cPOBbwFT%2B14kWakT2nFqCamWoQROx07fJYsy8InV7n4%2FKasSzYJSTx66mLHGYAc9RotrFnWmMuchb1sz7MYN%2BGADcIa%2F2XVCWVu7pw1byqz02nWD5BPOAzG3GUUbfEBqKP2RvT8DMSl5SV5wYGNZjsgdqOooMQfiNLhcTGkCfCzHKavBx2ErmQ4knXDDMplYXfiI1JH4fUho%2BgqGIEJIlTdVzuKLS%2BDsz6lZIRclbrsFbqPI9L%2FJZIlbNPkvr007dsLhteIbY16uLNFDBNlzUcuJOafbvXlcwu9iKxAY6pgHzhCP0Zc5dOWAO0bA1MMa7RtcCeXfkRfvO5lGNOeBnZl9W6bkDMp0QjjFj1SUtkEnwqz2U9ti6bxixDbzmVI2Zv7%2FQIkeLmhGVm3uaVtGmv2dbub8EJ83o2a06zkIop6Sd0dUPNBy8pZIR3DG4zsW%2B6oOeluW4LfmlY96uhq%2BvD%2Fz8THHrT3Rd7NZIJABB8MUrbcQ%2B2zN1QAGEUntCQ9qag3lTxqBt&X-Amz-Signature=f81ab6b324173fea3e0c41d3c78e6f93a6e02d64fa3c7981dd49f7d9a752e66b&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject
---

[Original Article](https://betterprogramming.pub/5-tips-to-customise-python-command-line-interfaces-691b0b39f610)

## Summary

This article outlines **five essential tips for enhancing your Python command-line interfaces (CLIs)**, transforming basic automation scripts into robust, user-friendly tools. I aim to share the best practices I've adopted over time to streamline my development workflow and improve the usability of the tools I create for you.

**1. Choose the Right Tool for Argument Parsing:**
The first crucial step in leveling up your Python scripts is to implement effective argument parsing. While Python's native `argparse` can be verbose, I've found `**docopt**` to be a superior alternative. It allows you to define your CLI's interface simply by writing its documentation string, making argument parsing magically handled with minimal code, focusing on clarity and ease of use.

**2. Implement a Dry Run:**
For automation CLIs, it's often vital to preview actions without causing actual changes. Implementing a **dry run** functionality is key. The `**dryable**` Python package simplifies this immensely through decorators. By setting a `--dry-run` flag, you can activate `dryable` to skip impactful functions, providing a safe way to test and verify your CLI's behavior before execution.

**3. Creating a .rc File:**
As your CLI grows in complexity, repeatedly typing long commands can become tedious. Adopting `.rc` files—standard configuration files like `.bashrc` or `.vimrc`—can solve this. I explain how to use `docopt` to easily save and load configurations from an `.rc` file, allowing you to define default arguments and streamline commands, saving you time and effort.

**4. Installing the Command Line:**
To make your CLI shareable and easily accessible, installing it as a system-wide command is essential. This allows you to invoke your tool directly from any terminal. I detail how to configure `**setup.py**` with `**entry_points**` to enable installation via `pip`. I also provide a tip for installing in "editable mode" (`pip install -e .`), which is invaluable during development for instantly reflecting code changes.

**5. Making the Command Line Extendable:**
For mature CLIs, especially open-source projects, a **plugin system** can foster collaboration and keep the core codebase lean. I learned a trick that leverages Python's `**entry_points**` to achieve this. By defining specific entry points, other developers can create and install their own plugins, extending your CLI's functionality without altering its core, promoting a more versatile and collaborative ecosystem.

These five tips, from efficient argument parsing to creating an extendable plugin system, are designed to significantly improve your Python CLI development experience and the quality of the tools you build.
