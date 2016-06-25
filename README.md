# ASP.NET Core with MS SQL DB Sample Application

## Installing Person Database
 To install person database, run `PersonDirectory.sql` script under `SQLDbScript` folder
 
## To configure environment variable 
After enabling docker support, modify yaml file and add below lines under `environment` section.

 - - SQLDB_SERVER=<SQL Server IP>
 - - SQLDB_DATABASE=<SQL Server Database>
 - - SQLDB_PORT=1433
 - - SQLDB_USER=<SQL Server User>
 - - SQLDB_PASSWORD=<SQL Server Password>
