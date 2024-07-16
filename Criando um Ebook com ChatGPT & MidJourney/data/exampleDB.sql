-- Criar a tabela employees
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary NUMERIC(10, 2)
);

-- Inserir dados na tabela employees
INSERT INTO employees (first_name, last_name, department, salary) VALUES
('John', 'Doe', 'Marketing', 60000),
('Jane', 'Smith', 'Sales', 70000),
('Emily', 'Davis', 'HR', 40000),
('Michael', 'Brown', 'IT', 80000),
('Jessica', 'Wilson', 'Sales', 50000);

-- Criar a tabela departments
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Inserir dados na tabela departments
INSERT INTO departments (department_name) VALUES
('Marketing'),
('Sales'),
('HR'),
('IT');

-- Criar a tabela projects
CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE
);

-- Inserir dados na tabela projects
INSERT INTO projects (project_name, start_date, end_date) VALUES
('Project Alpha', '2023-01-01', '2023-06-30'),
('Project Beta', '2023-02-01', '2023-07-31');

-- Criar a tabela accounts
CREATE TABLE accounts (
    account_id SERIAL PRIMARY KEY,
    balance NUMERIC(10, 2)
);

-- Inserir dados na tabela accounts
INSERT INTO accounts (balance) VALUES
(10000),
(20000);

-- Criar a tabela orders
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    status VARCHAR(50)
);

-- Inserir dados na tabela orders
INSERT INTO orders (status) VALUES
('Pending'),
('Shipped');

-- View employee_summary
CREATE VIEW employee_summary AS
SELECT department, COUNT(*) AS num_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Comandos para demonstração:
-- Selecionar dados da tabela employees
SELECT first_name, last_name, department
FROM employees
WHERE department = 'Sales';

-- Atualizar dados na tabela employees
UPDATE employees
SET salary = 65000
WHERE first_name = 'John' AND last_name = 'Doe';

-- Excluir dados da tabela employees
DELETE FROM employees
WHERE department = 'HR' AND salary < 40000;

-- Ordenar resultados
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;

-- Agrupar dados
SELECT department, COUNT(*) AS num_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Filtrar dados agrupados
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- Junção de tabelas
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department = d.department_name;

-- Subconsulta
SELECT first_name, last_name
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Transações
BEGIN TRANSACTION;
UPDATE accounts SET balance = balance - 1000 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 1000 WHERE account_id = 2;
COMMIT;

BEGIN TRANSACTION;
UPDATE accounts SET balance = balance - 1000 WHERE account_id = 1;
-- Simular um erro aqui
ROLLBACK;

-- Visualizar a view employee_summary
SELECT * FROM employee_summary WHERE avg_salary > 50000;

-- Criar a função user1
CREATE ROLE user1 LOGIN PASSWORD 'password';

-- Conceder permissões
GRANT SELECT, INSERT ON employees TO user1;

-- Revogar permissões
REVOKE INSERT ON employees FROM user1;

-- Transação de pedidos
BEGIN TRANSACTION;
UPDATE orders SET status = 'Shipped' WHERE order_id = 1;
COMMIT;

BEGIN TRANSACTION;
UPDATE orders SET status = 'Shipped' WHERE order_id = 1;
-- Simular um erro aqui
ROLLBACK;
