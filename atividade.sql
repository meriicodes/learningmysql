- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ESTUDO_DIRIGIDO` DEFAULT CHARACTER SET utf8 ;
USE `ESTUDO_DIRIGIDO` ;

-- Table `teste_banco`.`pessoas`

CREATE TABLE IF NOT EXISTS `ESTUDO_DIRIGIDO`.`pessoas` (
  `nome` VARCHAR(45) NULL,
  `idade` INT NULL,
  `altura` INT NULL,
  `nacionalidade` VARCHAR(45) NULL,
  `sexo` CHAR(1) NULL)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS pessoas ( -- CRIA A TABELA PESSOAS
  IdPessoas INT NOT NULL auto_increment, -- CAMPO CHAVE PRIMÁRIA
  nome VARCHAR(45) NOT NULL, -- CAMPO NOME NÃO NULOY
  idade tinyint(3),
  altura DECIMAL(5,2),
  nacionalidade VARCHAR(45) ,
  sexo ENUM ('M', 'F'),
  PRIMARY KEY (IdPessoas)
  );
  DESC PESSOAS;
  
  ALTER TABLE PESSOAS
  ADD COLUMN TESTE VARCHAR(20); -- adiciona coluna teste
  
  ALTER TABLE PESSOAS
  ADD TESTE VARCHAR(20) FIRST; -- coloca a coluna teste primeiro 
  
  ALTER TABLE PESSOAS
  DROP COLUMN TESTE; -- tira a coluna teste
  
  drop table pessoas;
  
INSERT INTO `ESTUDO_DIRIGIDO`.`pessoas` (`nome`, `idade`, `altura`, `nacionalidade`, `sexo`) 
VALUES ('Maria Vitória', '17', '1.56', 'Brasil', 'F');

INSERT INTO pessoas (nome, idade, altura, nasc, sexo) VALUES 
('Fernando Antônio', '29', '1.78', 'Argentina', 'M'),
('Gabriel Cipaúba', '18', '1.50', 'Brasil', 'M'),
('Fernando Antônio', '23', '1.78', 'Brasil', 'M'),
('Cristina Oliveira', '39', '1.50', 'Brasil', 'F'),
('Fernanda Simeão', '26', '1.78', 'Bolívia', 'F'),
('Januário Antão', '31', '1.50', 'Brasil', 'M'),
('Jéssica Cristina', '25', '1.78', 'Chile', 'F'),
('Miguelina Saraiva', '44', '1.50', 'Brasil', 'F'),
('Adriano Antão', '18', '1.78', 'EUA', 'M'),
('Santana do Agreste', '19', '1.50', 'Brasil', 'F'),
('Teresa Cristina', '22', '1.78', 'Argentina', 'F'),
('Eliana de Moraes', '18', '1.50', 'Brasil', 'F');

SELECT idpessoas, nome as 'NOME DO INDIVÍDUO', sexo AS 'HOMI OU MUIER' 
FROM PESSOAS;

SELECT idpessoas, nome as 'NOME DO INDIVÍDUO', sexo AS 'HOMI OU MUIER' 
FROM PESSOAS
ORDER BY NOME;

SELECT idpessoas, nome as 'NOME DO INDIVÍDUO', sexo AS 'HOMI OU MUIER' 
FROM PESSOAS
ORDER BY NOME DESC;

SELECT idpessoas, nome as 'NOME DO INDIVÍDUO', sexo  
FROM PESSOAS
WHERE IDPESSOAS = '3' OR IDPESSOAS = '10';

SELECT idpessoas, nome as 'NOME DO INDIVÍDUO', sexo  
FROM PESSOAS
WHERE NOME LIKE '%C%';

SELECT idpessoas, nome as 'NOME DO INDIVÍDUO', IDADE, sexo  
FROM PESSOAS
WHERE  IDADE < '20';

SELECT idpessoas, nome as 'NOME DO INDIVÍDUO', IDADE, sexo  
FROM PESSOAS
WHERE  IDADE <= '18';

SELECT idpessoas, nome as 'NOME DO INDIVÍDUO', IDADE, sexo  
FROM PESSOAS
WHERE  IDADE >= '25';

SELECT idpessoas, nome as 'NOME DO INDIVÍDUO', IDADE, sexo  
FROM PESSOAS
WHERE  IDADE between '25' AND 30
ORDER BY NOME;

SELECT * FROM PESSOAS;
DESC PESSOAS;

ALTER TABLE PESSOAS
CHANGE COLUMN NACIONALIDADE NASC VARCHAR(20);

ALTER TABLE PESSOAS
RENAME TO INDIVIDUOS;

UPDATE PESSOAS
SET NASC='Peru' where IdPessoas = '5'; 
