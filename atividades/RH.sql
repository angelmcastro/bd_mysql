-- Banco de dados para RH

CREATE DATABASE db_rhempresa;
USE db_rhempresa;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
salario decimal(8,2),
cargo varchar(255),
PRIMARY KEY (id)
);

-- inserir os dados dos funcionários

INSERT INTO tb_funcionarios (nome, idade, salario, cargo)
VALUES ("Angela Castro", 24, 3000.00, "dev jr");

INSERT INTO tb_funcionarios (nome, idade, salario, cargo)
VALUES ("Barbara Mendonça", 19, 1500.00, "recepcionista");

INSERT INTO tb_funcionarios (nome, idade, salario, cargo)
VALUES ("Ana Costa", 37, 5000.00, "diretora");

INSERT INTO tb_funcionarios (nome, idade, salario, cargo)
VALUES ("Daniel Sousa", 42, 7500.00, "vice-presidente");

INSERT INTO tb_funcionarios (nome, idade, salario, cargo)
VALUES ("Fernanda Oliveira", 49, 9500.00, "presidente");

-- colocar o salario para visualizar em reais

SELECT *, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS salário FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 2350.00 WHERE id = 2;







