declare @TableName sysname = 'MNClientKYC'
declare @Result varchar(max) = 'Insert into ' + @TableName + '
('

select @Result = @Result +ColumnName+', '
     FROM 
	(SELECT replace(col.name, ' ', '_') ColumnName,column_id ColumnId FROM 
	  sys.columns col
        join sys.types typ on
            col.system_type_id = typ.system_type_id AND col.user_type_id = typ.user_type_id
    where object_id = object_id(@TableName)
	
	)  t
  
  SET @Result=@Result+') 
 Values (';
  
select @Result = @Result +'@'+ColumnName+', '
     FROM 
	(SELECT replace(col.name, ' ', '_') ColumnName,column_id ColumnId FROM 
	  sys.columns col
        join sys.types typ on
            col.system_type_id = typ.system_type_id AND col.user_type_id = typ.user_type_id
    where object_id = object_id(@TableName)
	
	)  t
	 

 SET @Result=@Result+') ';
  
print @Result