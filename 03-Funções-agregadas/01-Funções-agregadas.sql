-- PARA QUE SERVE ##################################################################
-- Servem para executar operações aritmética nos registros de uma coluna 


-- TIPOS DE FUNÇÕES AGREGADAS ######################################################
-- COUNT()
-- SUM()
-- MIN()
-- MAX()
-- AVG()


-- EXEMPLOS ########################################################################

-- COUNT() -------------------------------------------------------------------------

-- (Exemplo 1) Contagem de todas as linhas de uma tabela
-- Conte todas as visitas realizadas ao site da empresa fictícia
select count(*)
from sales.funnel


-- (Exemplo 2) Contagem das linhas de uma coluna
-- Conte todos os pagamentos registrados na tabela sales.funnel 
select count(paid_date)
from sales.funnel


-- (Exemplo 3) Contagem distinta de uma coluna
-- Conte todos os produtos distintos visitados em jan/21
select count(distinct product_id)
from sales.funnel
where visit_page_date between '2021-01-01' and '2021-01-31'


-- OUTRAS FUNÇÕES ------------------------------------------------------------------

-- (Exemplo 4) Calcule o preço mínimo, máximo e médio dos productos da tabela products
select min(price), max(price), avg(price)
from sales.products


-- (Exemplo 5) Informe qual é o veículo mais caro da tabela products
select max(price) from sales.products

select *
from sales.products
where price = (select max(price) from sales.products)


-- RESUMO ##########################################################################
-- (1) Servem para executar operações aritmética nos registros de uma coluna 
-- (2) Funções agregadas não computam células vazias (NULL) como zero
-- (3) Na função COUNT() pode-se utilizar o asterisco (*) para contar os registros
-- (4) COUNT(DISTINCT ) irá contar apenas os valores exclusivos







