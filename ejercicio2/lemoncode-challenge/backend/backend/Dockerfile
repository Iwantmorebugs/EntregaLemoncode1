FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS initial
WORKDIR /out
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src
COPY . /src

RUN dotnet restore "backend.csproj"
RUN dotnet build "backend.csproj" -c Release -o /out

FROM build AS publish
RUN dotnet publish "backend.csproj" -c Release -o /out

FROM initial
WORKDIR /out
COPY --from=build /out .
ENTRYPOINT [ "dotnet","backend.dll" ]
