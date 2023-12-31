/* CRIAR UM BANCO COM 4 TABELAS. FAZER JOIN E TODAS AS CLÁUSULAS E FUNÇÕES ESTUDADAS ATÉ AGORA*/

CREATE DATABASE ECOMMERCE;

USE ECOMMERCE;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY auto_increment,
	NOME VARCHAR(50) NOT NULL,
    SEXO ENUM('MASC' , 'FEM'), 
    CPF VARCHAR(15) UNIQUE,
    EMAIL VARCHAR(50) UNIQUE    
);

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY auto_increment,
    RUA VARCHAR(30) NOT NULL,
    NUMERO INT NOT NULL,
    COMPLEMENTO VARCHAR(50),
    BAIRRO VARCHAR(30) NOT NULL,
    CIDADE VARCHAR(30) NOT NULL,
    CEP VARCHAR(10),
    ESTADO CHAR(2) NOT NULL,
    ID_CLIENTE INT UNIQUE,
    foreign key(ID_CLIENTE)
    references CLIENTE(IDCLIENTE)
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY auto_increment,
	NUMERO VARCHAR(15) NOT NULL,
    TIPO ENUM('CEL', 'RES', 'COM') NOT NULL,
    ID_CLIENTE INT,
    foreign key(ID_CLIENTE)
    references CLIENTE(IDCLIENTE)
);

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY auto_increment,
    ITEM VARCHAR(50) NOT NULL,
    CODIGO INT UNIQUE,
    VALORVENDA float(2) NOT NULL,
    ID_CLIENTE INT,
    foreign key(ID_CLIENTE)
    references CLIENTE(IDCLIENTE)
);


SHOW TABLES;
DESC CLIENTE;
DESC ENDERECO;
DESC TELEFONE;
DESC PRODUTO;

