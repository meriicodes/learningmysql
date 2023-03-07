CREATE SCHEMA IF NOT EXISTS ESTUDO_DIRIGIDO DEFAULT CHARACTER SET utf8;
USE ESTUDO_DIRIGIDO;
CREATE TABLE IF NOT EXISTS ESTUDO_DIRIGIDO.alunos(
Nome VARCHAR(40) NULL,
idade TINYINT (3) NULL,
Sexo CHAR(1) NULL,
Altura FLOAT NULL,
Peso FLOAT NULL,
Nacionalidade VARCHAR(30) default 'teste');

drop table alunos;
database ESTUDO DIRIGIDO;
/*  Tive que criar um novo esquema e tabela, já que havia um database com mesmo nome no computador*/ 

CREATE SCHEMA IF NOT EXISTS ESTUDO;
CREATE TABLE IF NOT EXISTS ESTUDO. estudante (/* criando a tabela alunos */
idestudante int not null auto_increment, /*definindo o campo chave primaria */
Nome VARCHAR(40) NOT NULL,
Nascimento date,
Sexo enum ('m', 'f'),
Altura decimal (5,2),
Peso decimal(5,2),
Nacionalidade VARCHAR(30),
primary key (idestudante)
) 

CREATE TABLE IF NOT EXISTS ESTUDO.prof (/* criando a tabela alunos */
idestudante int not null auto_increment, /*definindo o campo chave primaria */ 

Nome VARCHAR(40) NOT NULL, /* nome do professor*/
Nascimento date, /* data de nascimento professor*/
Sexo enum ('m', 'f'), /* gênero do professor*/
Nacionalidade VARCHAR(30), /*nacionalidade do professor */
primary key (idprof) /* chave primária serve como único identificador da tabela, são representadas por aqueles campos que não recebem valores repetidos*/
)
