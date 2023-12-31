/* 1) Crear un procedimiento que muestre a todos los empleados que ingresaron entre una fecha inicial y otra final, 
además que muestre a que departamento pertenecen.*/

Use clinica
go

CREATE PROCEDURE FECHASDEPT
@FINICIAL DATETIME,
@FFINAL SMALLDATETIME,
@DEPT_NO NVARCHAR (10)
AS
SELECT * FROM EMP WHERE Fecha_Alt BETWEEN @FINICIAL AND @FFINAL AND Dept_No = @DEPT_NO

EXEC FECHASDEPT '1965-01-01', '1985-01-01', 20

