CREATE DATABASE TesteConfirp

USE TesteConfirp

CREATE TABLE SEXO (
    Id int IDENTITY(1,1) PRIMARY KEY,
    Descricao varchar(50)
);

INSERT INTO SEXO(Descricao)values('Masculino');
INSERT INTO SEXO(Descricao)values('Feminino');


CREATE TABLE CLIENTE(
Id int IDENTITY(1,1) PRIMARY KEY,
Nome varchar(200),
DataNascimento varchar(200),
IdSexo int FOREIGN KEY REFERENCES SEXO(Id))