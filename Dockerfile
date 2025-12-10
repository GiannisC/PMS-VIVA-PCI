# Linux ASP.NET Core runtime
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS base
WORKDIR /app
EXPOSE 8080

# Copy publish folder
COPY ./publish .

# Environment variable
ENV ASPNETCORE_ENVIRONMENT=Production

ENTRYPOINT ["dotnet", "ReservationTokenProxy.dll"]
