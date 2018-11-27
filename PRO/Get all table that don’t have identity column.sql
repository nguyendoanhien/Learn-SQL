SELECT  
  
TABLE_NAME FROM INFORMATION_SCHEMA.TABLES  
  
where  
  
Table_NAME NOT IN  
  
(  
  
SELECT DISTINCT c.TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS c  
  
INNER  
  
JOIN sys.identity_columns ic  
  
on  
  
(c.COLUMN_NAME=ic.NAME))  
  
AND  
  
TABLE_TYPE ='BASE TABLE'  