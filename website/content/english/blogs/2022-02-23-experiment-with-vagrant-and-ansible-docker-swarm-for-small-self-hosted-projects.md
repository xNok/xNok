---
title: "Experiment with Vagrant and Ansible — Docker Swarm for Small Self-hosted Projects"
date: 2022-02-23
slug: experiment-with-vagrant-and-ansible-docker-swarm-for-small-self-hosted-projects
description: "In this article, I'll walk you through setting up a multi-VM **Docker Swarm** cluster using **Vagrant** and **Ansible**. This is a great way to create a disposable local test environment for your projects, and it's a big step up from experimenting with Docker Swarm on a single node."
tags:
- Docker
- Docker Swarm
- Vagrant
- Ansible
- Self-hosting
---

[Original Article](https://faun.pub/experimenting-on-docker-swarm-with-vagrant-and-ansible-bcc2c79ba7c4)

In this article, I'll walk you through setting up a multi-VM **Docker Swarm** cluster using **Vagrant** and **Ansible**. This is a great way to create a disposable local test environment for your projects, and it's a big step up from experimenting with Docker Swarm on a single node.

I'll guide you through the process of provisioning multiple VMs with Vagrant, then using Ansible to install Docker on each machine, before creating a Docker Swarm cluster with all our nodes. I'll also show you how to set up Docker Swarm with Ansible, including creating roles for the controller, manager, and nodes. By the end of this tutorial, you'll have a working Docker Swarm cluster, and you'll be able to test it by running `docker node ls` on the controller node.

This tutorial is part of a series where I document the bare minimum for a small self-hosted side project. You can find more information and the code for this project in my [GitHub repository](https://github.com/xNok/infra-bootstrap-tools).

I hope you find this tutorial helpful. If you have any questions, feel free to leave a comment on the original article.
