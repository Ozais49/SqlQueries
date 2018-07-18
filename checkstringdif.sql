DECLARE @CheckStr1 VARCHAR(128)='123456789' --string 1 to compare primary string
DECLARE @CheckStr2 VARCHAR(128)='123456789xyz' --string 2 to compare secondary modified string

DECLARE @len1 INT,
@len2 INT,
@strtochk CHAR(1),
@i SMALLINT,
@outResult VARCHAR(128)

SET @len1=LEN(@CheckStr1)
SET @len2=LEN(@CheckStr2)

SET @i=1
SET @outResult=''
WHILE (@i<=@len1)
BEGIN
Set @strtochk=SUBSTRING(@CheckStr1, @i, 1)
	IF CHARINDEX(@strtochk, @CheckStr2) = 0 BEGIN
		SET @outResult=@outResult+@strtochk
	END
SET @i=@i+1
END

SET @i=1

WHILE (@i<=@len2)
BEGIN
Set @strtochk=SUBSTRING(@CheckStr2, @i, 1)
	IF CHARINDEX(@strtochk, @CheckStr1) = 0 BEGIN
		SET @outResult=@outResult+@strtochk
	END
SET @i=@i+1
END

SELECT @outResult
