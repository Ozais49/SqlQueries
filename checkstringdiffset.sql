DECLARE @CheckStr1 VARCHAR(128)='1234' --string 1 to compare primary string
DECLARE @CheckStr2 VARCHAR(128)='456'--string 2 to compare secondary modified string
DECLARE @check VARCHAR(128)=''

SELECT @check+=Y.Diff FROM
(
SELECT SUBSTRING(@CheckStr1, x.Number, 1)  AS Diff
FROM (SELECT Number = ROW_NUMBER() OVER (ORDER BY name)
              FROM sys.all_objects) AS x
			  WHERE x.Number <=LEN(@CheckStr1)
			  AND CHARINDEX(SUBSTRING(@CheckStr1, x.Number, 1) , @CheckStr2) = 0
)AS Y

SELECT @check+= Z.Diff FROM
(
SELECT SUBSTRING(@CheckStr2, x.Number, 1)  AS Diff
FROM (SELECT Number = ROW_NUMBER() OVER (ORDER BY name)
              FROM sys.all_objects) AS x
			  WHERE x.Number <=LEN(@CheckStr2)
			  AND CHARINDEX(SUBSTRING(@CheckStr2, x.Number, 1) , @CheckStr1) = 0
)AS Z

SELECT @check



