CREATE TABLE planos (
	id_plano SERIAL PRIMARY KEY NOT NULL,
	preco DECIMAL(6,2) NOT NULL,
		CONSTRAINT ck_planos CHECK(preco > 0)
);

--- criando tabela de diretores
CREATE TABLE diretores (
	id_diretor SERIAL PRIMARY KEY NOT NULL,
	nome_diretor VARCHAR(60) NOT NULL
);

--- CRIANDO A TABELA DE GENEROS
CREATE TABLE generos (
	id_genero SERIAL PRIMARY KEY NOT NULL,
	nome VARCHAR(50) NOT NULL
);

-- CRIANDO A TABELA DE USUARIOS
CREATE TABLE usuarios (
	id_usuario SERIAL PRIMARY KEY NOT NULL,
	email_usuario VARCHAR(80) NOT NULL,
	id_plano INTEGER NOT NULL,
		CONSTRAINT fk_usuario_plano
			FOREIGN KEY(id_plano) REFERENCES planos (id_plano)
);

----- criando a tabela de filmes
CREATE TABLE filmes (
	id_filme SERIAL PRIMARY KEY NOT NULL,
	titulo VARCHAR(120) NOT NULL,
	ano INTEGER,
	id_genero INTEGER NOT NULL,
	id_diretor INTEGER NOT NULL,
		CONSTRAINT fk_generos_filmes
			FOREIGN KEY(id_genero) REFERENCES generos(id_genero),
		CONSTRAINT fk_diretor_filme
			FOREIGN KEY(id_diretor) REFERENCES diretores(id_diretor)

);

---- CRIANDO A TABELA ASSOCIATIVA NTRE FILMES E USUARIOS
CREATE TABLE assistidos (
	id_usuario INTEGER NOT NULL,
	id_filme INTEGER NOT NULL,
		CONSTRAINT pk_assistidos PRIMARY KEY(id_usuario, id_filme),
		CONSTRAINT fk_assistidos_usuarios
			FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
		CONSTRAINT fk_assistidos_filmes
			FOREIGN KEY (id_filme) REFERENCES filmes(id_filme)
 
);
















