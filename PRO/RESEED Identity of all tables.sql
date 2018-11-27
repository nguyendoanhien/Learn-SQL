EXEC sp_MSForEachTable '  
  
IF OBJECTPROPERTY(object_id(''?''), ''TableHasIdentity'') = 1  
  
DBCC CHECKIDENT (''?'', RESEED, 0)  