-- 1: Mostrar todos os empregados
SELECT * FROM projeto.emp_empregado

-- 2: Mostrar todos os empregados ordenados do maior para menor salário
SELECT * FROM projeto.emp_empregado
ORDER BY emp_salario DESC

-- 3: Mostrar todos os empregados ordenados por sexo e depois por nome
SELECT * FROM projeto.emp_empregado
ORDER BY emp_sexo, emp_p_nome, emp_sobrenome

-- 4: Mostrar o primeiro nome e sobrenome dos 5 funcionários com os maiores salários.
-- O nome das colunas no resultado devem ser nome e sobrenome
SELECT 
	emp_p_nome AS Nome, 
	emp_sobrenome AS sobrenome
FROM projeto.emp_empregado
ORDER BY emp_salario DESC
LIMIT 5

-- 5: Mostrar a média salárial agrupando por sexo
SELECT 
	ROUND(AVG(emp_salario), 2) AS media_salarial,
	emp_sexo AS sexo
FROM projeto.emp_empregado
GROUP BY sexo

-- 6: Mostrar o nome do funcionário e o seu total de vendas, ordenado do maior para o menor
SELECT
	emp_p_nome AS nome_funcionario,
	SUM(ped_vendas) AS total
FROM projeto.ped_pedido AS pedidos
INNER JOIN projeto.emp_empregado AS empregados ON pedidos.ped_emp_id = empregados.emp_id
GROUP BY nome_funcionario
ORDER BY total DESC

-- 7: Mostrar uma lista de todos os clientes e fornecedores de cada filial
SELECT 
	clt_nome AS nome,
	clt_fil_id AS filial
FROM projeto.clt_cliente
UNION
SELECT 
	for_nome,
	for_fil_id
FROM projeto.for_fornecedor
ORDER BY filial

-- 8: Mostrar a descrição de cada região e os nomes das filiais de cada uma
SELECT 
	reg_cidade AS cidade,
	reg_bairro AS bairro,
	fil_nome AS nome_filial
FROM projeto.reg_regiao as regiao
INNER JOIN projeto.fil_filial AS filial ON regiao.reg_id = filial.fil_reg_id

-- 9: Mostrar quantos números de telefone cada cliente possui e o nome dos clientes
SELECT 
	COUNT(tel_clt_telefone) AS qtd_telefone,
	clt_nome AS nome_cliente
FROM projeto.tel_telefone as telefone
INNER JOIN projeto.clt_cliente AS cliente ON telefone.tel_clt_id = cliente.clt_id
GROUP BY nome_cliente
ORDER BY qtd_telefone DESC

-- 10: Mostrar todos os funcionários que venderam entre 20.000 e 50.000 em um único pedido
SELECT
	emp_p_nome AS nome_funcionario,
	SUM(ped_vendas) AS total
FROM projeto.ped_pedido AS pedidos
INNER JOIN projeto.emp_empregado AS empregados ON pedidos.ped_emp_id = empregados.emp_id
GROUP BY nome_funcionario
HAVING SUM(ped_vendas) >= 20000 AND SUM(ped_vendas) <= 50000
ORDER BY total DESC



