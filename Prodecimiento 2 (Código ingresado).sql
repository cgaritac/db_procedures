/* 2) Crear un procedimiento que muestre el nombre, número y número de personas a partir del número de departamento.*/

Use clinica

go

CREATE PROCEDURE NUMEMP_DEP
@NDEP SMALLINT
AS 
SELECT COUNT(*) AS [NUM EMPLEADOS], DEPT_NO
FROM EMP
WHERE DEPT_NO = @NDEP
GROUP BY DEPT_NO

EXEC NUMEMP_DEP 30


