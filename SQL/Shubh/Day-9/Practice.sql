--ISJSON
--1
DECLARE @param NVARCHAR(MAX)
SET @param = 
N'[
		{
			"Name":"Shubh",
			"City":"Ahmedabad",
			"Hobbies":["Chess","Football","Making Memes"]
		}
	]'

IF (ISJSON(@param) > 0)  
BEGIN  
   PRINT 'Valid Json'
END

--2

--JSON_VALUE

DECLARE @jsonInfo NVARCHAR(MAX)
SET @jsonInfo=
   N'[
     {    
       "[ManagerId]":48,  
       "[Salary]":"500000",  
       "[Department]":"Levon"
       }
    ]'

SELECT FirstName, LastName,
 JSON_VALUE(jsonInfo,'$.Department') AS Dept
FROM Employee
SELECT * FROM Employee

--
DECLARE @jsonInfor NVARCHAR(MAX)
DECLARE @town NVARCHAR(32)

SET @jsonInfor=N'{"info":{"address":[{"town":"Paris"},{"town":"London"}]}}';

SET @town=JSON_VALUE(@jsonInfor,'$.info.address[0].town');
SET @town=JSON_VALUE(@jsonInfor,'$.info.address[1].town');