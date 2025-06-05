/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. 
    
    The script wil also creates three schemas('bronze', 'silver', and 'gold') within the 'DataWarehouse' database.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists and deletes all the data permenantly. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schmeas

CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
