Declare @Drop_SP Nvarchar(MAX)  
  
Declare My_Cursor Cursor For Select [name] From sys.objects where type = 'p'  
  
Open My_Cursor  
  
Fetch Next From My_Cursor Into @Drop_SP  
  
While @@FETCH_STATUS= 0  
  
Begin  
  
Exec('DROP PROCEDURE ' + @Drop_SP)  
  
Fetch Next From My_Cursor Into @Drop_SP  
  
End  
  
Close My_Cursor  
  
Deallocate My_Cursor 