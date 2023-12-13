FROM mcr.microsoft.com/dotnet/sdk:8.0

# needed for dotnet to work in a container in linux
ENV DOTNET_EnableWriteXorExecute=0
ENV WORKDIR="/app"

COPY . ${WORKDIR}

WORKDIR  ${WORKDIR}

RUN dotnet restore --verbosity diag