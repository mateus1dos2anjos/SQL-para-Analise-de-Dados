-- PARA QUE SERVE ##################################################################
-- Servem para combinar colunas de uma ou mais tabelas


-- SINTAXE #########################################################################
select t1.coluna_1, t1.coluna_1, t2.coluna_1, t2.coluna_2
from schema.tabela_1 as t1
ALGUM join schema.tabela_2 as t2
    on condição_de_join


-- EXEMPLOS ########################################################################

-- (Exemplo 1) Utilize o LEFT JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
select * from temp_tables.tabela_1
select * from temp_tables.tabela_2

select t1.cpf, t1.name, t2.state
from temp_tables.tabela_1 as t1 
left join temp_tables.tabela_2 as t2
	on t1.cpf = t2.cpf


-- (Exemplo 2) Utilize o INNER JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
select t1.cpf, t1.name, t2.state
from temp_tables.tabela_1 as t1 
inner join temp_tables.tabela_2 as t2
	on t1.cpf = t2.cpf


-- (Exemplo 3) Utilize o RIGHT JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
select t2.cpf, t1.name, t2.state
from temp_tables.tabela_1 as t1 
right join temp_tables.tabela_2 as t2
	on t1.cpf = t2.cpf


-- (Exemplo 4) Utilize o FULL JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
select t2.cpf, t1.name, t2.state
from temp_tables.tabela_1 as t1 
full join temp_tables.tabela_2 as t2
	on t1.cpf = t2.cpf


-- RESUMO ##########################################################################
-- (1) Servem para combinar colunas de uma ou mais tabelas
-- (2) Pode-se chamar todas as colunas com o asterisco (*), mas não é recomendado
-- (3) É uma boa prática criar aliases para nomear as tabelas utilizadas 
-- (4) O JOIN sozinho funciona como INNER JOIN
