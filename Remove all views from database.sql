Declare @Drop_View Nvarchar(MAX)  
  
Declare My_Cursor Cursor For Select [name] From sys.objects where type = 'v'  
  
Open My_Cursor  
  
Fetch Next From My_Cursor Into @Drop_View  
  
While @@FETCH_STATUS = 0  
  
Begin  
  
Exec('DROP VIEW ' + @Drop_View)  
  
Fetch Next From My_Cursor Into @Drop_View  
  
End  
  
Close My_Cursor  
  
Deallocate My_Cursor 