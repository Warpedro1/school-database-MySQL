INSERT INTO Turma_Professores_Disciplina (area_conhecimento,formacao,CPF_empregado,nome,nome_disiciplina)
VALUES ('Ciencias da Natureza','licenciatura biologia',00000000000,'Andre Silva','Biologia1');
INSERT INTO Turma_Professores_Disciplina (area_conhecimento,formacao,CPF_empregado,nome,nome_disiciplina)
VALUES ('Ciencias Exatas','licenciatura matematica',11111111111,'Joao da Silva','Matematica2');
INSERT INTO Turma_Professores_Disciplina (area_conhecimento,formacao,CPF_empregado,nome,nome_disiciplina)
VALUES ('Linguagens','licenciatura literatura',22222222222,'Maria Penha','Literatura');
INSERT INTO Turma_Professores_Disciplina (area_conhecimento,formacao,CPF_empregado,nome,nome_disiciplina)
VALUES ('Ciencias Humanas','licenciatura Historia',33333333333,'Carlos Silva','Historia');
INSERT INTO Turma_Professores_Disciplina (area_conhecimento,formacao,CPF_empregado,nome,nome_disiciplina)
VALUES ('Ciencias da Natureza','licenciatura quimica',44444444444,'Pedro Silva','Quimica2');

INSERT INTO Alunos (CPF_cliente,relacao,nome)
VALUES (55555555555,TRUE,'Joao pedro p');
INSERT INTO Alunos 
VALUES (66666666666,TRUE,'M',11,null,'Maria aparecida');
INSERT INTO Alunos 
VALUES (77777777777,FALSE,'H',12,null,'Jorge Alex');
INSERT INTO Alunos (CPF_cliente,relacao,nome)
VALUES (88888888888,TRUE,'Joao Amorim');
INSERT INTO Alunos (CPF_cliente,relacao,nome)
VALUES (99999999999,TRUE,'Everton');

INSERT INTO Avaliacao VALUES (10,'Briofitas',10,5);
INSERT INTO Avaliacao VALUES (01,'Baskara',2,1);
INSERT INTO Avaliacao VALUES (02,'Camoes',6,3);
INSERT INTO Avaliacao VALUES (03,'Cruzadas',5,5);
INSERT INTO Avaliacao VALUES (04,'Ligacoes Ionicas',7,6);

INSERT INTO Coordenadores VALUES ('Coordenador',1,12345678900,'nome generico da silva',null,null,8,1000);
INSERT INTO Coordenadores VALUES ('Psicologo',2,00000000001,'nome NAO generico da silva',null,null,8,(1000.5));
INSERT INTO Coordenadores VALUES ('Coordenador',1,00000000002,'Joao henrique silva',200,999990000,8,(10000.75));
INSERT INTO Coordenadores VALUES ('Coordenador',3,00000000003,'Rafael abreu',75,null,null,750);
INSERT INTO Coordenadores VALUES ('Coordenador',4,00000000004,'Joao guilherme lima',null,null,20,5);

INSERT INTO Livros VALUES (101,'joao e o pé de cabra','fabula');
INSERT INTO Livros VALUES (102,'a morete de ivan',null);
INSERT INTO Livros VALUES (103,'o medioc e o monstro','artigo');
INSERT INTO Livros VALUES (104,'memorias postumas',null);
INSERT INTO Livros VALUES (105,'uma aventura capitalista',null);

INSERT INTO Sala_de_aula  VALUES (001,10);
INSERT INTO Sala_de_aula  VALUES (002,10);
INSERT INTO Sala_de_aula  VALUES (003,5);
INSERT INTO Sala_de_aula  VALUES (004,10);
INSERT INTO Sala_de_aula  VALUES (005,9);

