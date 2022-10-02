CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

-- using replace
Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors
-- penggunaan replace adalah mengganti data string kita dengan yang diinginkan
-- dalam hal ini kata fired diganti menjadi kosong 

-- substring
Select Substring(err.FirstName,1,3), Substring(dem.First_Name,1,3), Substring(err.LastName,1,3), Substring(dem.Last_Name,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.First_Name,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.Last_Name,1,3)

-- Upper and Lower
Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors