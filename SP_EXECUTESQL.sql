BEGIN TRAN

declare @list nvarchar(max)
set @list='1980'

declare @sql nvarchar(max),@ParamDefinition nvarchar(max)
set @sql='select * from KHOA where namthanhlap in (@list_temp2)'
set @ParamDefinition = '@list_temp2 nvarchar(max)'
exec SP_EXECUTESQL
@sql,
@ParamDefinition,
@list

ROLLBACK