
--PROCUDER for inner join--
alter PROCEDURE INNERJOIN
AS
BEGIN
SELECT EmployeeInfo.EmpID,EmployeeInfo.FirstName, EmployeeCompany.COMPANYNAME,EmployeeCompany.JOININGDATE,EmployeeDetail.Department
FROM EmployeeCompany
INNER JOIN EmployeeDetail ON EmployeeCompany.EmpID=EmployeeDetail.EmpID
INNER JOIN EmployeeInfo ON EmployeeCompany.EmpID=EmployeeInfo.EmpID
END;

--procedure
execute INNERJOIN 