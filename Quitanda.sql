CREATE DATABASE db_quitanda;

USE db_quitanda;

USE sys;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(255),
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES
("Tomate", 5, "2023-12-15", 9.00),
("Maçã", 20, "2023-12-15", 5.00),
("Laranja", 50, "2023-12-15", 10.00),
("Banana", 200, "2023-12-15", 12.00),
("Uva", 1200, "2023-12-15", 30.00),
("Pêra", 500, "2023-12-15", 2.99);

-- Selecionando dados da Tabela
SELECT * FROM tb_produtos;

SELECT nome, id FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE nome IN ("Tomate", "Uva");

SELECT * FROM tb_produtos WHERE preco >= 5;

SELECT * FROM tb_produtos WHERE preco >= 5 or quantidade < 100;

--

SET SQL_SAFE_UPDATES = 0;

-- Atualizando dados na Tabela

UPDATE tb_produtos SET preco = 5 WHERE id = 2;

DELETE FROM tb_produtos WHERE id = 2;

DELETE FROM tb_produtos WHERE id in (8,12,11,10,9,8,7,6,5,4,3);

-- Modificando a Estrutura da Tabela

ALTER TABLE tb_produtos CHANGE preco preco DECIMAL(6,2);

DROP TABLE tb_produtos;