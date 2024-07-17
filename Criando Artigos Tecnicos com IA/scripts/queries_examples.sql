-- Encontrando produtos com vendas totais acima de 5000
SELECT product_name, SUM(sales_amount) as total_sales 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id
WHERE sale_date >= '2023-01-01'
GROUP BY product_name
HAVING SUM(sales_amount) > 5000;

-- Combinando dados de clientes e vendas
SELECT customers.customer_name, SUM(sales_data.sales_amount) as total_sales 
FROM customers
INNER JOIN sales_data 
ON customers.customer_id = sales_data.customer_id
GROUP BY customers.customer_name;

-- Exemplo de comando SQL para extrair vendas por região
SELECT region, SUM(sales_amount) as total_sales 
FROM sales_data
JOIN customers ON sales_data.customer_id = customers.customer_id
GROUP BY region;

-- Contando o número de vendas por região e filtrando regiões com mais de 50 vendas
SELECT region, COUNT(*) as number_of_sales 
FROM sales_data
JOIN customers ON sales_data.customer_id = customers.customer_id
GROUP BY region
HAVING COUNT(*) > 50;

-- Agrupando por produto e filtrando aqueles com vendas totais acima de 1000
SELECT product_name, SUM(sales_amount) as total_sales 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id
GROUP BY product_name
HAVING SUM(sales_amount) > 1000;

-- Ordenando os clientes pelo nome em ordem alfabética
SELECT customer_name, customer_id 
FROM customers
ORDER BY customer_name ASC;

-- Agrupando vendas por produto e calculando o total de vendas
SELECT product_name, SUM(sales_amount) as total_sales 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id
GROUP BY product_name;

-- Usando LEFT JOIN para incluir todos os clientes, mesmo aqueles sem vendas
SELECT customers.customer_name, sales_data.sales_amount 
FROM customers
LEFT JOIN sales_data 
ON customers.customer_id = sales_data.customer_id;

-- Usando INNER JOIN para combinar dados de clientes e vendas
SELECT customers.customer_name, sales_data.sales_amount 
FROM customers
INNER JOIN sales_data 
ON customers.customer_id = sales_data.customer_id;

-- Filtrando vendas que ocorreram em 2023
SELECT * FROM sales_data 
WHERE sale_date >= '2023-01-01';

-- Filtrando vendas de um produto específico
SELECT * FROM sales_data
JOIN products ON sales_data.product_id = products.product_id 
WHERE product_name = 'Laptop';

-- Selecionando todas as colunas da tabela de vendas
SELECT * FROM sales_data;

-- Selecionando colunas específicas
SELECT product_name, sales_amount 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id;