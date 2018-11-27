SELECT name AS Table_Name  
  
FROM sys.tables  
  
WHERE OBJECTPROPERTY(OBJECT_ID,'TableHasPrimaryKey') = 0  
  
ORDER BY Table_Name;  