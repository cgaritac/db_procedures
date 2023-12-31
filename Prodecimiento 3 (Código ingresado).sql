/* 3) Crear procedimiento para mostrar salario, oficio y comisión, pasando el apellido.*/

Use clinica

go

CREATE PROCEDURE SALARIO_OFICIO
@PAPELLIDO NVARCHAR (20)
AS
SELECT OFICIO, SALARIO, COMISION FROM EMP WHERE APELLIDO = @PAPELLIDO

EXEC SALARIO_OFICIO 'GARCIA' 



