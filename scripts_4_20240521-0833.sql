-- SEÇÃO 2 - AULA 43: COMANDOS ADICIONAIS ----------------------------------------------------

/*
• extract: extrai uma parte do dado. Exemplo:
	extract(day from data_pedido) -> vai extrair apenas o dia da data 
	extract(month from data_pedido) -> vai extrair apenas o mês da data 
	extract(year from data_pedido) -> vai extrair apenas o ano da data 

• substring: extrai uma quantidade de caracteres definida. Exemplo:
	substring(nome from 1 for 5) -> vai extrair 5 caracteres
	substring(nome, 2) -> vai extrair a partir do segundo caracter

• upper: converte a string para caixa alta. Exemplo:
	upper(nome)

• coalesce: nos casos de valor null, vai exibir uma mensagem personalizada. Exemplo:
	coalesce(cpf, 'n/a')

	select nome, cpf, coalesce(cpf, 'n/a') as "CPF n/a" from cliente

• case: estabele condições, como um if da programação. Exemplo:ABORT

	select
		case sigla
			when 'SC' then 'Santa Catarina'
			when 'RJ' then 'Rio de Janeiro'
			when 'MG' then 'Minas Gerais'
		else 'Outros'
		end as "UF"
	from uf

*/


-- SEÇÃO 2 - AULA 44: EXERCÍCIOS COMANDOS ADICIONAIS ----------------------------------------------------


-- 1. O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.

-- Correção

select
	nome as "Nome",
	coalesce(extract(month from data_nascimento), 0) as "Data de Nascimento"
from cliente


-- 2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.

-- Correção

select
	nome,
	case extract(month from data_nascimento)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
	else 'Não informado'
	end as "Mês de Nascimento"
from cliente


-- 3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.

-- Correção

select
	nome,
	coalesce (extract(year from data_nascimento), 0)
FROM
	cliente

-- 4. O caractere 5 até o caractere 10 de todos os municípios.

-- Correção
 
SELECT
	substring(nome from 5 for 5) -- exibir 5 caracteres a partir do quinto carecter
from
	municipio

-- 5. O nome de todos os municípios em letras maiúsculas.

-- Ok

SELECT
	nome, upper (nome)
from
	municipio

-- 6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.

-- Ok

select * from cliente

select
	nome,
	case (genero)
		when 'M' then 'Masculino'
	else 'Feminino'
	end as "Gênero"
from 
	cliente

-- 7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.

-- 

select * from produto

SELECT
	nome,
	valor,
	case
		when valor >= 500 then 'Maior ou Igual a 500'
	else 'Abaixo de 500'
	end as "Faixa"
FROM
	produto