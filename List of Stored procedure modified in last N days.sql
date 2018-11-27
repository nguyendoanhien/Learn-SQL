SELECT name,modify_date  
  
FROM sys.objects  
  
WHERE type='P'  
  
AND DATEDIFF(D,modify_date,GETDATE())< [num]