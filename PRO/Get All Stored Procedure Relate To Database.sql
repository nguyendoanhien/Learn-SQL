SELECT DISTINCT o.name, o.xtype  
  
FROM syscomments c  
  
INNER JOIN sysobjects o ON c.id=o.id  
  
WHERE o.xtype='P'  