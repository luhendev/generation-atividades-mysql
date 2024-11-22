CREATE DATABASE db_rh;

USE db_rh;
USE sys;

CREATE TABLE tb_rh(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
cargo VARCHAR(255),
departamento VARCHAR(255),
datainicio DATE,
salario DECIMAL NOT NULL
);

SELECT * FROM tb_rh;

INSERT INTO tb_rh (nome, cargo, departamento, datainicio, salario)
VALUES	("Emerson Marques", "Caminhoneiro", "Logistica", "2010-12-25", 4000.00),
		("Lucas Henrique", "Suporte Técnico", "T.I", "2015-05-11", 1900.00),
		("Vitor Cavalcante", "Personal Trainer", "Bem-Estar", "2013-02-04", 2100.00),
        ("Beatriz Santos", "Operador de Site", "Logistica", "2009-07-18", 2400.00),
        ("Rodrigo Faro", "Desenvolvedor de Sistemas", "T.I", "2013-01-09", 6000.00);
        
SELECT * FROM tb_rh WHERE salario >= 2000;

SELECT * FROM tb_rh WHERE salario < 2000;

-- Atualizando dados na Tabela

UPDATE tb_rh SET salario = 1950.00 WHERE id = 2;

-- Modificando a Estrutura da Tabela

ALTER TABLE tb_rh CHANGE salario salario DECIMAL(7,2);
