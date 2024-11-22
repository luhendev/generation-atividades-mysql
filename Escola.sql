CREATE DATABASE db_escola;

USE db_escola;
USE sys;

CREATE TABLE tb_escola(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
ensino VARCHAR(255),
turma VARCHAR(1),
notamedia DECIMAL NOT NULL,
matricula DATE
);

SELECT * FROM tb_escola;

INSERT INTO tb_escola (nome, ensino, turma, notamedia, matricula)
VALUES	("Emerson Sheike", "Médio", "A", 5, "2023-01-20"),
		("Elsa Frozen", "Médio", "C", 9, "2023-01-25"),
        ("Pedro Alves", "Médio", "D", 3, "2023-01-28"),
		("Lorena Souza", "Médio", "B", 10, "2023-01-16"),
        ("Maria Clara", "Médio", "C", 8, "2023-01-25"),
        ("Lucas Henrique", "Médio", "B", 7, "2023-01-17"),
        ("Naiara Melo", "Médio", "D", 8, "2023-01-08"),
		("Vitor Silva", "Médio", "A", 7, "2023-01-18");
        
SELECT * FROM tb_escola WHERE notamedia >= 7;

SELECT * FROM tb_escola WHERE notamedia < 7;

-- Atualizando dados na Tabela

UPDATE tb_escola SET turma = "A" WHERE id = 1;
