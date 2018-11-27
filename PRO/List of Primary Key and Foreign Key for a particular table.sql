SELECT  
  
DISTINCT  
  
Constraint_Name AS [Constraint],  
  
Table_Schema AS [Schema],  
  
Table_Name AS [TableName] FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE  
  
WHERE INFORMATION_SCHEMA.KEY_COLUMN_USAGE.TABLE_NAME='Table_Name'  
  
GO  