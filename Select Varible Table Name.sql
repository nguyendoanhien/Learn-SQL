Declare @Database varchar(20)
Set @Database = 'YourTableNameHere'
Declare @RowCount int
declare @SQL as varchar(max)
set @SQL = 'SELECT Count(*) FROM ' + @Database

declare @MyCount table(MyRowCount int)

insert @MyCount
exec (@SQL)

select * from @MyCount