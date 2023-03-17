---
theme: default
_class: lead
paginate: true
marp: true
---

# **Intro to Docker**

&nbsp;

---
# **Intro to ~~Docker~~ Containers**

As made popular by Docker

---
# A container...

* *Is not* a Virtual Machine
* *Does not* have a complete Operating System

---
# A container...

* *Is* a Virtual Environment
* *Is* running on the host Operating System

---
# Containers are Great

- For shipping applications
- For development environments

---
# Containers Suck

- For security isolation
- But can be made reasonably secure

---
# A history note

* It didn't all start with Docker
* It didn't even start in this century :)
* Unix has had `chroot` since Forever 🦖
* FreeBSD 4.0 introduced Jails in Year 2K
* Linux Containers (LXC) shipped in 2008

---
# Then Docker came along...

* And **nailed it** with ease of use
* Everyone can *use containers*
* Everyone can *make containers*
* Everyone can *share containers*

---
# Mac and Windows

* Tough luck, no containers for you folks!
* 💡 But wait, we can run Linux in a VM!
* And that's exactly what Docker does
* With a ton of glue and duct tape

---
# Docker Desktop

- Recommended on MacOS and Windows.
- Free for personal use and educational purposes.
- Requires a subscription if you use it for business at Progress.

---
# Alternatives to Docker

- Podman is a drop-in replacement for Docker
- Podman is not a complete replacement for Docker Desktop

---
# Let's Build a Container

- Goal: Development Environment for Node.JS and .NET Core
- Sample project at ...

---
# The DOCKERFILE

- Base Image
- Dependencies
- Layers

---
# Executing the Container

- Syntax

---
# Deploying Containers

- Containers Images and Runtimes are open standards (OCI)
- Docker is not required to run containers
- Demo with Azure Container Apps?

---
# Containers for CI

- Teaser (Act)
- More in the Next Episode

---
# Conclusions

* Use Podman as a drop-in replacement for Docker.
* Deploy your containers on Linux for maximum performance.
* Don't rely just on containers for security.



---

You’ll learn how to set up Docker Desktop and create development environments for Node.js and .NET Core applications.
Finally, we’ll put those skills to use in order to troubleshoot a failing build in GitHub Actions.
