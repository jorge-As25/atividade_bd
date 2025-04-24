CREATE DATABASE aula_pw_loja;
USE aula_pw_loja;

CREATE TABLE usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    data_nascimento INT,
    CPF VARCHAR (11),
    CNPJ INT,
    razaoSocial VARCHAR (200),
    email VARCHAR(200) NOt NULL,
    senha INT NOT NULL
    );
    
CREATE TABLE login(
	id_login INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(200) NOT NULL,
    hast_senha INT,
    CONSTRAINT fk_login_usuario FOREIGN KEY (id_login) REFERENCES usuario(id_usuario)
    );
    
    INSERT INTO usuario (nome, data_nascimento,CPF, CNPJ, razaoSocial, email, senha) VALUES (
    ('O mestre dos mestres', '25/06/2006', 'hoje', '234', 'sla', 'jorge@sla', 'sla tbm')
    );

	select * from usuario;
