SELECT * FROM Funcionario WHERE (salario_funcionario >300);

Select *
From Cliente, Planos 
WHERE fk_Planos_id_plano =
id_plano;

Select *
From Cliente LEFT OUTER JOIN Planos 
ON fk_Planos_id_plano =
id_plano;

Select *
From Cliente RIGHT OUTER JOIN Planos 
ON fk_Planos_id_plano =
id_plano;

Select *
From Cliente LEFT OUTER JOIN Planos 
ON fk_Planos_id_plano = id_plano
UNION
Select *
From Cliente RIGHT OUTER JOIN Planos 
ON fk_Planos_id_plano =
id_plano;

Select *
From Eventos INNER JOIN Filial_Gerente fg  
ON fk_Filial_Gerente_id_filial = id_filial
GROUP BY nome_evento ;

Select *
From Eventos INNER JOIN Filial_Gerente fg  
ON fk_Filial_Gerente_id_filial = id_filial
GROUP BY nome_evento 
HAVING (data_evento > '2004-01-01');

Select *
From Eventos INNER JOIN Filial_Gerente fg  
ON fk_Filial_Gerente_id_filial = id_filial
ORDER BY data_evento; 

Select *
From Eventos INNER JOIN Filial_Gerente fg  
ON fk_Filial_Gerente_id_filial = id_filial
WHERE CEIL(salario)>700;

Select *
From Eventos INNER JOIN Filial_Gerente fg  
ON fk_Filial_Gerente_id_filial = id_filial
ORDER BY LENGTH(nome_evento); 

Select *
From Cliente c  INNER JOIN Avaliacao a  
ON CPF = fk_Cliente_CPF
WHERE EXTRACT(YEAR FROM data_avalaicao)-(EXTRACT(YEAR FROM Data_incio )>1);

Select *
From Cliente c  INNER JOIN Planos p  
WHERE nome_plano = 'bronze'
UNION 
Select *
From Cliente c  INNER JOIN Planos p  
WHERE nome_plano = 'prata';

Select *
From Filial_Gerente  INNER JOIN aloca a
WHERE id_filial = fk_Filial_Gerente_id_filial AND CPF =fk_Filial_Gerente_CPF    
INTERSECTION 
Select *
From Equipamentos e  INNER JOIN aloca a
WHERE id_equipamento = fk_Equipamentos_id_equipamento;    



