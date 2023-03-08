CREATE SCHEMA IF NOT EXISTS ESTUDO_DIRIGIDO DEFAULT CHARACTER SET utf8;
USE ESTUDO_DIRIGIDO;
CREATE TABLE IF NOT EXISTS ESTUDO_DIRIGIDO . Alunos(
Nome VARCHAR(40) NULL,
idade TINYINT(3) NULL,
Sexo CHAR(1) NULL,
Altura FLOAT NULL,
Peso FLOAT NULL,
Nacionalidade VARCHAR(30) default 'teste');

drop table Alunos;
drop database ESTUDO_DIRIGIDO;

CREATE SCHEMA IF NOT EXISTS ESTUDO;
CREATE TABLE IF NOT EXISTS ESTUDO.estudante(/* criando a tabela alunos */
  idestudante int not null auto_increment, /*definindo o caampo chave primaria */
  Nome VARCHAR(40)NOT NULL,
  Nascimento date,
  Sexo enum('m','f'),
  Altura decimal(5,2),
  Peso decimal(5,2),
  Nacionalidade VARCHAR(30),
  primary key (idestudante)
  );

CREATE TABLE IF NOT EXISTS ESTUDO.prof (/* criando a tabela professores */
idprof int not null auto_increment, /*definindo o campo chave primaria */ 
Nome VARCHAR(40) NOT NULL, /* nome do professor*/
Nascimento date, /* data de nascimento professor*/
Sexo enum ('m', 'f'), /* gênero do professor*/
Altura decimal(5,2),
Peso decimal(5,2), 
Nacionalidade VARCHAR(30), /*nacionalidade do professor */
primary key (idprof) /* chave primária serve como único identificador da tabela, são representadas por aqueles campos que não recebem valores repetidos*/
);
  
INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Franciel','1965-07-20','m','1.75','100.0','Brasil');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Edilene','1980-04-18','f','1.70','70.0','Brasil');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Bruno','1983-08-01','m','1.65','75.0','Brasil');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Regis','1985-05-20','m','1.80','90.0','Brasil');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Vicente','1982-03-13','m','1.79','80.0','Brasil');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Natanael','1982-03-13','m','1.79','80.0','Brasil');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Maciel','1964-06-23','m','1.71','76.0','Italiano');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Mayara','1985-08-18','f','1.65','60.0','Brasil');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Marcell','1963-02-28','m','1.69','79.0','Brasil');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('lucas','1990-11-30','m','1.60','65.0','Brasil');

INSERT INTO `ESTUDO`.`prof` (`Nome`,`Nascimento`,`Sexo`,`Altura`,`Peso`,`Nacionalidade`)
VALUES ('Gizeli','1985-05-09','f','1.85','72.0','Brasil');

select * from ESTUDO.prof;
