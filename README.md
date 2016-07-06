# ASP.NET Core with MS SQL DB Sample Application

## Installing Person Database
 To install person database, run `PersonDirectory.sql` script under `SQLDbScript` folder
 
## To configure environment variable 
After enabling docker support, modify yaml file and add below lines under `environment` section.

 - - MSSQL_SERVICE_HOST=[SQL_Server_IP]
 - - DATABASE_NAME=[SQL_Server_Database]
 - - MSSQL_SERVICE_PORT=[SQL_Database_Port Default is 1433]
 - - DATABASE_USER=[SQL_Server_User]
 - - SA_PASSWORD=[SQL_Server_Password]
