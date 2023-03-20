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

- For building applications
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
* FreeBSD 4.0 introduced Jails in 2000
* Linux Containers (LXC) shipped in 2008

---
# Then Docker came along...

* And **nailed it** with ease of use
* Everyone can *use containers*
* Everyone can *make containers*
* Everyone can *share containers*
* Even on Mac and Windows

---
# Docker on Mac and Windows

* Containers run in a VM managed by Docker
* Performance is not great, but adequate

---
# Native Windows Containers

* A closed ecosystem
* Late to the party
* Kind of supported by Docker Desktop
* Not covered in this talk

---
# Docker Desktop

- Recommended on MacOS and Windows
- Free for personal use and educational purposes
- Requires a subscription if you use it for business at Progress

---
# Alternatives to Docker

- Podman is a drop-in replacement for Docker Engine (runtime and CLI)
- Podman is not a complete replacement for Docker Desktop

--
https://podman.io/getting-started/installation

---
# Let's Build a Container Image

- Goal: Build and run a Node.JS application

https://github.com/tsvetomir/presentations/tree/main/intro-to-docker/node-app

---
# Anatomy of a Dockerfile

* Use Node.js 18 image
    ```Dockerfile
    FROM node:18-slim
    ```
* Copy the application source in `/app`
    ```Dockerfile
    RUN mkdir /app
    COPY . /app
    ```
* Install dependencies and build app
    ```Dockerfile
    WORKDIR /app
    RUN npm ci && npm run build
    ```
* Configure and run app
    ```Dockerfile
    ENV APP_PORT=3000
    CMD ["node", "index.js"]
    ```

https://docs.docker.com/engine/reference/builder/

---
# Build the Image

`docker build -t hello-docker .`

==Video==

---
# Layers

- Each command creates a file system layer.
- Layers are read-only snapshots.
- Layers reduce build times and allow sharing.
- Layers can be squashed into one.

`docker history hello-docker`

---
# Creating the Container

- Syntax
- Volumes
- Networking
- One-time runs
  `docker run --rm --init -it -p 3000:3000 hello-docker`

---
# .NET Core container

---
# VSCode Development Containers

---
# Tips & Tricks

  - Use Debian Stable as base (v11 Bullseye as of today)
  - Prefer official base images for common software stacks
  - Don't worry too much about image size
  -

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
