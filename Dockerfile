FROM mcr.microsoft.com/dotnet/sdk:8.0

ENV WORKDIR="/app"

COPY . ${WORKDIR}

WORKDIR  ${WORKDIR}

RUN dotnet restore