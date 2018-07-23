CREATE SEQUENCE SEQ_CLIENTE MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1020 CACHE 20 NOORDER NOCYCLE;
CREATE SEQUENCE SEQ_PRODUTO MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1020 CACHE 20 NOORDER NOCYCLE;
CREATE SEQUENCE SEQ_VENDA MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1020 CACHE 20 NOORDER NOCYCLE;

CREATE TABLE CLIENTE (
  "ID"     NUMBER(10) PRIMARY KEY ,
  "NOME"   VARCHAR2(50)
);

CREATE TABLE PRODUTO (
  "ID"            NUMBER(10) PRIMARY KEY ,
  "DESCRICAO"     VARCHAR2(50),
  "COD_BARRA"     VARCHAR2(50),
  "PRECO_MEDIO"   NUMBER(10,2)
);

CREATE TABLE VENDA (
  "ID"              NUMBER(10) PRIMARY KEY,
  "ID_CLIENTE"      NUMBER(10),
  "ID_PRODUTO"      NUMBER(10),
  "PRECO_VENDIDO"   NUMBER(10,2),
  "DATA_VENDA"      DATE
);

ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_CLIENTE FOREIGN KEY ( ID_CLIENTE ) REFERENCES CLIENTE ( ID );
ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_PRODUTO FOREIGN KEY ( ID_PRODUT" ) REFERENCES PRODUTO ( ID );




