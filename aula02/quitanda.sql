-- Criar banco de dados
create database db_quitanda;

-- selecionar bd

USE db_quitanda;

-- criar tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

-- inserir dados tb

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("chuchu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 80, "2022-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("cenoura", 30, "2022-03-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("morango", 1, "2022-03-20", 8.50);

-- listar todos os produtos

SELECT * FROM tb_produtos;

-- atualizar dados

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_produtos SET preco = 8.50 WHERE id = 5;

DELETE FROM tb_produtos WHERE id = 3;

/* Alterações na estrutura da tabela*/

ALTER TABLE tb_produtos MODIFY preco decimal(8,2);
ALTER TABLE tb_produtos ADD descricao varchar(255);