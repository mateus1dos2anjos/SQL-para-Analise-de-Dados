-- SINTAXE #########################################################################
select coluna_1, coluna_2
from schema_1.tabela_1

union / union all

select coluna_3, coluna_4 
from schema_2.tabela_2


-- EXEMPLOS ########################################################################

-- (Exemplo 1) União simples de duas tabelas
-- Una a tabela sales.products com a tabela temp_tables.products_2

select * from sales.products
union all
select * from temp_tables.products_2






