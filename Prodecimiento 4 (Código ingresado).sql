/* 4) Crear un procedimiento para recuperar el salario, oficio, apellido y nombre del departamento de todos 
los empleados que contengan en su apellido el valor que le pasemos como parámetro.*/

Use clinica

go

CREATE PROCEDURE SALARIO_OFICIOLIKE
@PAPELLIDO VARCHAR (20) = 'REY'
AS 
SELECT Emp.Oficio, Emp.Salario, Emp.Apellido, Dept.DNombre 
FROM Emp join Dept on Emp.DEPT_NO = Dept.DEPT_NO
WHERE APELLIDO LIKE '%' + @PAPELLIDO + '%'

EXEC SALARIO_OFICIOLIKE 'S'


