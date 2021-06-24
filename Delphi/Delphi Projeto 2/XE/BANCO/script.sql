/* cria generator para o campo usuário */

create generator GEN_ID_USUARIO;


/* criar a trigger para usuario */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_USUARIO FOR USUARIO active
 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_USUARIO=GEN_ID(GEN_ID_USUARIO,1);
END^

SET TERM ; ^



INSERT INTO USUARIO(NOME,SENHA,TIPO, CADASTRO)
VALUES('EDIVALDO','147','ADM','02.05.2020');



INSERT INTO USUARIO(NOME,SENHA,TIPO, CADASTRO)
VALUES('ROBERTO','148','ADM','02.05.2020');

SELECT * FROM USUARIO;

/* cria generator para o campo cliente */

create generator GEN_ID_CLIENTE;


/* criar a trigger para cliente */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_CLIENTE FOR CLIENTE active
 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_CLIENTE=GEN_ID(GEN_ID_CLIENTE,1);
END^

SET TERM ; ^


/* cria generator para o campo empresa */

create generator GEN_ID_EMPRESA;


/* criar a trigger para empresa */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_EMPRESA FOR EMPRESA active
 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_EMPRESA=GEN_ID(GEN_ID_EMPRESA,1);
END^

SET TERM ; ^


/* cria generator para o campo fornecedores */

create generator GEN_ID_FORNECEDOR;


/* criar a trigger para fornecedores */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORNECEDOR FOR FORNECEDOR active
 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_FORNECEDOR=GEN_ID(GEN_ID_FORNECEDOR,1);
END^

SET TERM ; ^

/* cria generator para o campo produtos */

create generator GEN_ID_PRODUTO;


/* criar a trigger para produtos */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_PRODUTO FOR PRODUTO active
 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_PRODUTO=GEN_ID(GEN_ID_PRODUTO,1);
END^

SET TERM ; ^



/* cria generator para o campo pagamento */

create generator GEN_ID_FORMA_PGTO;


/* criar a trigger para pagamento */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORMA_PGTO FOR FORMA_PGTO active
 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_FORMA_PGTO=GEN_ID(GEN_ID_FORMA_PGTO,1);
END^

SET TERM ; ^


/* cria generator para o campo compras */

create generator GEN_ID_USUARIO;


/* criar a trigger para compras */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_USUARIO FOR USUARIO active
 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_USUARIO=GEN_ID(GEN_ID_USUARIO,1);
END^

SET TERM ; ^
