FROM mcr.microsoft.com/dotnet/core/sdk
COPY Devops/bin/Release/netcoreapp3.1/publish /app
WORKDIR /app
CMD ["dotnet", "Devops.dll"]
