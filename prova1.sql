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
VALUES ('Addie Larue','1985-07-09','Francesa','f','080028922','98765432101', '7654321', 'Paris');

select * from cadastro; 

-- 09. CONSTRUIR PELO MENOS TRÊS CONSULTAS UTILIZANDO OS  COMANDOS "ORDER BY", "WHERE" E "LIKE"
-- minha resposta --
