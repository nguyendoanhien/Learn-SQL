DECLARE @ExcludedList VARCHAR(MAX)

SET @ExcludedList = '3,4,22,6014'
declare @sql nvarchar(Max)

Set @sql='SELECT * FROM [A] WHERE Id NOT IN ('+@ExcludedList+')'

exec sp_executesql @sql





------------OR------------------
Replace @your_list, Your_table and the values with real stuff.

DECLARE @your_list TABLE (list varchar(25)) 
INSERT into @your_list
VALUES ('value1'),('value2376')

SELECT *  
FROM your_table 
WHERE your_column in ( select list from @your_list )
The select statement abowe will do the same as:

SELECT *  
FROM your_table 
WHERE your_column in ('value','value2376' )