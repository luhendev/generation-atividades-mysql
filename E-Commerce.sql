CREATE DATABASE db_ecommerce;

USE db_ecommerce;
USE sys;

CREATE TABLE tb_ecommerce(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
categoria VARCHAR(255),
estoque INT,
datacadastro DATE,
preco DECIMAL NOT NULL
);

SELECT * FROM tb_ecommerce;

INSERT INTO tb_ecommerce (nome, categoria, estoque, datacadastro, preco)
VALUES	("48 Leis do Poder", "Livro", 60, "2024-10-01", 70.00),
		("Berserk", "Mangá", 80, "2024-06-23", 52.00),
		("Ciência Todo Dia", "Revista", 100, "2024-04-30", 15.00),
        ("O Globo", "Jornal", 200, "2024-05-14", 6.00),
        ("Solo Leveling", "Manhwa", 30, "2024-08-09", 69.00),
        ("Coleção de One Piece", "Mangá", 7, "2024-11-21", 900.00);
        
SELECT * FROM tb_ecommerce WHERE preco >= 500;

SELECT * FROM tb_ecommerce WHERE preco < 500;

-- Atualizando dados na Tabela

UPDATE tb_ecommerce SET preco = 71.00 WHERE id = 1;

-- Modificando a Estrutura da Tabela

ALTER TABLE tb_ecommerce CHANGE preco preco DECIMAL(7,2);