INSERT INTO Faxineiro VALUES ('Varrer',10000000000,'Dwight schrute',56,995860205,null,8,5000);
INSERT INTO Faxineiro VALUES ('Limpar mesas',20000000000,'Michael Scott',28,null,null,8,1010);
INSERT INTO Faxineiro VALUES ('Deixar a sala um brinco',30000000000,'Dwight schrute',null,911111205,null,8,5000);
INSERT INTO Faxineiro VALUES ('Varrer',40000000000,'Pam',36,999999999,null,2,70);
INSERT INTO Faxineiro VALUES ('Varrer',50000000000,'Dwight schrute',46,995860205,null,8,5000);

INSERT INTO Secretario VALUES ('MARKETING',25000000011,'Vilma Flinstons',23,null,null,8,1005);
INSERT INTO Secretario VALUES ('Financeiro',25000000022,'Fred Flinstons',80,null,000005555,2,5000);
INSERT INTO Secretario VALUES ('Secretario',25000000033,'Barney Flinstons',24,null,null,8,(10000.50));
INSERT INTO Secretario VALUES ('MARKETING',25000000044,'Pedrosa Morty',102,null,910101010,12,(10000.50));
INSERT INTO Secretario VALUES ('Financeiro',25000000055,'Rich Sanches',23,null,565692398,8,(10000.50));

INSERT INTO Ajuda VALUES (55555555555,66666666666);
INSERT INTO Ajuda VALUES (55555555555,77777777777);
INSERT INTO Ajuda VALUES (77777777777,55555555555);
INSERT INTO Ajuda VALUES (55555555555,99999999999);
INSERT INTO Ajuda VALUES (99999999999,66666666666);

INSERT INTO Frequenta VALUES (00000000000,88888888888);
INSERT INTO Frequenta VALUES (00000000000,66666666666);
INSERT INTO Frequenta VALUES (00000000000,77777777777);
INSERT INTO Frequenta VALUES (11111111111,77777777777);
INSERT INTO Frequenta VALUES (33333333333,88888888888);
INSERT INTO Frequenta VALUES (00000000000,99999999999);
INSERT INTO Frequenta VALUES (11111111111,66666666666);
INSERT INTO Frequenta VALUES (33333333333,66666666666);
INSERT INTO Frequenta VALUES (33333333333,99999999999);

INSERT INTO Coordena VALUES (12345678900,00000000000);
INSERT INTO Coordena VALUES (12345678900,11111111111);
INSERT INTO Coordena VALUES (00000000001,33333333333);
INSERT INTO Coordena VALUES (00000000001,44444444444);
INSERT INTO Coordena VALUES (00000000004,22222222222);

INSERT INTO Possue VALUES (101,00000000000);
INSERT INTO Possue VALUES (101,11111111111);
INSERT INTO Possue VALUES (101,22222222222);
INSERT INTO Possue VALUES (101,44444444444);
INSERT INTO Possue VALUES (102,00000000000);
INSERT INTO Possue VALUES (104,00000000000);

INSERT INTO Precisa VALUES (001,00000000000);
INSERT INTO Precisa VALUES (002,11111111111);
INSERT INTO Precisa VALUES (003,22222222222);
INSERT INTO Precisa VALUES (004,44444444444);
INSERT INTO Precisa VALUES (005,33333333333);

INSERT INTO Limpa VALUES (10000000000,001);
INSERT INTO Limpa VALUES (20000000000,002);
INSERT INTO Limpa VALUES (30000000000,003);
INSERT INTO Limpa VALUES (40000000000,004);
INSERT INTO Limpa VALUES (50000000000,005);

INSERT INTO avalia VALUES (10,88888888888);
INSERT INTO avalia VALUES (10,66666666666);
INSERT INTO avalia VALUES (10,77777777777);
INSERT INTO avalia VALUES (10,99999999999);
INSERT INTO avalia VALUES (02,88888888888);
INSERT INTO avalia VALUES (02,66666666666);
INSERT INTO avalia VALUES (02,77777777777);
INSERT INTO avalia VALUES (03,88888888888);
INSERT INTO avalia VALUES (04,88888888888);
INSERT INTO avalia VALUES (01,88888888888);