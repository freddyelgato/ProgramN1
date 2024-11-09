FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 8080

ENV ASPNETCORE_URLS=http://+:8080

USER app
FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG configuration=Release
WORKDIR /src
COPY ["PaginaWeb_C#/PaginaWeb_C#.csproj", "PaginaWeb_C#/"]
RUN dotnet restore "PaginaWeb_C#/PaginaWeb_C#.csproj"
COPY . .
WORKDIR "/src/PaginaWeb_C#"
RUN dotnet build "PaginaWeb_C#.csproj" -c $configuration -o /app/build

FROM build AS publish
ARG configuration=Release
RUN dotnet publish "PaginaWeb_C#.csproj" -c $configuration -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "PaginaWeb_C#.dll"]