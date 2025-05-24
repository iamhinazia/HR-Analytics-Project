Select * from empdb;
-- Employee Count by Department

SELECT department, COUNT(*) AS employee_count
FROM empdb
GROUP BY department;

-- how many employee in each city 
SELECT city, COUNT(*) AS employee_count
FROM empdb
GROUP BY city
ORDER BY employee_count DESC;


-- How many employee joined each year 
SELECT 
    YEAR(hire_date) AS Year_Join,
    COUNT(*) AS Total_Employees
FROM empdb
GROUP BY YEAR(hire_date)
ORDER BY Year_Join DESC;

-- Top 5 Highest Paid Employees 
SELECT first_name, last_name, total_salary
FROM empdb
ORDER BY total_salary DESC
LIMIT 5;
