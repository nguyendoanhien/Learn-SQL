--Insert Replacement_expression, at the start position specified, along with removing the charactes
--specified using Length parameter


--EMAIL 
- ABCD@Gmail.com
SELECT STUFF(EMAIL,2,3,*****) 
-- => A*****D@Gmail.com