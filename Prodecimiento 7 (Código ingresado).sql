/* 7) Crear un procedimiento sin pasar ning�n valor, que muestre los datos de todos los empleados.*/

Use clinica

go

CREATE PROCEDURE OFICIOSALARIO
@PAPELLIDO VARCHAR (20) = '%'
AS 
SELECT OFICIO, SALARIO, COMISION FROM EMP 

EXEC OFICIOSALARIO 


