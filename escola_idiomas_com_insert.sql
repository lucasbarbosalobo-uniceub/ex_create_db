-- criaçao da tabela professores
CREATE TABLE professores (
	cpf CHAR(11) NOT NULL,
	nome_professor VARCHAR(60),
		CONSTRAINT pk_professor PRIMARY KEY(cpf)
);

-- criacao da tabela de disciplinas
CREATE TABLE disciplinas (
	id_disciplina SERIAL NOT NULL,
	nome_disciplina VARCHAR(50) NOT NULL UNIQUE,
		CONSTRAINT pk_disciplina PRIMARY KEY (id_disciplina)
);

-- criacao da tabela de turmas
CREATE TABLE turmas (
	id_turma SERIAL NOT NULL,
	sala VARCHAR(20),
	cpf CHAR(11) NOT NULL,
	id_disciplina INTEGER NOT NULL,
		CONSTRAINT pk_turma PRIMARY KEY (id_turma),
		CONSTRAINT fk_turma_professor
			FOREIGN KEY(cpf) REFERENCES professores (cpf),
		CONSTRAINT fk_turma_disciplina
			FOREIGN KEY(id_disciplina) REFERENCES disciplinas (id_disciplina)
);

-- criacao da tabela de alunos
CREATE TABLE alunos (
	matricula SERIAL NOT NULL,
	nome_aluno VARCHAR(80) NOT NULL,
	id_turma INTEGER NOT NULL,
		CONSTRAINT pk_aluno PRIMARY KEY(matricula),
		CONSTRAINT fk_aluno_turma
			FOREIGN KEY (id_turma) REFERENCES turmas (id_turma)

)

-- inserindo registros da ia em professores
INSERT INTO professores (cpf, nome_professor)
VALUES
    ('55555555555', 'Roberto Almeida'),
    ('66666666666', 'Fernanda Lima'),
    ('77777777777', 'Ricardo Mendes'),
    ('88888888888', 'Patricia Gomes'),
    ('99999999999', 'Eduardo Ribeiro'),
    ('12345678901', 'Camila Martins'),
    ('23456789012', 'Bruno Costa'),
    ('34567890123', 'Larissa Ferreira'),
    ('45678901234', 'Marcos Oliveira'),
    ('56789012345', 'Juliana Carvalho'),
    ('67890123456', 'Felipe Rocha'),
    ('78901234567', 'Amanda Santos'),
    ('89012345678', 'Thiago Souza'),
    ('90123456789', 'Vanessa Pereira'),
    ('01234567890', 'Daniel Barbosa'),
    ('13579246801', 'Carolina Nunes');

-- inserindo registros em disciplinas
INSERT INTO disciplinas (nome_disciplina)
VALUES
    ('Fisica'),
    ('Quimica'),
    ('Biologia'),
    ('Ingles'),
    ('Espanhol'),
    ('Filosofia'),
    ('Sociologia'),
    ('Artes'),
    ('Educacao Fisica'),
    ('Literatura'),
    ('Redacao'),
    ('Programacao'),
    ('Robotica'),
    ('Estatistica'),
    ('Algebra'),
    ('Geometria'),
    ('Astronomia'),
    ('Educacao Financeira'),
    ('Empreendedorismo'),
    ('Musica');

-- inserindo registros em turmas
INSERT INTO turmas (sala, cpf, id_disciplina)
VALUES
    ('Sala 201', '55555555555', 6),
    ('Sala 202', '66666666666', 7),
    ('Sala 203', '77777777777', 8),
    ('Sala 204', '88888888888', 9),
    ('Sala 205', '99999999999', 10),
    ('Sala 206', '12345678901', 11),
    ('Sala 207', '23456789012', 12),
    ('Sala 208', '34567890123', 13),
    ('Sala 209', '45678901234', 14),
    ('Sala 210', '56789012345', 15),
    ('Sala 211', '67890123456', 16),
    ('Sala 212', '78901234567', 17),
    ('Sala 213', '89012345678', 18),
    ('Sala 214', '90123456789', 19),
    ('Sala 215', '01234567890', 20);


-- inserindo registros em alunos

INSERT INTO alunos (nome_aluno, id_turma)
VALUES
    ('André Melo', 21),
    ('Sofia Castro', 22),
    ('Gustavo Teixeira', 23),
    ('Helena Dias', 24),
    ('Vinicius Moreira', 25),
    ('Laura Cardoso', 26),
    ('Matheus Correia', 27),
    ('Manuela Xavier', 28),
    ('Leonardo Freitas', 29),
    ('Valentina Batista', 30),
    ('Enzo Campos', 21),
    ('Alice Monteiro', 22),
    ('Arthur Vieira', 23),
    ('Sophia Cunha', 24),
    ('Davi Pinto', 25),
    ('Isadora Araujo', 26),
    ('Bernardo Tavares', 27),
    ('Livia Rezende', 28),
    ('Heitor Machado', 29),
    ('Clara Peixoto', 21),
    ('Samuel Farias', 21),
    ('Maitê Fonseca', 22),
    ('Miguel Neves', 23),
    ('Emanuelly Pires', 24),
    ('Pedro Henrique', 25),
    ('Ana Clara', 21),
    ('Joao Pedro', 22),
    ('Maria Eduarda', 23),
    ('Luiz Felipe', 24),
    ('Beatriz Helena', 25),
    ('Caio Vinicius', 26),
    ('Yasmin Lopes', 27),
    ('Daniela Moraes', 28),
    ('Renan Duarte', 29),
    ('Bianca Leal', 21),
    ('Igor Santana', 21),
    ('Nicole Andrade', 22),
    ('Murilo Brito', 23),
    ('Ester Magalhaes', 24),
    ('Otavio Pacheco', 25);


SELECT *
FROM alunos

-- criando database de loja
CREATE DATABASE loja;














