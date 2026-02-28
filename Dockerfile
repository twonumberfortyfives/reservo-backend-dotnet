FROM mcr.microsoft.com/dotnet/sdk:10.0

WORKDIR /reservo-backend-dotnet

COPY *.csproj ./
RUN dotnet restore

COPY . .

EXPOSE 8000

CMD ["dotnet", "watch", "run", "--urls=http://0.0.0.0:8000"]