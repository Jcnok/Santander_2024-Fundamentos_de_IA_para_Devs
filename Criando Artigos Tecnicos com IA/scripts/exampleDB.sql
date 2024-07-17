-- Criação do banco de dados
-- CREATE DATABASE sales_analysis;
-- Deletando as tabelas caso já existam;
-- Drop TABLE products;
-- Drop TABLE sales_data;
-- Drop TABLE customers;

-- Criação da tabela de clientes
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    region VARCHAR(50)
);

-- Inserção de dados na tabela de clientes
INSERT INTO customers (customer_name, region) VALUES
('Alice', 'North'),
('Bob', 'South'),
('Charlie', 'East'),
('Diana', 'West');

-- Criação da tabela de produtos
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100)
);

-- Inserção de dados na tabela de produtos
INSERT INTO products (product_name) VALUES
('Laptop'),
('Mouse'),
('Keyboard'),
('Monitor');

-- Criação da tabela de vendas
CREATE TABLE sales_data (
    sale_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id),
    sales_amount DECIMAL(10, 2),
    sale_date DATE
);

-- Inserção de dados na tabela de vendas
INSERT INTO sales_data (customer_id, product_id, sales_amount, sale_date) VALUES
(1, 1, 1200.50, '2023-01-15'),
(1, 2, 25.00, '2023-02-10'),
(2, 3, 75.00, '2023-01-20'),
(2, 4, 300.00, '2023-03-05'),
(3, 1, 1150.00, '2023-01-22'),
(3, 2, 20.00, '2023-02-15'),
(4, 3, 80.00, '2023-03-01'),
(4, 4, 290.00, '2023-04-10');

-- Comandos SQL do artigo

-- SELECT: Extraindo Dados das Tabelas
SELECT * FROM sales_data;
SELECT product_name, sales_amount 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id;

-- WHERE: Filtrando os Dados
SELECT * FROM sales_data 
WHERE sale_date >= '2023-01-01';
SELECT * FROM sales_data
JOIN products ON sales_data.product_id = products.product_id 
WHERE product_name = 'Laptop';

-- JOIN: Combinando Dados de Diferentes Tabelas
SELECT customers.customer_name, sales_data.sales_amount 
FROM customers
INNER JOIN sales_data 
ON customers.customer_id = sales_data.customer_id;

SELECT customers.customer_name, sales_data.sales_amount 
FROM customers
LEFT JOIN sales_data 
ON customers.customer_id = sales_data.customer_id;

-- GROUP BY: Agrupando e Agregando Dados
SELECT product_name, SUM(sales_amount) as total_sales 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id
GROUP BY product_name;

SELECT region, COUNT(*) as number_of_sales 
FROM sales_data
JOIN customers ON sales_data.customer_id = customers.customer_id
GROUP BY region;

-- ORDER BY: Ordenando os Resultados
SELECT product_name, sales_amount 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id
ORDER BY sales_amount DESC;

SELECT customer_name, customer_id 
FROM customers
ORDER BY customer_name ASC;

-- HAVING: Filtrando Grupos
SELECT product_name, SUM(sales_amount) as total_sales 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id
GROUP BY product_name
HAVING SUM(sales_amount) > 1000;

SELECT region, COUNT(*) as number_of_sales 
FROM sales_data
JOIN customers ON sales_data.customer_id = customers.customer_id
GROUP BY region
HAVING COUNT(*) > 1;

-- Agrupando por produto e filtrando aqueles com vendas totais acima de 1000
SELECT product_name, SUM(sales_amount) as total_sales 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id
GROUP BY product_name
HAVING SUM(sales_amount) > 1000;

-- Contando o número de vendas por região e filtrando regiões com mais de 50 vendas
SELECT region, COUNT(*) as number_of_sales 
FROM sales_data
JOIN customers ON sales_data.customer_id = customers.customer_id
GROUP BY region
HAVING COUNT(*) > 50;

-- Exemplo de comando SQL para extrair vendas por região
SELECT region, SUM(sales_amount) as total_sales 
FROM sales_data
JOIN customers ON sales_data.customer_id = customers.customer_id
GROUP BY region;

-- Encontrando produtos com vendas totais acima de 5000
SELECT product_name, SUM(sales_amount) as total_sales 
FROM sales_data
JOIN products ON sales_data.product_id = products.product_id
WHERE sale_date >= '2023-01-01'
GROUP BY product_name
HAVING SUM(sales_amount) > 5000;

