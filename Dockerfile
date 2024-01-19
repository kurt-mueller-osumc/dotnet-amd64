FROM mcr.microsoft.com/dotnet/sdk:8.0

# needed for dotnet to work in a container in linux
# uncomment this line to get `dotnet restore` to complete
# ENV DOTNET_EnableWriteXorExecute=0
ENV WORKDIR="/app"

COPY . ${WORKDIR}

WORKDIR  ${WORKDIR}

RUN dotnet restore --verbosity diag
