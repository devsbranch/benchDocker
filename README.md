# :whale: ERPNext on Docker

![push-docker](https://github.com/pipech/erpnext-docker-debian/actions/workflows/push-docker.yml/badge.svg)

**This repository prioritizes stability, repeatability and simplicity, and is not designed as the ideal approach for a production environment.**

## Problem

- ERPNext development progresses rapidly, with new updates released daily. Some of these updates may contain bugs.

- ERPNext depends on numerous external components. During installation, these dependencies can sometimes cause issues, and without a pre-built image, it might be impossible to build or use older versions.

## Solution

By using Docker, we can pre-build images and push them to [Docker hub](https://hub.docker.com/r/pipech/erpnext-docker-debian/). This ensures that usable images are always available, and you can select the version that best suits your needs.

## Usage

### Trial Setup

This setup is designed for users who want to explore the system and is not suitable for production use.

```sh
./build.sh
```

The site should be available at http://localhost:80 after 1-2 minutes.

### Development Setup

This is a self-contained development setup. Developers can fully isolate their environment. The setup utilizes Visual Studio Code and its Dev Containers feature.

1. Open Visual Studio Code.
1. Open the Command Palette (View > Command Palette or Ctrl + Shift + P).
1. Type: `Open Folder in Container`.
1. Select the `setup_development` folder.

### Production Setup

For best practices in a production environment, [Official Frappe Docker](https://github.com/frappe/frappe_docker).

## User & Password

```
ERPNext | U: administrator    P: 12345
MariaDB | U: root             P: 12345
```

## Build Process

For detailed information on the build process, please review the [`Dockerfile`](./Dockerfile) and [`.github/workflows/push-docker.yml`](./.github/workflows/push-docker.yml).
