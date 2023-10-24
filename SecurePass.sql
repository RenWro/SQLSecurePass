CREATE DATABASE db_securepass;

USE db_securepass;

CREATE TABLE tb_tipoUsuario (
id Binary(16) NOT NULL,
tipo VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_usuario (
id BINARY(16) NOT NULL,
matricula NUMERIC(8) NOT NULL,
nome VARCHAR(60) NOT NULL,
area VARCHAR(255) NOT NULL,
email VARCHAR(50) NOT NULL,
dataNasc DATE NOT NULL,
funcao VARCHAR(60) NOT NULL,
sessao NUMERIC(3) NOT NULL,
face VARCHAR(255) NOT NULL,
id_tipoUsuario BINARY(16),
FOREIGN KEY (id_tipoUsuario) REFERENCES tb_tipoUsuario(id),
PRIMARY KEY(id)
);

CREATE TABLE tb_maquina (
id BINARY(16) NOT NULL,
nome VARCHAR(60) NOT NULL,
codigoMaquina INT NOT NULL,
PRIMARY KEY(id)
);


CREATE TABLE tb_usuarioMaquina (
id BINARY(16) NOT NULL,
permissao BOOL NOT NULL,
id_usuario BINARY(16),
id_maquina BINARY(16),
FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id),
FOREIGN KEY (id_maquina) REFERENCES tb_maquina(id),
PRIMARY KEY(id)
);

