use da_09;
show tables;
drop table employees;
CREATE TABLE Employees ( 
 id INT, 
 name VARCHAR(100), 
 department VARCHAR(100), 
 salary INT, 
 isactive BOOLEAN 
 ); 
 
INSERT INTO Employees VALUES 
 (1, 'Rahul Sharma', 'IT', 50000, TRUE), 
 (2, 'Priya Reddy', 'HR', 30000, TRUE), 
 (3, 'Amit Kumar', 'Finance', 45000, FALSE), 
 (4, 'Sneha Patel', 'IT', 35000, TRUE), 
 (5, 'Vikram Singh', 'Finance', 28000, TRUE), 
 (6, 'Anjali Mehta', 'HR', 32000, FALSE), 
 (7, 'Kiran Rao', 'IT', 60000, TRUE), 
 (8, 'Pooja Verma', 'Marketing', 27000, TRUE), 
 (9, 'Ramesh Naidu', 'Sales', 38000, TRUE), 
 (10, 'Deepika Joshi', 'Finance', 52000, TRUE), 
 (11, 'Suresh Babu', 'Marketing', 29000, FALSE), 
 (12, 'Neha Kapoor', 'HR', 41000, TRUE), 
 (13, 'Arjun Reddy', 'IT', 55000, FALSE), 
 (14, 'Lakshmi Devi', 'Sales', 33000, TRUE), 
 (15, 'Nikhil Jain', 'IT', 47000, TRUE); 
 select*from employees;
 
-- Select Queries 

-- Q6. Display inactive employees or employees earning less than 30000. 
select*from employees where isactive=false or salary<30000;
-- Q7. Display Marketing employees with salary greater than 25000.
select*from employees where department='marketing' and salary>25000; 
-- Q8. Display employees who are not in the Finance department. 
select*from employees where not department='finance';
-- Q9. Display active employees earning more than 50000.
select*from employees where salary>50000; 
-- Q10. Display employees from Sales or HR departments.
select*from employees where department='sales' or department='hr'; 
-- Q11. Display employees who are inactive and belong to the IT department. 
select*from employees where isactive=false and department='it';
-- Q12. Display employees whose salary is less than 40000 and are active. 
select*from employees where salary<40000 and isactive=true;

-- Update Queries 
-- Q6. Activate all inactive Marketing employees. 
set sql_safe_updates=0;
update employees set isactive=true and department='marketing';
-- Q7. Reduce salary by 2000 for inactive employees. 
update employees set salary=salary-2000 and isactive=false;
-- Q8. Increase salary by 15% for active employees earning more than 50000. 
update employees set salary=salary*1.15 and isactive=true and salary>50000;
-- Q9. Make all Finance employees active. 
update employees set isactive=true and department='finance';
-- Q10. Increase salary by 1000 for IT or Sales employees.
update employees set salary=salary+1000 where department='it' or department='sales';


-- Delete Queries 
-- ================= 
-- Q6. Delete Sales employees or inactive employees. 
delete from employees where department='sales' or isactive=false;
-- Q7. Delete active employees earning more than 55000. 
delete from employees where isactive=true and  salary>55000;
-- Q8. Delete employees who are not in the IT or HR departments. 
delete from employees where not department='it' or department='hr';
-- Q9. Delete employees whose salary is below 30000 and are inactive. 
delete from employees where salary<30000 and isactive=false;
-- Q10. Delete employees from the Marketing department or whose salary is greater than 50000.
delete from employees where department='marketing' or salary>50000;


CREATE TABLE Orders ( 
 id INT, 
 customer_name VARCHAR(100), 
 order_date DATE, 
 total_amount DECIMAL(10,2) 
 ); 
 
 
INSERT INTO Orders VALUES 
 (1, 'Alice', '2024-03-01', 1500.00), 
 (2, 'Bob', '2024-03-05', 450.00), 
 (3, 'Charlie', '2024-03-10', 2500.00), 
 (4, 'Diana', '2024-03-15', 800.00), 
 (5, 'Eve', '2024-03-20', 1200.00), 
 (6, 'Frank', '2024-03-25', 3000.00), 
 (7, 'Grace', '2024-04-02', 1800.00), 
 (8, 'Henry', '2024-04-08', 950.00), 
 (9, 'Ivy', '2024-04-12', 2750.00), 
 (10, 'Jack', '2024-04-18', 650.00), 
 (11, 'Kevin', '2024-04-22', 4200.00), 
 (12, 'Lily', '2024-05-01', 1350.00), 
 (13, 'Michael', '2024-05-08', 5000.00), 
 (14, 'Nancy', '2024-05-15', 2250.00), 
 (15, 'Oliver', '2024-05-25', 900.00);
 select*from orders;
 
--  Select Queries 
-- ------------- 
-- Q6.Display customer names whose order amount is between 2000 and 5000. 
 select*from orders where total_amount between 2000 and 5000;
-- Q7.Display orders placed between '2024-03-15' and '2024-04-15'. 
 select*from orders where order_date between '2024-03-15' and '2024-04-15';
-- Q8.Display orders whose amount is between 800 and 1800. 
 select*from orders where total_amount  between 800 and 1800;
