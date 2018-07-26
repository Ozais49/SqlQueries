/*CREATE DATABASE LanguageExam
GO

CREATE TABLE UserTable
(Id INT IDENTITY(1,1),
Name VARCHAR(250),
Address VARCHAR(250),
Username VARCHAR(50),
Password VARCHAR(250),
UserRole VARCHAR(10),
UserGroup varchar(25),
LoginCount INT,
RetryLeft INT,
LastLogin DATETIME,
Status VARCHAR(10),
CreatedBy VARCHAR(50),
ApprovedBy VARCHAR(50)
)
Go
ALTER TABLE UserTable ADD CONSTRAINT PK_UserTable_Id PRIMARY KEY (Id)
GO
CREATE UNIQUE NONCLUSTERED  INDEX IX_UserTable_Username ON dbo.UserTable (Username)
GO
CREATE NONCLUSTERED INDEX IX_UserTable_Name_Address ON UserTable(Name,Address)
Go
*/




CREATE TABLE [dbo].[Questions]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Question] VARCHAR(MAX) NULL, 
    [Option1] VARCHAR(50) NULL, 
    [Option2] VARCHAR(50) NULL, 
    [Option3] VARCHAR(50) NULL, 
    [Option4] VARCHAR(50) NULL, 
    [Answer] VARCHAR(50) NULL, 
    [Status] CHAR(1) NULL,
	[Category] VARCHAR(15),
	[Type] CHAR(1),

)
