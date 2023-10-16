# Emulating linux/amd64 dotnet images on a Macbook Pro

This repository contains a simple dotnet project and Dockerfile. It's meant to demonstrate that commands like `dotnet restore` & `dotnet build` fail (i.e. they simply hang) when attempting to emulate `linux/amd64` on a `arm64` architecture (i.e. Macs).

Why want to emulate `linux/amd64` on a Mac? In my case, it's because I want to run dotnet isolated Azure Functions on my Mac. Azure Functions are `x64/amd64` only and its official [docker images](https://hub.docker.com/_/microsoft-azure-functions-dotnet-isolated) only support `amd64` architecture.

You can experiencing this by running the following command on a Mac:

```bash
# this process will stall when running `dotnet restore`
docker build --platform linux/amd64 .
```