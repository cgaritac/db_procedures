/* 2) Crear un procedimiento que muestre el nombre, n�mero y n�mero de personas a partir del n�mero de departamento.*/

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


