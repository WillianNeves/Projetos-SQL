/* NOVO BANCO DE DADOS COM PROCEDURE  */


CREATE DATABASE ESCOLA;

USE ESCOLA;

CREATE TABLE CURSOS(
  IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
  CURSO VARCHAR(50) NOT NULL,
  HORAS INT(3) NOT NULL,
  VALOR FLOAT(10,2) NOT NULL
);

INSERT INTO CURSOS VALUES(NULL, 'JAVA INICIAL', 100, 500.00);

SELECT * FROM CURSOS;


/* CRIANDO A PROCEDURE */

Delimiter $

Create Procedure Cad_Curso(P_CURSO VARCHAR(50), P_HORAS INT(3), P_VALOR float (10,2))
Begin
   INSERT INTO CURSOS VALUES(NULL, P_CURSO, P_HORAS, P_VALOR);
End
$

DELIMITER ;

/* CHAMANDO A PROCEDURE E FAZENDO OS INSERTS */

CALL CAD_CURSO('BI SQL SERVER', 35, 3000.00);
CALL CAD_CURSO('PYTHON AVANÇADO', 120, 800.00);
CALL CAD_CURSO('INGLÊS FLUENTE', 200, 1000.00);


SELECT * FROM CURSOS;


/* CRIE UMA PROCEDURE PARA CONSULTAR CURSOS */

use escola;

delimiter $
Create procedure Consulta()
Begin
	Select Curso, horas
    from cursos;
end
$
delimiter ;

Call Consulta();


