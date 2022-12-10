/* L�gico_1: */

CREATE TABLE Planos (
    id_plano INTEGER(6) PRIMARY KEY,
    nome_plano VARCHAR(255),
    valor INTEGER,
    convites_liberados INTEGER
);

CREATE TABLE Cliente (
    pagamento_em_dia BOOLEAN,
    frenquencia_semenal INTEGER,
    CPF INTEGER(11) PRIMARY KEY,
    Nome VARCHAR(255),
    telefone INTEGER(11),
    Data_incio DATE,
    fk_Planos_id_plano INTEGER(6),
    FOREIGN KEY (fk_Planos_id_plano)
    REFERENCES Planos (id_plano)
);

CREATE TABLE Funcionario (
    salario_funcionario FLOAT,
    cargo VARCHAR(255),
    hora_inicio TIME,
    hora_termino TIME,
    CPF INTEGER(11) PRIMARY KEY,
    Nome VARCHAR(255),
    telefone INTEGER(11),
    Data_incio FLOAT,
    fk_Funcionario_CPF INTEGER(11),
    FOREIGN KEY (fk_Funcionario_CPF)
    REFERENCES Funcionario (CPF)
);

CREATE TABLE Avaliacao (
    id_avaliacao INTEGER(6) PRIMARY KEY,
    percentual_de_gordura FLOAT,
    massa_magra FLOAT,
    massa_gorda FLOAT,
    data_avalaicao DATE,
    fk_Cliente_CPF INTEGER(11),
    FOREIGN KEY (fk_Cliente_CPF)
    REFERENCES Cliente (CPF)
);

CREATE TABLE Filial_Gerente (
    id_filial INTEGER(6),
    rua VARCHAR(255),
    numero INTEGER,
    bairro VARCHAR(255),
    salario FLOAT,
    CPF INTEGER(11),
    Nome VARCHAR(255),
    telefone INTEGER(11),
    Data_incio DATE,
    PRIMARY KEY (id_filial, CPF)
);

CREATE TABLE Equipamentos (
    id_equipamento INTEGER(6) PRIMARY KEY,
    nome_equipamento VARCHAR(255),
    data_inicio_equipamento DATE
);

CREATE TABLE Eventos (
    id_evento INTEGER(6) PRIMARY KEY,
    nome_evento VARCHAR(255),
    data_evento DATE,
    descricao TEXT,
    fk_Filial_Gerente_id_filial INTEGER(6),
    FOREIGN KEY (fk_Filial_Gerente_id_filial)
    REFERENCES Filial_Gerente (id_filial)
);

CREATE TABLE Aulas (
    id_aula INTEGER(6) PRIMARY KEY,
    nome_aula VARCHAR(255),
    horario_inicio_aula TIME,
    horario_termino_aula TIME
);

CREATE TABLE possui (
    fk_Filial_Gerente_id_filial INTEGER(6),
    fk_Aulas_id_aula INTEGER(6),
    FOREIGN KEY (fk_Filial_Gerente_id_filial)
    REFERENCES Filial_Gerente (id_filial)
);

CREATE TABLE aloca (
    fk_Equipamentos_id_equipamento INTEGER(6),
    fk_Filial_Gerente_id_filial INTEGER(6),
    fk_Filial_Gerente_CPF INTEGER(11),
    FOREIGN KEY (fk_Equipamentos_id_equipamento)
    REFERENCES Equipamentos (id_equipamento),
    FOREIGN KEY (fk_Filial_Gerente_id_filial, fk_Filial_Gerente_CPF)
    REFERENCES Filial_Gerente (id_filial, CPF)
);
 