-- Q9.Display orders placed between '2024-04-10' and '2024-05-10'. 
 select*from orders where order_date between '2024-04-10' and '2024-05-10';
-- Q10.Display orders whose amount is between 2500 and 5000. 
  select*from orders where total_amount between 2500 and 5000;
  
  
-- Update Queries ------------- 
-- Q6. Reduce the total amount by 100 for orders placed between '2024-03-15' and '2024-03-31'. 
 update orders set total_amount=total_amount+100 where order_date  between '2024-03-15' and '2024-03-31';
-- Q7. Increase the total amount by 750 for orders between 800 and 1500. 
 update orders set total_amount=total_amount+750 where total_amount between 800 and 15;
-- Q8. Reduce the total amount by 500 for orders between 3000 and 5000. 
update orders set total_amount=total_amount-500 where total_amount between 3000 and 5000;
-- Q9. Increase the total amount by 250 for orders placed between '2024-04-20' and '2024-05-10'. 
update orders set total_amount=total_amount+250 where order_date between '2024-04-20' and '2024-05-10'; 
-- Q10. Add 100 to all orders placed between '2024-03-01' and '2024-05-31'.
update orders set total_amount=total_amount+100 where order_date between '2024-03-01' and '2024-05-31';


-- Delete Queries ------------ 
-- Q6. Delete orders whose total amount is between 1000 and 2000. 
 delete from orders where total_amount between 1000 and 2000;
-- Q7. Delete orders placed between '2024-03-01' and '2024-03-05'. 
 delete from orders where order_date  between '2024-03-01' and '2024-03-05';
-- Q8. Delete orders placed between '2024-04-18' and '2024-05-08'. 
delete from orders where order_date  between '2024-04-18' and '2024-05-08';
-- Q9. Delete orders whose total amount is between 1800 and 3000. 
  delete from orders where total_amount between 1800 and 3000;
-- Q10. Delete orders placed between '2024-03-25' and '2024-04-08'.
delete from orders where order_date  between '2024-03-25' and '2024-04-08';


CREATE TABLE Emp ( 
 id INT, 
 name VARCHAR(100), 
 dept VARCHAR(20), 
 salary INT 
 ); 
 
 
INSERT INTO Emp VALUES 
 (1, 'Rahul', 'IT', 50000), 
 (2, 'Ramesh', 'HR', 35000), 
 (3, 'Karan', 'Finance', 45000), 
 (4, 'Mahesh', 'Marketing', 40000), 
 (5, 'Suresh', 'IT', 55000), 
 (6, 'Arjun', 'Sales', 38000), 
 (7, 'Manish', 'Admin', 42000), 
 (8, 'Ganesh', 'Finance', 47000), 
 (9, 'Naresh', 'HR', 39000), 
 (10, 'Rohan', 'IT', 52000), 
 (11, 'Mohan', 'Sales', 41000), 
 (12, 'Kishan', 'Marketing', 43000), 
 (13, 'Dinesh', 'Admin', 46000), 
 (14, 'Rajesh', 'Finance', 51000), 
 (15, 'Kiran', 'IT', 48000); 
 select*from emp;
 
--  Select Queries 
-- ================ 
-- Q6. Display employees from the Sales, Marketing, and Finance departments. 
 select*from emp where dept in ('Sales',' Marketing', 'Finance');
-- Q7. Display employees from the Admin department. 
 select*from emp where dept in ('admin');
-- Q8. Display employees whose salary is 39000, 43000, or 52000. 
 select*from emp where salary in ('39000', '43000', '52000');
-- Q9. Display employees from the IT, Admin, and Sales departments. 
 select*from emp where dept in ('IT', 'Admin',' Sales');
-- Q10. Display employees whose salary is 40000, 45000, or 50000. 
select*from emp where salary in ('40000','45000','50000');


-- Update Queries 
-- =============== 
-- Q6. Increase salary by 2500 for employees earning 45000, 48000, or 52000. 
update emp set salary=salary+250 where salary in ('45000', '48000', '52000');
-- Q7. Increase salary by 4000 for employees in the Admin department. 
update emp set salary=salary+4000 where dept in ('admin');
-- Q8. Increase salary by 3500 for employees in the Marketing and Finance departments. 
 update emp set salary=salary+3500 where dept in ('marketing','finance');
-- Q9. Increase salary by 500 for employees earning 40000, 41000, or 42000. 
 update emp set salary=salary+500 where salary in ('40000', '41000','42000');
-- Q10. Increase salary by 2000 for employees in the IT, Sales, and Admin departments. 
 update emp set salary=salary+2000 where dept in ('IT','Sales','Admin');
 
-- Delete Queries 
-- ============== 
-- Q6. Delete employees whose salary is 45000, 50000, or 55000. 
delete from emp where salary in ('45000','50000','55000');
-- Q7. Delete employees from the Marketing and HR departments. 
delete from emp where dept in ('marketing','hr');
-- Q8. Delete employees from the Admin department. 
delete from emp where dept in('admin');
-- Q9. Delete employees whose salary is 37000, 38000, or 41000. 
delete from emp where salary in ('37000','38000','41000'); 
-- Q10. Delete employees from the IT, Finance, and Sales departments. 
delete from emp where dept in ('it','finance','sales');


 