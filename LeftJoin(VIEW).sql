create view leftJoin as
select EmployeeInfo.FirstName , EmployeeDetail.Department ,EmployeeDetail.Experience
from EmployeeInfo
left join EmployeeDetail on EmployeeDetail.EmpID = EmployeeInfo.EmpID

select * from leftJoin