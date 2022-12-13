CREATE TABLE Turma_Professores_Disciplina (
    area_conhecimento VARCHAR(255) NOT NULL,
    formacao VARCHAR(255) NOT NULL,
    CPF_empregado BIGINT(11),
    nome VARCHAR(255) NOT NULL,
    idade INTEGER,
    contato BIGINT(9),
    cargo VARCHAR(255),
    horario INTEGER,
    salario FLOAT,
    nome_disiciplina VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (CPF_empregado)
);

CREATE TABLE Alunos (
    CPF_cliente BIGINT(11),
    relacao BOOLEAN NOT NULL,
    sexo CHAR,
    idade INTEGER,
    contato BIGINT(9),
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (CPF_cliente)
);

CREATE TABLE Avaliacao (
    id_avaliacao INTEGER PRIMARY KEY,
    assunto_avaliacao VARCHAR(255) NOT NULL,
    nota_max INTEGER NOT NULL,
    nota_aluno INTEGER
);

CREATE TABLE Coordenadores (
    cargo VARCHAR(255),
    periodo_escolar INTEGER,
    CPF_empregado BIGINT(11),
    nome VARCHAR(255) NOT NULL,
    idade INTEGER,
    contato BIGINT(9),
    horario INTEGER,
    salario FLOAT,
    PRIMARY KEY (CPF_empregado)
);

CREATE TABLE Livros (
    id_livro INTEGER PRIMARY KEY,
    nome_livro VARCHAR(255) NOT NULL,
    assunto_livro VARCHAR(255) 
);

CREATE TABLE Sala_de_aula (
    id_sala INTEGER PRIMARY KEY,
    capacidade_Max INTEGER
);

CREATE TABLE Faxineiro (
    Funcao VARCHAR(255),
    CPF_empregado BIGINT(11),
    nome VARCHAR(255) NOT NULL,
    idade INTEGER,
    contato BIGINT(9),
    cargo VARCHAR(255),
    horario INTEGER,
    salario FLOAT,
    PRIMARY KEY (CPF_empregado)
);

CREATE TABLE Secretario (
    area_atuacao VARCHAR(255),
    CPF_empregado BIGINT(11),
    nome VARCHAR(255) NOT NULL,
    idade INTEGER,
    contato BIGINT(9),
    cargo VARCHAR(255),
    horario INTEGER,
    salario FLOAT,
    PRIMARY KEY (CPF_empregado)
);

CREATE TABLE Ajuda (
    fk_Alunos_CPF_cliente1 BIGINT,
    fk_Alunos_CPF_cliente2 BIGINT,
    PRIMARY KEY (fk_Alunos_CPF_cliente1, fk_Alunos_CPF_cliente2),
    FOREIGN KEY (fk_Alunos_CPF_cliente1) REFERENCES Alunos (CPF_cliente),
    FOREIGN KEY (fk_Alunos_CPF_cliente2) REFERENCES Alunos (CPF_cliente)
);

CREATE TABLE Frequenta (
    fk_Turma_Professores_Disciplina_CPF_empregado BIGINT,
    fk_Aluno_CPF_cliente BIGINT,
    PRIMARY KEY (fk_Turma_Professores_Disciplina_CPF_empregado, fk_Aluno_CPF_cliente),
    FOREIGN KEY (fk_Aluno_CPF_cliente) 
    REFERENCES Alunos (CPF_cliente),
   	FOREIGN KEY (fk_Turma_Professores_Disciplina_CPF_empregado) 
   	REFERENCES Turma_Professores_Disciplina (CPF_empregado)
);

CREATE TABLE Coordena (
    fk_Coordenadores_CPF_empregado BIGINT,
    fk_Turma_Professores_Disciplina_CPF_empregado BIGINT,
    PRIMARY KEY (fk_Coordenadores_CPF_empregado, fk_Turma_Professores_Disciplina_CPF_empregado),
    FOREIGN KEY (fk_Coordenadores_CPF_empregado)
    REFERENCES Coordenadores (CPF_empregado),
    FOREIGN KEY (fk_Turma_Professores_Disciplina_CPF_empregado) 
    REFERENCES Turma_Professores_Disciplina (CPF_empregado)
);

CREATE TABLE Possue (
    fk_Livros_id_livro INTEGER,
    fk_Turma_Professores_Disciplina_CPF_empregado BIGINT,
    PRIMARY KEY (fk_Livros_id_livro, fk_Turma_Professores_Disciplina_CPF_empregado),
    FOREIGN KEY (fk_Livros_id_livro)
    REFERENCES Livros (id_livro),
    FOREIGN KEY (fk_Turma_Professores_Disciplina_CPF_empregado)
    REFERENCES Turma_Professores_Disciplina (CPF_empregado)
);

CREATE TABLE Precisa (
    fk_Sala_de_aula_id_sala INTEGER,
    fk_Turma_Professores_Disciplina_CPF_empregado BIGINT,
    PRIMARY KEY ( fk_Sala_de_aula_id_sala, fk_Turma_Professores_Disciplina_CPF_empregado),
    FOREIGN KEY (fk_Sala_de_aula_id_sala)
    REFERENCES Sala_de_aula (id_sala),
    FOREIGN KEY (fk_Turma_Professores_Disciplina_CPF_empregado)
    REFERENCES Turma_Professores_Disciplina (CPF_empregado)
);

CREATE TABLE Limpa (
    fk_Faxineiro_CPF_empregado BIGINT,
    fk_Sala_de_aula_id_sala INTEGER,
    PRIMARY KEY (fk_Faxineiro_CPF_empregado, fk_Sala_de_aula_id_sala),
    FOREIGN KEY (fk_Faxineiro_CPF_empregado)
    REFERENCES Faxineiro (CPF_empregado),
    FOREIGN KEY (fk_Sala_de_aula_id_sala)
    REFERENCES Sala_de_aula (id_sala)
);

CREATE TABLE avalia (
    fk_Avaliacao_id_avaliacao INTEGER,
    fk_Alunos_CPF_cliente BIGINT,
    PRIMARY KEY (fk_Avaliacao_id_avaliacao, fk_Alunos_CPF_cliente),
    FOREIGN KEY (fk_Avaliacao_id_avaliacao)
    REFERENCES Avaliacao (id_avaliacao),
    FOREIGN KEY (fk_Alunos_CPF_cliente)
    REFERENCES Alunos (CPF_cliente)
);
 
