Solution 1: exec sp_helptext 'View_name'
Solution 2: select OBJECT_DEFINITION (object_id('View_name'))
Solution 3: exec sp_depends 'View_name'