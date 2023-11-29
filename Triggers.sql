
/* Criar uma trigger que realize um Backup nos dados deletados da tabela usuário */


Create database aulatrigger;

use aulatrigger;

CREATE TABLE usuario (
		idusuario int PRIMARY KEY auto_increment,
		nome VARCHAR(30),
		login VARCHAR(30),
		senha VARCHAR(100)
	);
	
	
	CREATE TABLE bkp_usuario (
		idbackup int PRIMARY KEY auto_increment,
		idusuario int,
		nome VARCHAR(30),
		login VARCHAR(30)	
	);

select * from usuario;
select * from bkp_usuario;


	/* Criando a TRIGGER */
	
Delimiter $
   CREATE TRIGGER backup_user 
   BEFORE DELETE ON usuario
   FOR EACH ROW
	
BEGIN
   INSERT INTO bkp_usuario VALUES(NULL, OLD.idusuario, OLD.nome, OLD.login);
END	
$

Delimiter ;


INSERT INTO usuario VALUES(NULL, "Maria", "Maria.Santos", "102030");


DELETE FROM usuario WHERE idusuario = 4;