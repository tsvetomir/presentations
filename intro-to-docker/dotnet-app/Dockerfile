# Set up temporary build environment
# Uses official .NET SDK 7.0 image
# https://hub.docker.com/_/microsoft-dotnet-sdk
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env

# Copy everything
COPY . /App

# Build and publish
WORKDIR /App
RUN dotnet restore
RUN dotnet publish -c Release -o out

# ---------------------------------------
# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /App

# Copy and run app
COPY --from=build-env ./App/out .
ENTRYPOINT ["./DotNet.Docker"]
