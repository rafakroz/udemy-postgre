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