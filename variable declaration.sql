
SELECT '@'+C.name+' '+Ty.name+ 
CASE WHEN UPPER(Ty.name) NOT IN('INT','DATETIME') Then
' ('+CAST(C.max_length AS VARCHAR(10))+')'
ELSE ''
END 
+','
 FROM 
sys.columns C JOIN sys.tables T ON T.object_id = C.object_id 
JOIN sys.types Ty ON C.system_type_id=Ty.system_type_id AND C.user_type_id=Ty.user_type_id
AND T.name='MNClientKYC'