INSERT INTO CLIENTE VALUES(NULL, 'JOÃO PEDRO FERREIRA', 'MASC', '78965412300', 'JOAOPEDRO14@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'PAMELA ALMEIDA', 'FEM', '63998744411', 'PAM_ALMEIDA10@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'CARLOS BARROSO SOUZA', 'MASC', '23220236999', 'CARLOSBARROSO@OUTLOOK.COM');
INSERT INTO CLIENTE VALUES(NULL, 'EDSON VIEIRA', 'MASC', '69855522211', 'EDSON30VIEIRA@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'PAULA FARIAS', 'FEM', '783365412300', 'PAULACABELEIREIRA@YAHOO.COM.BR');
INSERT INTO CLIENTE VALUES(NULL, 'WILLIAN RIBEIRO NEVES', 'MASC', '42115486500', 'WILLIAN22NEVES@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'VANESSA RAMOS', 'FEM', '46530298814', 'VAN_RAMOS570@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'ANA KAROLINE SOUZA', 'FEM', '46533698077', 'ANA.KAROL.SOUZA@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'PRISCILA FERREIRA', 'FEM', '69885236400', 'PRISCILAADV@OAB.COM.BR');
INSERT INTO CLIENTE VALUES(NULL, 'HEVERTON MAGNO DOS SANTOS', 'MASC', '33325632145', 'HEVERTONMSANTOS@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'PALOMA VIANNA SOUSA', 'FEM', '89874503266', 'VIANNA_PALOMA@HOTMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'JOSÉ CARLOS BRASIL', 'MASC', '78967456301', 'JC_BRASIL@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'BIANCA SILVA ANDRADE', 'FEM', '66541299801', 'BIANCA_SILVA_@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'GUILHERME QUEIROZ', 'MASC', '98700021455', 'GUI25QUEIROZ@OUTLOOK.COM');
INSERT INTO CLIENTE VALUES(NULL, 'JHONATAN CRUZ', 'MASC', '12456398700', 'SERVICOSJHONATAN@BOL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'FELIPE AUGUSTO SANTOS', 'MASC', '63621254588', 'FELIPE_AUG_SANTOS@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'JOÃO NAVARRO FREITAS', 'MASC', '32300041566', 'NAVARROTRANSPORTES@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'VERA SANTOS DE ALMEIDA', 'FEM', '98322106988', 'VERINHA_SANTOS35@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'CARLA RIBEIRO DOS SANTOS', 'FEM', '45426300000', 'CARLINHA_ENFERMAGEM@HOTMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'MIRELLA SANTOS', 'FEM', '63699365000', 'PROFESSORA_MIRELLA@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'VIVIANE RIBEIRO DOS SANTOS', 'FEM', '66541128879', 'VIWIMAPA@HOTMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'CLAUDIA RODRIGUES', 'FEM', '33014155988', 'CLAUDIA.RODRIGUES_FAMILIA@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'JOÃO CARLOS MENDONÇA', 'MASC', '87965412300', 'JOAO1010MENDONCAA@YAHOO.COM.BR');
INSERT INTO CLIENTE VALUES(NULL, 'MICHELE FERREIRA ABRAÃO', 'FEM', '25169855200', 'ESCOLA_ALDEINHA@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'PEDRO MARIANO GONÇALVES', 'MASC', '54421355968', 'JOAOPEDRO_GONCALVES17@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'VANDERSON AMARAL PINHEIRO', 'MASC', '88874500023', 'VANDERSON_A_PINEIRO@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'MARIANA DE SOUZA', 'FEM', '42653987710', 'MARI_SOUZA@HOTMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'GABRIEL AMARANTES', 'MASC', '6328741100', 'GAB_AMAANTES14@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'JOAQUIM XAVIER HILARIO', 'MASC', '23541006984', 'ADVOCACIA.XAVIER@GMAIL.COM');
INSERT INTO CLIENTE VALUES(NULL, 'PAULO CÉSAR FILHO', 'MASC', '45265412300', 'CONSELHO.ETICA@GOV.COM.BR');
INSERT INTO CLIENTE VALUES(NULL, 'MARIA CLARA ALBUQUERQUE', 'FEM', '46115497503', 'ALBUQUERQUE_CLARA_MARIA@OUTLOOK.COM');
INSERT INTO CLIENTE VALUES(NULL, 'CLAUDIO MANOEL DIAS', 'MASC', '69636988740', NULL);
INSERT INTO CLIENTE VALUES(NULL, 'ELISÂNGELA DANTAS', 'FEM', '11111000000', NULL);
INSERT INTO CLIENTE VALUES(NULL, 'MARIA EDUARDA CHAGAS', 'FEM', 5469368590, 'MADU@HOTMAIL.COM');

SELECT * FROM CLIENTE;
DESC ENDERECO;

INSERT INTO ENDERECO VALUES(NULL, 'RUA FRANCSICO MOURA', 512, 'AO LADO DA IGREJA', 'SAÚDE', 'SÃO PAULO', '06898655', 'SP', 1);
INSERT INTO ENDERECO VALUES(NULL, 'AV DO ESTADO', 1170, 'AP 34', 'CENTRO', 'SÃO PAULO', '06480630', 'SP', 3);
INSERT INTO ENDERECO VALUES(NULL, 'RUA JOSÉ AURELIANO', 183, 'SOBRADO', 'ESTRELA VERMELHA', 'GOIÁS', '44566980', 'GO', 4);
INSERT INTO ENDERECO VALUES(NULL, 'NABI ABI CHEDDID', 12, 'CASA', 'JD. AUDIR', 'BRAGANÇA PAULISTA', '05523980', 'SP', 5);
INSERT INTO ENDERECO VALUES(NULL, 'ALAMEDA RIO NEGRO', 1130, 'EMPRESA KING INFORMATICA', 'ALPHAVILLE', 'BARUERI', '06602140', 'SP', 7);
INSERT INTO ENDERECO VALUES(NULL, 'AV CARLOS AUGUSTO II', 1600, 'AP 134 - TORRE 8', 'LEBLON', 'RIO DE JANIERO', '03365930', 'RJ', 8);
INSERT INTO ENDERECO VALUES(NULL, 'RUA EDUARDO ALVES', 45, 'CASA 02', 'JD DA ÁRVORE', 'ESPIRITO SANTO', '27456200', 'ES', 9);
INSERT INTO ENDERECO VALUES(NULL, 'RUA DO MORRO DOCE', 184, 'CASA', 'ATERRO MARIO FILHO', 'PERNAMBUCO', '33300000', 'PE', 10);
INSERT INTO ENDERECO VALUES(NULL, 'AV JUSCELINO KUBITSCHEK', 2400, 'TORRE NORTE - ANDAR 27 - INOVA SOLUÇÕES', 'VILA OLÍMPIA', 'SÃO PAULO', '05680230', 'SP', 11);
INSERT INTO ENDERECO VALUES(NULL, 'AV PRESIDENTE VARGAS', 168, 'CASA DE ESQUINA', 'LAPA DE BAIXO', 'GOVERNADOR VALADARES', '35500000', 'MG', 12);
INSERT INTO ENDERECO VALUES(NULL, 'RUA JOÃO DEL MOURA', 356, 'CASA', 'PRAIA FORTE', 'BAHIA', '07550630', 'BA', 13);
INSERT INTO ENDERECO VALUES(NULL, 'RUA FRANCSICO DE SÁ', 511, 'BAR DO CHICÃO', 'JD. DA GLÓRIA', 'MINAS GERAIS', '03360320', 'MG', 14);
INSERT INTO ENDERECO VALUES(NULL, 'AV BRASIL', 1500, 'BLOCO 2 - AP51', 'CENTRO', 'RIO DE JANEIRO', '03560240', 'RJ', 15);
INSERT INTO ENDERECO VALUES(NULL, 'VIELA DO CHILE', 48, 'MORRO DO VIDIGAL', 'VIDIGAL', 'RIO DE JANEIRO', '03560310', 'RJ', 16);
INSERT INTO ENDERECO VALUES(NULL, 'AV DA ALDEIA', 300, 'AO LADO DO MERCADO RODRIGUES', 'ALDEIA', 'BARUERI', '06460020', 'SP', 17);
INSERT INTO ENDERECO VALUES(NULL, 'RUA AMAZONAS', 07, 'SOBRADO', 'PELOURINHO', 'BAHIA', '75800000', 'BA', 18);
INSERT INTO ENDERECO VALUES(NULL, 'RUA FRANCSICO MORATO', 12, 'AP 252 - BLOCO ACQUA', 'LIBERDADE', 'ESPIRITO SANTO', '05630000', 'ES', 19);
INSERT INTO ENDERECO VALUES(NULL, 'AV DOM PEDRO I', 1850, 'SACOLÃO DO RÓBSON', 'OLÍMPICO', 'RIO GRANDE DO SUL', '79990450', 'RS', 20);
INSERT INTO ENDERECO VALUES(NULL, 'RUA PADRE CÍCERO', 141, 'CASA 04', 'OLÍMPICO', 'RIO GRANDE DO SUL', '79990490', 'SP', 21);
INSERT INTO ENDERECO VALUES(NULL, 'AV CARLOS MOURA', 1000, 'AP 122', 'BELA VISTA', 'GOIÂNIA', '36530000', 'GO', 22);
INSERT INTO ENDERECO VALUES(NULL, 'AV PRINCIPAL', 1000, 'PRÓX AO MERCADÃO', 'CENTRO', 'PERNAMBUCO', '87440200', 'PE', 23);
INSERT INTO ENDERECO VALUES(NULL, 'AV DO GOVERNADOR', 60, 'CASA 01', 'CENTRO', 'MARANHÃO', '99980000', 'MA', 33);
INSERT INTO ENDERECO VALUES(NULL, 'RUA DA PÁTRIA', 777, 'AP 45 - TORRE 01', 'JD. AMÉRICA', 'MARANHÃO', '99955000', 'MA', 25);
INSERT INTO ENDERECO VALUES(NULL, 'AV PAULISTA', 1830, 'ESQUINA COM ALAMEDA SANTOS', 'BELA VISTA', 'SÃO PAULO', '06898300', 'SP', 26);
INSERT INTO ENDERECO VALUES(NULL, 'AV MARIO COVAS', 60, 'CASA 01', 'CENTRO', 'MARANHÃO', '99980000', 'MA', 34);
INSERT INTO ENDERECO VALUES(NULL, 'RUA GENERAL MANOEL RIBEIRO', 1600, 'AP 63', 'BEXIGA', 'PARANÁ', '04555300', 'PR', 27);
INSERT INTO ENDERECO VALUES(NULL, 'RUA CRISTINA GÓES', 1001, 'AO LADO DO SUPERMERCADO SOL', 'JD. ANGÉLICA', 'CEARÁ', '40060000', 'CE', 28);
INSERT INTO ENDERECO VALUES(NULL, 'ALAMAEDA DAS FOLRES', 630, 'CASA', 'VILA DOS REMÉDIOS', 'OSASCO', '04770560', 'SP', 29);
INSERT INTO ENDERECO VALUES(NULL, 'RUA DO OURO', 87, 'QD 37 LOTE 115', 'SAMAMBAIA', 'DISTRITO FEDERAL', '37750000', 'DF', 30);
INSERT INTO ENDERECO VALUES(NULL, 'AVENIDA INOCÊNCIO SERÁFICO', 300, 'CENTRO AUTOMOTIVO JOÃO', 'CENTRO', 'CARAPÍCUIBA', '0644625', 'SP', 31);
INSERT INTO ENDERECO VALUES(NULL, 'RUA DA EMBAIXADA', 333, 'AP 183 - BLC 02', 'PONTE RIO II', 'SANTA CATARINA', '88500300', 'SC', 32);
INSERT INTO ENDERECO VALUES(NULL, 'RUA DAS BELEZAS', 14, 'CASA 03', 'VILA NOVA CONCEIÇÃO', 'SÃO PAULO', '48500300', 'SP', 2);
INSERT INTO ENDERECO VALUES(NULL, 'AVENIDA PRINCIPAL', 500, 'AP 01', 'CANAL 06', 'MATO GROSSO', '84500380', 'MT', 6);
INSERT INTO ENDERECO VALUES(NULL, 'RUA AFONSO PENA', 124, 'CASA 01', 'JD GLÓRIA MARIA', 'SÃO PAULO', '06506300', 'SP', 24);

SELECT * FROM ENDERECO;

UPDATE ENDERECO
SET ESTADO = 'RS'
WHERE IDENDERECO = 21;


INSERT INTO TELEFONE VALUES(NULL, '11986330114', 'CEL', 1);
INSERT INTO TELEFONE VALUES(NULL, '11988556633', 'CEL', 3);
INSERT INTO TELEFONE VALUES(NULL, '1141886622', 'RES', 3);
INSERT INTO TELEFONE VALUES(NULL, '62977991100', 'CEL', 4);
INSERT INTO TELEFONE VALUES(NULL, '1133569870', 'COM', 5);
INSERT INTO TELEFONE VALUES(NULL, '11977005533', 'CEL', 5);
INSERT INTO TELEFONE VALUES(NULL, '11985630214', 'CEL', 7);
INSERT INTO TELEFONE VALUES(NULL, '21999630044', 'CEL', 8);
INSERT INTO TELEFONE VALUES(NULL, '2736532100', 'CEL', 9);
INSERT INTO TELEFONE VALUES(NULL, '81970708519', 'CEL', 10);
INSERT INTO TELEFONE VALUES(NULL, '8136639885', 'RES', 10);
INSERT INTO TELEFONE VALUES(NULL, '11995631428', 'CEL', 11);
INSERT INTO TELEFONE VALUES(NULL, '3155630047', 'RES', 12);
INSERT INTO TELEFONE VALUES(NULL, '71995547110', 'CEL', 13);
INSERT INTO TELEFONE VALUES(NULL, '31974023300', 'CEL', 14);
INSERT INTO TELEFONE VALUES(NULL, '21999665280', 'CEL', 15);
INSERT INTO TELEFONE VALUES(NULL, '2133506998', 'COM', 15);
INSERT INTO TELEFONE VALUES(NULL, '11940806390', 'CEL', 16);
INSERT INTO TELEFONE VALUES(NULL, '11984019633', 'CEL', 17);
INSERT INTO TELEFONE VALUES(NULL, '7177405630', 'CEL', 18);
INSERT INTO TELEFONE VALUES(NULL, '27963221456', 'CEL', 19);
INSERT INTO TELEFONE VALUES(NULL, '51963220044', 'CEL', 20);
INSERT INTO TELEFONE VALUES(NULL, '5140306750', 'COM', 21);
INSERT INTO TELEFONE VALUES(NULL, '62988742222', 'CEL', 22);
INSERT INTO TELEFONE VALUES(NULL, '81963302550', 'CEL', 23);
INSERT INTO TELEFONE VALUES(NULL, '98999985200', 'CEL', 25);
INSERT INTO TELEFONE VALUES(NULL, '11963000021', 'CEL', 26);
INSERT INTO TELEFONE VALUES(NULL, '41997740003', 'CEL', 27);
INSERT INTO TELEFONE VALUES(NULL, '8533560014', 'RES', 28);
INSERT INTO TELEFONE VALUES(NULL, '1141415602', 'RES', 29);
INSERT INTO TELEFONE VALUES(NULL, '61996302252', 'CEL', 30);
INSERT INTO TELEFONE VALUES(NULL, '11971420366', 'CEL', 31);
INSERT INTO TELEFONE VALUES(NULL, '48998630020', 'CEL', 32);
INSERT INTO TELEFONE VALUES(NULL, '98997744856', 'CEL', 33);
INSERT INTO TELEFONE VALUES(NULL, '9836550032', 'RES', 33);
INSERT INTO TELEFONE VALUES(NULL, '98999550000', 'CEL', 34);
INSERT INTO TELEFONE VALUES(NULL, '1154503699', 'RES', 2);
INSERT INTO TELEFONE VALUES(NULL, '68974501587', 'CEL', 6);
INSERT INTO TELEFONE VALUES(NULL, '11999888564', 'CEL', 24);


SELECT * FROM TELEFONE;


INSERT INTO PRODUTO VALUES(NULL, 'CAMISETA VINGADORES - CAPITÃO AMÉRICA', 586633221, 109.00, 1);
INSERT INTO PRODUTO VALUES(NULL, 'CAMISETA BÁSICA PRETO GG', 5632014, 39.90, 3);
INSERT INTO PRODUTO VALUES(NULL, 'RELÓGIO SPIDER-MAN', 362014, 69.90, 4);
INSERT INTO PRODUTO VALUES(NULL, 'CONJUNTO INFANTIL SPIDER-MAN', 32000114, 89.90, 4);
INSERT INTO PRODUTO VALUES(NULL, 'PS4 1TB + JOGO GOD OF WAR', 669980471, 1800.00, 5);
INSERT INTO PRODUTO VALUES(NULL, 'SMARTPHONE SAMSUNG S22', 36201789, 3499.99, 7);
INSERT INTO PRODUTO VALUES(NULL, 'FONE DE OUVIDO JBL X23', 46550398, 399.99, 8);
INSERT INTO PRODUTO VALUES(NULL, 'BERMUDA FLORAL', 36514870, 59.90, 9);
INSERT INTO PRODUTO VALUES(NULL, 'KIT MAQUIAGEM EUDORA PROFESSIONAL', 487122300, 800.00, 10);
INSERT INTO PRODUTO VALUES(NULL, 'BONÉ DC SUPER HEROES', 87789600, 80.00, 11);
INSERT INTO PRODUTO VALUES(NULL, 'COPO ALL-STAR', 1241036, 29.90, 12);
INSERT INTO PRODUTO VALUES(NULL, 'TV LG 55" - UHD5665520', 98889036, 2350.00, 13);
INSERT INTO PRODUTO VALUES(NULL, 'CALÇA JOGGER MASCULINA PRETA 40', 66523000, 89.00, 14);
INSERT INTO PRODUTO VALUES(NULL, 'CONTROLE XBOX SERIES X', 5866321, 309.09, 15);
INSERT INTO PRODUTO VALUES(NULL, 'CAMISA SOCIAL AZUL MARINHO 2', 698850, 99.99, 16);
INSERT INTO PRODUTO VALUES(NULL, 'KIT 3 CAMISAS SOCIAIS', 33360487, 179.90, 17);
INSERT INTO PRODUTO VALUES(NULL, 'MOUSE MULTILASER + MOUSEPAD', 1021021, 59.90, 1);
INSERT INTO PRODUTO VALUES(NULL, 'LUMINÁRIA ASTRA', 320888, 499.99, 18);
INSERT INTO PRODUTO VALUES(NULL, 'FONDE DE OUVIDO KIMASTER K1', 36952036, 99.99, 19);
INSERT INTO PRODUTO VALUES(NULL, 'CAMISETA BATMAN G', 558893, 49.00, 20);
INSERT INTO PRODUTO VALUES(NULL, 'CADERNO 20 MATÉRIAS + KIT CANETAS ESFEROGRÁFICAS', 01265870, 34.79, 21);
INSERT INTO PRODUTO VALUES(NULL, 'ALISADOR TRAMONTINA', 989900, 119.90, 22);
INSERT INTO PRODUTO VALUES(NULL, 'IPHONE 13 XS', 44415887, 8659.00, 23);
INSERT INTO PRODUTO VALUES(NULL, 'MEIAS FEMININAS TAMANHO ÚNICO', 66598700, 49.99, 25);
INSERT INTO PRODUTO VALUES(NULL, 'BRINQUEDO PISTA HOTWEELS', 1115800, 189.99, 26);
INSERT INTO PRODUTO VALUES(NULL, 'CAMISETA VINGADORES - HULK', 63998741, 109.00, 27);
INSERT INTO PRODUTO VALUES(NULL, 'CAMISETA VINGADORES - HOMEM DE FERRO', 74874000, 109.00, 28);
INSERT INTO PRODUTO VALUES(NULL, 'SAMSUNG A32 128GB', 3600214, 1899.00, 29);
INSERT INTO PRODUTO VALUES(NULL, 'SAMSUNG S21 256GB', 69874100, 2600.00, 30);
INSERT INTO PRODUTO VALUES(NULL, 'TABLET SAMSUNG A8', 0123655, 1499.00, 31);
INSERT INTO PRODUTO VALUES(NULL, 'CAMISA POLO M', 87789965, 79.99, 32);
INSERT INTO PRODUTO VALUES(NULL, 'PS5 MÍDIA FÍSICA', 77784223, 4999.99, 8);
INSERT INTO PRODUTO VALUES(NULL, 'FONE DE OUVIDO JBL X23', 46550399, 399.99, 11);
INSERT INTO PRODUTO VALUES(NULL, 'CAMISA POLO M', 87781965, 79.99, 17);
INSERT INTO PRODUTO VALUES(NULL, 'FILTRO DE LINHA GERDAU', 66598000, 39.99, 2);
INSERT INTO PRODUTO VALUES(NULL, 'CONJUNTO INFANTIL PRINCESAS', 748748745, 119.99, 12);
INSERT INTO PRODUTO VALUES(NULL, 'SMARTPHONE XIAOMI F3', 8740000, 1800.00, 16);


SELECT * FROM CLIENTE;
SELECT * FROM ENDERECO; 
SELECT * FROM TELEFONE; 
SELECT * FROM PRODUTO;


/* AND - OR */

/* Trazer clientes do sexo masculino e o email */

Select NOME, SEXO, EMAIL
FROM CLIENTE
WHERE SEXO = 'MASC';


/* JOIN COM AS PRINCIPAIS COLUNAS DE CADA TABELA */

SELECT C.NOME, C.SEXO, C.EMAIL, E.RUA, E.NUMERO, E.BAIRRO, E.CIDADE, E.ESTADO, T.NUMERO, T.TIPO, P.ITEM, P.VALORVENDA
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.iD_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN PRODUTO P
ON C.IDCLIENTE = P.ID_CLIENTE;


/* JOIN - TRAZER CLIENTES DO SEXO MASCULINO DO ESTADO DE SP  'E'  SEUS EMAILS */

SELECT C.NOME, C.SEXO, C.EMAIL, E.ESTADO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE SEXO = 'MASC' AND (ESTADO = 'SP');


/* TRAZER CLIENTES COM SEUS TELEFONES, DO SEXO FEMININO  'OU' QUE SEJAM DO ESTADO DO RJ */

SELECT C.NOME, C.SEXO, T.NUMERO, T.TIPO, E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE SEXO = 'FEM' OR ESTADO = 'RJ';



/* TRAZER CLIENTES DO SEXO MASCULINO  'OU' QUE SEJAM DO ESTADO DO PE  'E'  SP */

SELECT C.NOME, C.SEXO, E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE SEXO = 'MASC' OR (ESTADO = 'SP' OR 'PE');


/* TRAZER CLIENTES DO ESTADO DE SP, EMAIL E SUAS RESPECTIVAS COMPRAS EM ORDEM ALFABÉTICA */

SELECT C.NOME, C.EMAIL, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, P.ITEM, P.VALORVENDA AS 'VALOR $'
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN PRODUTO P
ON C.IDCLIENTE = P.ID_CLIENTE
WHERE ESTADO = 'SP'
ORDER BY NOME ASC;


/* UPDATE ALTERAR EMAIL DO CLIENTE WILLIAN DE WILLIAN22NEVES@GMAIL.COM PARA WILLIAN16NEVES@GMAIL.COM */

select * FROM CLIENTE;

UPDATE CLIENTE
SET EMAIL ='WILLIAN16NEVES@GMAIL.COM'
WHERE IDCLIENTE = 7;


/* UPDATE - ALTERAR TELEFONE DO CLIENTE IDCLIENTE 8 PARA 21955550000 */

SELECT * FROM CLIENTE;
SELECT * FROM ENDERECO;
SELECT * FROM TELEFONE;

UPDATE TELEFONE
SET NUMERO = 21955550000
WHERE IDTELEFONE = 9;



/* IFNULL - UTILIZAR IFNULL EM UM RELATÓRIO QUE APONTE OS CLIENTES, EMAILS E COMPRAS REALIZADAS */

SELECT C.NOME AS 'CLIENTE', IFNULL(C.EMAIL, 'NÃO POSSUI EMAIL') AS 'EMAIL' , P.ITEM AS 'PRODUTO'
FROM CLIENTE C 
INNER JOIN PRODUTO P
ON C.IDCLIENTE = P.ID_CLIENTE;



/* CRIAR UMA VIEW QUE APONTE O RELATÓRIO COM TODOS OS CLIENTES, ESTADO, PRODUTO E CÓDIGO */

Create view v_relatorio AS
SELECT C.NOME, C.SEXO, C.EMAIL, E.ESTADO, P.ITEM, P.CODIGO, P.VALORVENDA
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN PRODUTO P
ON C.IDCLIENTE = P.ID_CLIENTE;


SELECT * FROM V_RELATORIO;

DESC CLIENTE;



 /* FAZER UMA PROCEDURE QUE REALIZE INSERT */
 
DELIMITER $
CREATE PROCEDURE CAD_CLIENTES(P_NOME VARCHAR(50), P_SEXO ENUM('MASC' , 'FEM'), P_CPF VARCHAR(15), P_EMAIL VARCHAR(50) )
BEGIN
	INSERT INTO CLIENTE VALUES(NULL, P_NOME, P_SEXO, P_CPF, P_EMAIL);
END
$

DELIMITER ; 

CALL CAD_CLIENTES('LUIS FIGO',	'MASC',	23123412300, 'LUIS_FIGO10@GMAIL.COM');




DELIMITER $
CREATE PROCEDURE CAD_ENDERECO(P_RUA VARCHAR(30), P_NUMERO INT, P_COMPLEMENTO VARCHAR(50), P_BAIRRO VARCHAR(30), P_CIDADE VARCHAR(30), P_CEP VARCHAR(10), P_ESTADO CHAR(2))
BEGIN
	INSERT INTO ENDERECO VALUES(NULL, P_RUA, P_NUMERO, P_COMPLEMENTO, P_BAIRRO, P_CIDADE, P_CEP, P_ESTADO, 37);
END
$

DELIMITER ; 

CALL CAD_ENDERECO('AV PORTUGAL', 157, 'AO LADO DA PADARIA', 'JD IZABEL', 'SOROCABA', '06560320', 'SP');

SELECT * FROM ENDERECO;

SHOW TABLES;




DELIMITER $
CREATE PROCEDURE CAD_TELEFONE(P_NUMERO VARCHAR(15), P_TIPO ENUM('CEL', 'RES', 'COM'))
BEGIN
	INSERT INTO TELEFONE VALUES(NULL, P_NUMERO, P_TIPO, 37);
END    
$

DELIMITER ;

CALL CAD_TELEFONE('15977896300', 'CEL');

SELECT NUMERO, ID_CLIENTE
FROM TELEFONE
WHERE NUMERO = '15977896300';

DESC PRODUTO;




DELIMITER $
CREATE PROCEDURE CAD_PRODUTOS(P_ITEM VARCHAR(50), P_CODIGO INT, P_VALORVENDA FLOAT(10 , 2))
BEGIN
	INSERT INTO PRODUTO VALUES(NULL, P_ITEM, P_CODIGO, P_VALORVENDA, 39);
END
$

DELIMITER ;

CALL CAD_PRODUTOS('RELÓGIO TOMMY HILFIGER MASCULINO PRETO/PRATA', 87400317, 500.00);

SELECT * FROM PRODUTO;
  
  
  
/* TRAZER A MAIOR COMPRA EM VALOR REALIZADA NO ESTADO DO RJ */

SELECT E.ESTADO, MAX(VALORVENDA) AS 'MAIOR VENDA'
FROM ENDERECO E
INNER JOIN PRODUTO P
ON E.ID_CLIENTE = P.ID_CLIENTE
WHERE ESTADO = 'RJ';

SELECT * FROM ENDERECO;
SELECT * FROM PRODUTO;


/* TRAZER A MENOR COMPRA EM VALOR REALIZADA NO ESTADO DO SP E O NOME DO COMPRADOR */

SELECT E.ESTADO, MIN(P.VALORVENDA) AS 'MENOR VENDA', C.NOME
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN PRODUTO P
ON C.IDCLIENTE = P.ID_CLIENTE
WHERE ESTADO = 'SP';


 
/* TRAZER A MEDIA DE TODOS OS PRODUTOS COMPRADOS POR CLIENTES DE SP */
 
 SELECT E.ESTADO, TRUNCATE( AVG(P.VALORVENDA),2 )AS 'MEDIA DE VENDAS'
 FROM ENDERECO E
 INNER JOIN PRODUTO P
 ON E.ID_CLIENTE = P.ID_CLIENTE
 WHERE ESTADO = 'SP';
 
 
SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, E.ESTADO, P.ITEM, P.CODIGO, P.VALORVENDA
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN PRODUTO P
ON C.IDCLIENTE = P.ID_CLIENTE
WHERE ESTADO = 'RJ';



/* TRAZER A SOMATÓRIA DAS COMPRAS REALIZADAS NO RJ */

SELECT E.ESTADO, TRUNCATE( SUM(P.VALORVENDA), 2 )
FROM ENDERECO E
INNER JOIN PRODUTO P
ON E.ID_CLIENTE = P.ID_CLIENTE
WHERE ESTADO = 'RJ';



/* SOMATÓRIA DE VENDAS POR ESTADO */

SELECT E.ESTADO, TRUNCATE(SUM(P.VALORVENDA), 2 ) AS "SOMATÓRIA DE VENDAS POR ESTADO"
FROM ENDERECO E
INNER JOIN PRODUTO P
ON E.ID_CLIENTE = P.ID_CLIENTE
GROUP BY ESTADO;



/* TRAZER AS VENDAS POR SEXO */

SELECT C.SEXO, TRUNCATE( SUM(P.VALORVENDA), 2) AS "SOMATORIA DE VENDAS"
FROM CLIENTE C
INNER JOIN PRODUTO P
ON C.IDCLIENTE = P.ID_CLIENTE
GROUP BY SEXO;



/* TRAZER O CLIENTE COM A MAIOR COMPRA DO ECOMMERCE  ---  SUBQUERIE */

SELECT C.NOME, C.SEXO, E.ESTADO, P.VALORVENDA
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN PRODUTO P
ON C.IDCLIENTE = P.ID_CLIENTE
WHERE P.VALORVENDA = (SELECT MAX(VALORVENDA) FROM PRODUTO);



/* Somatória de compras de cada cliente */

Select c.nome, Sum(truncate(p.valorvenda,2)) as "valor compra"
From Cliente c
Inner Join Endereco e
On c.idcliente = e.id_cliente
Inner Join Produto p
On c.idcliente = p.id_cliente
group by c.nome;


Select c.idcliente, c.nome, e.cidade, e.estado, p.item, p.valorvenda
From Cliente c
Inner Join Endereco e
On c.idcliente = e.id_cliente
Inner Join Produto p
On c.idcliente = p.id_cliente;

use ecommerce;

Select Count(idcliente)
from cliente;

select * from cliente;