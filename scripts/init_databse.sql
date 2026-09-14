/*
Create Database schemas
  script purpose :
   this scrippt creates a new datase names DataWarehouse '  after checking if it already exists.
   if the database exists,it is dropped and recreated additionally,the scripy sets up three schemas withing 
   the database : 'bronze','silve', and 'gold'.
*/
USE master;
GO
...drop and recreate the 'DataWarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN 
   ALTER DATABASE DataWartehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE DataWarehouse;
END;
GO

....Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
.....Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;

