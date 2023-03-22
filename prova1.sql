-- AVAIAÇÃO DE BANCO DE DADOS - 2o ANO F - DATA: 22/03/2023 --
-- ORIENTAÇÕES: AS RESPONSTAS DEVEM SER INSERIDAS EM ARQUIVO SCRIPT SQL NO FORMATO DE COMENTÁRIOS, QUANDO FOR MAIS DE UMA LINHA UTILIEZE
-- /* NO INÍCIO E NO FINAL DO COMENTÁRIO */ E QUANDO FOR SOMENTE DE UMA LINHA UTILIZE --

-- 01. CRIE UM BANCO DE DADOS COM O NOME DE "PROVA".
-- create database prova;

-- 02. FORMULE UM CONCEITO PARA BANCO DE DADOS 
-- banco de dados são lugares onde informações relacionadas são organizadas e armazenadas

-- 03. FORMULE UM CONCEITO DE CHAVE PRIMÁRIA 
-- chave primaria é uma chave unica usada como registro na tabela

-- 04. CONSTRUA A TABELA ABAIXO NO BANCO PROVA

CREATE TABLE IF NOT EXISTS `prova`.`CADASTRO` (
  NOME_CLIENTE VARCHAR(45),
  NASCIMENTO_CLIENTE DATE, 
  NACIONALIDADE_CLIENTE VARCHAR(45),
  SEXO_CLIENTE CHAR(1),
  CONTATO_CLIENTE VARCHAR(20),
  CPF_CLIENTE INT,
  CIDADE_CLIENTE VARCHAR(25)
  ) ENGINE = InnoDB;
  
  -- minha resposta --
  /* use prova;
  CREATE TABLE IF NOT EXISTS `prova`.`CADASTRO` (
  NOME_CLIENTE VARCHAR(45),
  NASCIMENTO_CLIENTE DATE, 
  NACIONALIDADE_CLIENTE VARCHAR(45),
  SEXO_CLIENTE CHAR(1),
  CONTATO_CLIENTE VARCHAR(20),
  CPF_CLIENTE INT,
  CIDADE_CLIENTE VARCHAR(25)
  ) ENGINE = InnoDB;*/
  
-- 05. RECONSTRUIR A TABELA ACIMA REDEFININDO OS CAMPOS COM MELHOR ESTRUTURA E INSERINDO COMENTÁRIO LINHA A LINHA
-- minha resposta --
CREATE TABLE IF NOT EXISTS `prova`.`CADASTRO` ( -- cria uma tabela se não existir a tabela cadastro
  NOME VARCHAR(45), -- nome do aluno com até 45 caracteres com o dado do tipo varchar
  NASCIMENTO DATE, -- data de nascimento do aluno
  NACIONALIDADE VARCHAR(45), -- nacionalidade do aluno com max de 45 caracteres
  SEXO enum('m','f'), -- sexo do aluno, que só pode ser definido por 'm' e 'f'
  CONTATO VARCHAR(10), -- o telefone do aluno com no maximo 10 caracteres
  CPF INT, -- cpf do aluno
  CIDADE VARCHAR(25) -- a cidade do cliente
  ) ENGINE = InnoDB;

-- 06. CRIAR UM CAMPO CHAVE NA TABELA DA QUESTÃO 04
-- minha resposta --
/* CREATE TABLE IF NOT EXISTS `prova`.`CADASTRO` (
idalunos int not null auto_increment,
  NOME_CLIENTE VARCHAR(45),
  NASCIMENTO_CLIENTE DATE, 
  NACIONALIDADE_CLIENTE VARCHAR(45),
  SEXO_CLIENTE CHAR(1),
  CONTATO_CLIENTE VARCHAR(20),
  CPF_CLIENTE INT,
  CIDADE_CLIENTE VARCHAR(25)
  ) ENGINE = InnoDB; */ 

-- 07. ADD O CAMPO IDENTIDADE DEPOIS DO CAMPO CPF.
--  minha resposta --
ALTER TABLE prova.CADASTRO 
ADD column id int after cpf; 

CREATE TABLE IF NOT EXISTS `prova`.`CADASTRO` (
idalunos int not null auto_increment,
  NOME VARCHAR(45),
  NASCIMENTO DATE, 
  NACIONALIDADE VARCHAR(45),
  SEXO CHAR(1),
  CONTATO VARCHAR(20),
  CPF INT,
  ID int,
  CIDADE VARCHAR(25)
  ) ENGINE = InnoDB;

-- 08. POVOAR A TABELA DA QUESTÃO 04 COM O MAIOR NÚMERO DE REGISTRO POSSIVEIS
-- minha reposta --
use prova;
INSERT INTO CADASTRO (`Nome`,`Nascimento`,`nacionalidade`,`sexo`,`contato`,`cpf`, `id`, `cidade`)
VALUES ('Addie Larue','1985-07-09','Francesa','f','080028922','9876', '76547861', 'Paris');

INSERT INTO CADASTRO (`Nome`,`Nascimento`,`nacionalidade`,`sexo`,`contato`,`cpf`, `id`, `cidade`)
VALUES ('Harry Potter','1978-05-10','Ingles','m','087098923','1835', '98893491', 'Alfaneiros');

INSERT INTO CADASTRO (`Nome`,`Nascimento`,`nacionalidade`,`sexo`,`contato`,`cpf`, `id`, `cidade`)
VALUES ('Annabeth Chase','1998-09-09','Americana','f','087096922','3555', '79847491', 'Nova York');

INSERT INTO CADASTRO (`Nome`,`Nascimento`,`nacionalidade`,`sexo`,`contato`,`cpf`, `id`, `cidade`)
VALUES ('Eloisa Lopes','2006-11-06','Italiana','f','905496987','3479', '77868502', 'Roma');

INSERT INTO CADASTRO (`Nome`,`Nascimento`,`nacionalidade`,`sexo`,`contato`,`cpf`, `id`, `cidade`)
VALUES ('Carlos Gabriel','2006-01-05','Alemão','m','708096922','90976', '908474654', 'Berlim');

select * from prova.CADASTRO; 

-- 09. CONSTRUIR PELO MENOS TRÊS CONSULTAS UTILIZANDO OS  COMANDOS "ORDER BY", "WHERE" E "LIKE"
-- minha resposta --

SELECT * FROM `prova`.`CADASTRO`
order by `nome` asc;

SELECT * FROM `prova`.`CADASTRO`
where year `nascimento` >= 1978;

SELECT * FROM `prova`.`CADASTRO`
where `nome` like %h%;
