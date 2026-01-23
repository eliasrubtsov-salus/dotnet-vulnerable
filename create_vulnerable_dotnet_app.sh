#!/bin/bash
# create_vulnerable_dotnet_app.sh

# Create project directory
mkdir -p VulnerableNetApp
cd VulnerableNetApp

# Create a .NET 6 web API project
dotnet new webapi -n VulnerableApi --framework net6.0

cd VulnerableApi

# Remove the default WeatherForecast files
rm WeatherForecast.cs
rm Controllers/WeatherForecastController.cs

# Add vulnerable packages
dotnet add package Newtonsoft.Json --version 12.0.1
dotnet add package System.Text.Json --version 6.0.0
dotnet add package Microsoft.Data.SqlClient --version 2.0.0
dotnet add package System.Drawing.Common --version 5.0.0
dotnet add package System.Security.Cryptography.Xml --version 4.7.0

echo "Vulnerable .NET application created!"
