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

- *Is not* a Virtual Machine
- *Does not* have a complete Operating System

---
# A container...

- *Is* a Virtual Environment
- *Is* running on the host Operating System

---
# Containers are Great

- For building applications
- For shipping applications
- For development environments

---
# Containers are Not So Great

- For security isolation

---
# A history note

- It didn't all start with Docker
- It didn't even start in this century :)
- Unix has had `chroot` since Forever 🦖
- FreeBSD introduced Jails in 2000
- Linux Containers (LXC) shipped in 2008

---
# Then Docker came along...

- And **nailed it** with ease of use
- Everyone can *use containers*
- Everyone can *make containers*
- Everyone can *share containers*
- Even on Mac and Windows

---
# Docker on Mac and Windows

- Linux containers run in a VM managed by Docker
- Performance is not great, but adequate

---
# Native Windows Containers

- A closed ecosystem – Windows Containers do not run on Linux
- Late to the party
- Supported by Docker Desktop (kind of)
- Not covered in this talk

---
# Docker Desktop

- Recommended on Mac and Windows
- Free for personal use and educational purposes
- Requires a subscription if you use it for business at Progress

---
# Alternatives to Docker

- Podman is a drop-in replacement for Docker Engine (runtime and CLI)
- Podman is not a complete replacement for Docker Desktop

--
https://podman.io/getting-started/installation

---
# Glossary

- Dockerfile describe the steps to build a container
- Building the Dockerfile produces an image
- Images are immutable
- Images can be shared publicly or privately
- You can run multiple instances from the same image

---
# Let's Build a Container Image

- Demo: Build and run a Node.JS application

==Video of the app==

https://github.com/tsvetomir/presentations/tree/main/intro-to-docker/node-app

---
# Anatomy of a Dockerfile

- Use official Node.js 18 image as base
    ```Dockerfile
    FROM node:18-slim
    ```
- Copy the application source in `/app`
    ```Dockerfile
    RUN mkdir /app
    COPY . /app
    ```
- Install dependencies
    ```Dockerfile
    WORKDIR /app
    RUN npm ci && npm cache clean -f
    ```
- Configure and run app
    ```Dockerfile
    ENV APP_PORT=3000
    CMD ["node", "index.js"]
    ```

https://docs.docker.com/engine/reference/builder/
https://docs.docker.com/develop/develop-images/dockerfile_best-practices

---
# Build the Image

- Choose a name and run:
  `docker build -t node-app .`
- Image is now stored on your computer
- Can be published to a registry

![bg right fit](./screenshots/01-build.png)
--
https://docs.docker.com/engine/reference/commandline/build/

---
# Layers

- Each `COMMAND` creates a layer
- A layer is a snapshot of the file system
- Layers are cached and shared between builds
- Extra layers can increase image size
  `RUN npm ci && npm cache clean -f`
- To see all image layers, run:
  `docker history node-app`

![bg right fit](./screenshots/02-history.png)

---
# Container lifecycle

- Create a container instance
  `docker create` or `docker run`
- Start / Stop a container
  `docker start` / `docker stop`
- Pause / Unpause a container
  `docker pause` / `docker unpause`
- Delete a container
  `docker rm`
- List containers
  `docker ps`

![bg right fit](./screenshots/03-ps.png)

---
# Running the Container

- Run and dispose
  `docker run --rm --init -it -p 3000:3000 node-app`
- Run and keep
  `docker run -d --init -p 3000:3000 --name node-app-1 node-app`

--
https://docs.docker.com/engine/reference/commandline/run/

---
# .NET Core containers

- Demo: .NET Core App

==Dockerfile Screenshot==

---
# Multi-stage builds

==Anatomy of a Dockerfile==

---
# Accessing files outside the container

- Bind mounts
- Demo: Look, no Dockerfile!
  `docker run --rm -it -v $(pwd):/app/ -w /app mcr.microsoft.com/dotnet/sdk:7.0 /bin/bash`

--
https://github.com/dotnet/dotnet-docker/blob/main/samples/run-in-sdk-container.md

---
# Tips & Tricks for Images

  - Prefer official images for common software stacks
  - Otherwise, use Debian Linux as base
  - Don't worry too much about image size

--
https://github.com/tsvetomir/presentations/tree/main/intro-to-docker/node-app-debian

---
# Bonus: Debug a build

- Demo: Teaser (Act)

---
# Poll - Next Topics

- VSCode Development Containers
- Containers for CI
- Deploying Container Apps
- Windows Containers



--

.NET App - ASP.NET
Troubleshooting a build demo
