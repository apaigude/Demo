FROM mcr.microsoft.com/dotnet/aspnet:3.1
COPY Devops/bin/Release/netcoreapp3.1/publish /app
WORKDIR /app
CMD ["dotnet", "Devops.dll"]
