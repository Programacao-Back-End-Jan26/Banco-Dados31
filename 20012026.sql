-- Right join faz referência a base da tabela da direita, relacionando os itens da tabela com os dados da tabela da esquerda
select
	*
from
	cliente c
right join endereco e on
	c.endereco_id = e.id;

--busca todos os dados de ambas as tabelas
select
	*
from
	cliente c
full join endereco e on
	c.endereco_id = e.id;

--left join busca os dados da tabela da esquerda, utilizando como base seus dados e sincronizando os dados de cada item dessa tabela com a tabela da esquerda
select
	*
from
	cliente c
left join endereco e on
	c.endereco_id = e.id;

-- inner é os dados que intersedem ambas tabelas
select
	*
from
	cliente c
inner join endereco e on
--join endereco e on
	c.endereco_id = e.id;

