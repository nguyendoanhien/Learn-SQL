SELECT OBJECT_NAME(c.OBJECT_ID) as Table_Name, c.name as Column_Name  
  
FROM sys.columns AS c  
  
JOIN sys.types AS t ON c.user_type_id=t.user_type_id  
  
WHERE c.is_nullable=0 AND OBJECT_NAME(c.OBJECT_ID)='Table_Name'  