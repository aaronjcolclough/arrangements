@echo off

echo Updating dbseeder dependencies...
cd .\dbseeder
call dotnet add package Microsoft.EntityFrameworkCore.Relational
call dotnet add package Microsoft.EntityFrameworkCore.SqlServer

echo Updating Reservations.Core dependencies...
cd ..\Reservations.Core
call dotnet add package Microsoft.EntityFrameworkCore
call dotnet add package Newtonsoft.Json

echo Updating Reservations.Auth dependencies...
cd ..\Reservations.Auth
call dotnet add package Microsoft.EntityFrameworkCore

echo Updating Reservations.Data dependencies...
cd ..\Reservations.Data
call dotnet add package Microsoft.EntityFrameworkCore.SqlServer
call dotnet add package Microsoft.EntityFrameworkCore.Tools
call dotnet add package Newtonsoft.Json

echo Updating Reservations.Identity dependencies...
cd ..\Reservations.Identity
call dotnet add package Microsoft.Extensions.Configuration.Abstractions
call dotnet add package Microsoft.Extensions.Configuration.Binder
call dotnet add package System.DirectoryServices
call dotnet add package System.DirectoryServices.AccountManagement

echo Updating Reservations.Identity.Mock dependencies...
cd ..\Reservations.Identity.Mock

echo Updating Reservations.Office dependencies...
cd ..\Reservations.Office
call dotnet add package DocumentFormat.OpenXml

echo Updating Reservations.Sql dependencies...
cd ..\Reservations.Sql
call dotnet add package Microsoft.Data.SqlClient
call dotnet add package Newtonsoft.Json

echo Updating Reservations.Web dependencies...
cd ..\Reservations.Web
call dotnet add package Microsoft.AspNetCore.Mvc.NewtonsoftJson
call dotnet add package Microsoft.AspNetCore.OData
call dotnet add package Microsoft.EntityFrameworkCore.Design

echo Caching NuGet dependencies...
cd ..\
call dotnet restore --packages nuget-packages

cd ..
echo Dependencies successfully updated!
