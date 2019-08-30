--创建用户的存储过程， 

--示例EXEC sp_CreateUser 'UserName','rw','DatabaseName' 
--EXEC sp_CreateUser 'tesefx','r','Test','0xE39CA97EBE03BB4CA5FF78E50374EEBB' 

CREATE PROC [dbo].[sp_CreateUser] 
@loginName VARCHAR(50) , 
@IsWrite VarCHAR(3) , 
@DatabaseName VARCHAR(50), 
@Sid VARCHAR(100) ='1' 
AS 
PRINT('示例：EXEC sp_CreateUser ''UserName'',''rw'',''DatabaseName''') 
PRINT('示例：EXEC sp_CreateUser ''UserName'',''rwv'',''DatabaseName'',''0xE39CA97EBE03BB4CA5FF78E50374EEBB''') 
PRINT('r为只读权限，rw为读写权限，rwv为读写加View Definition权限') 


IF EXISTS ( SELECT name 
FROM sys.syslogins 
WHERE name = @loginName ) 
BEGIN 
PRINT N'登录名已存在，跳过创建登录名步骤' 
END 
ELSE 
BEGIN 

DECLARE @CreateLogin NVARCHAR(1000) 
DECLARE @pwd VARCHAR(50) 
PRINT @Sid 
SET @pwd=NEWID() 
IF(@sid='1') 
BEGIN 
SET @CreateLogin = 'CREATE LOGIN [' + @loginName + '] WITH PASSWORD=N''' 
+ @Pwd 
+ ''', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;' 
PRINT N'登录名已创建，密码为:'+@pwd 
END 
ELSE 
BEGIN 
SET @CreateLogin = 'CREATE LOGIN [' + @loginName + '] WITH PASSWORD=N''' 
+ @Pwd 
+ ''', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF,sid='+@Sid+';' 
PRINT N'已经使用SID创建登录名:'+@loginName 

END 
EXEC (@CreateLogin) 

--DECLARE @sidtemp NVARCHAR(50) 
--SELECT @sidtemp=sid FROM sys.server_principals WHERE name=@loginName 
--PRINT(N'登录名为:'+@loginName+N' SID为: 0x'+CONVERT(VARCHAR(50), @sidtemp, 2) ) 
END 



DECLARE @DynamicSQL NVARCHAR(1000) 
--切换数据库上下文 
SET @DynamicSQL = N'Use [' + @DatabaseName + ']; ' + 'IF EXISTS(SELECT name FROM sys.database_principals WHERE name='''+@loginName+''') Begin Print(''用户名已存在，跳过创建用户名的步骤'') end else begin CREATE USER [' 
+ @loginName + '] FOR LOGIN ' + @loginName + ' end;IF (''' 
+ @IsWrite 
+ '''=''rw'' or ''' 
+ @IsWrite 
+ '''=''rwv'') BEGIN ALTER ROLE [db_datareader] ADD MEMBER ' + @loginName 
+ ';ALTER ROLE [db_datawriter] ADD MEMBER ' + @loginName 
+ '; END ELSE BEGIN ALTER ROLE [db_datareader] ADD MEMBER ' 
+ @loginName + '; 
ALTER ROLE db_datawriter DROP MEMBER ' 
+ @loginName + ' 
;End;grant execute to ' + @loginName + '; 
if('''+@IsWrite+'''<>''rwv'') begin deny view definition to ' + @loginName + '; end else begin grant view definition to ' + @loginName + '; end' 

EXEC (@DynamicSQL)