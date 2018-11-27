SELECT name,sys.objects.create_date  
  
FROM sys.objects  
  
WHERE type='P'  
  
AND DATEDIFF(D,sys.objects.create_date,GETDATE())< N  