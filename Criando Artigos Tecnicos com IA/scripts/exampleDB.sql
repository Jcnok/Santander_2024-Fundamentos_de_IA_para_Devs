-- Criação do banco de dados 
-- CREATE DATABASE sales_analysis;
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

-- Criação da tabela de vendas
CREATE TABLE sales_data (
    sale_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_name VARCHAR(100),
    sales_amount DECIMAL(10, 2),
    sale_date DATE
);

-- Inserção de dados na tabela de vendas
INSERT INTO sales_data (customer_id, product_name, sales_amount, sale_date) VALUES
(1, 'Laptop', 1200.50, '2023-01-15'),
(1, 'Mouse', 25.00, '2023-02-10'),
(2, 'Keyboard', 75.00, '2023-01-20'),
(2, 'Monitor', 300.00, '2023-03-05'),
(3, 'Laptop', 1150.00, '2023-01-22'),
(3, 'Mouse', 20.00, '2023-02-15'),
(4, 'Keyboard', 80.00, '2023-03-01'),
(4, 'Monitor', 290.00, '2023-04-10');

-- Comandos SQL do artigo

-- SELECT: Extraindo Dados das Tabelas
SELECT * FROM sales_data;
SELECT product_name, sales_amount FROM sales_data;

-- WHERE: Filtrando os Dados
SELECT * FROM sales_data 
WHERE sale_date >= '2023-01-01';
SELECT * FROM sales_data 
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
GROUP BY product_name;

SELECT region, COUNT(*) as number_of_sales 
FROM sales_data
INNER JOIN customers 
ON sales_data.customer_id = customers.customer_id
GROUP BY region;

-- ORDER BY: Ordenando os Resultados
SELECT product_name, sales_amount 
FROM sales_data
ORDER BY sales_amount DESC;

SELECT customer_name, customer_id 
FROM customers
ORDER BY customer_name ASC;

-- HAVING: Filtrando Grupos
SELECT product_name, SUM(sales_amount) as total_sales 
FROM sales_data
GROUP BY product_name
HAVING SUM(sales_amount) > 1000;

SELECT region, COUNT(*) as number_of_sales 
FROM sales_data
INNER JOIN customers 
ON sales_data.customer_id = customers.customer_id
GROUP BY region
HAVING COUNT(*) > 1;
