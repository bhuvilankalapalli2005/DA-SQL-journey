
CREATE TABLE Products (
 id INT,
 name VARCHAR(100),
 price DECIMAL(10,2),
 qty INT
 );

INSERT INTO Products VALUES
 (1, 'Pen', 10.00, 100),
 (2, 'Notebook', 25.00, 50),
 (3, 'Pencil', 5.00, 200),
 (4, 'Eraser', 3.00, 300),
 (5, 'Marker', 15.00, 80),
 (6, 'Scale', 20.00, 150),
 (7, 'Sharpener', 8.00, 120),
 (8, 'Geometry Box', 120.00, 40),
 (9, 'Sketch Pen', 60.00, 75),
 (10, 'Crayons', 90.00, 55);
 
 -- add 20rs to every product
select name,price,price+(price+20) as increased_price from products;
-- Display half of each product's quantity. 
select name,price,qty,qty+(qty/2) as half_qty from products;
-- Display double the quantity of every product.
select name,price,qty,qty+(qty*2) as double_qty from products;
-- Find the remaining quantity after selling 10 units.
select name,price,qty,qty+(qty-10) as remaining_qty from products; 
--  Divide the price equally among 5 people. 
select price/5 as each_person from products;
-- Q11. Display products whose price is an even number. 
select*from products where price%2=0;
-- Q12. Display products whose quantity is divisible by 5. 
select*from products where Qty%5=0;
-- Q13. Calculate the price after giving a 10% discount. 
select name,price,price-(price*0.10) as discount_price from products;
-- Q14. Calculate the price after adding ₹15 and then 18% GST. 
 SELECT price,(price + 15) AS price_after_adding_15,(price + 15) * 1.18 AS final_price_with_gst FROM products;
-- Q15. Display the remaining quantity after selling half the stock.
select name,qty,(qty/2) as after_sale from products;
 
 
-- Q6. Increase the quantity of Pen by 50. 
set sql_safe_updates=0;
update products set qty=qty+50 where name='pen';
-- Q7. Reduce the quantity of Pencils by 25. 
update products set qty=qty-25 where name='pencils';
-- Q8. Increase the price of Scale by 10%. 
update products set price=price*0.10 where name='scale';
-- Q9. Double the quantity of Sharpener. 
update products set qty=qty*2 where name='sharpener';
-- Q10. Reduce the price of Crayons by ₹15.
update products set price=price-15 where name='crayons';


-- Q2. Delete products whose price is less than ₹10. 
delete from products where price<10;
-- Q3. Delete the Marker record. 
delete from products where name='marker';
-- Q4. Delete products whose quantity is greater than 300. 
delete from products where qty<300;
-- Q5. Delete products whose price is greater than ₹100. 
delete from products where price>100;

CREATE TABLE StudentScores ( 
 id INT, 
 name VARCHAR(100), 
 subject VARCHAR(50), 
 marks INT 
 ); 
 
 
INSERT INTO StudentScores VALUES 
 (1, 'Alice', 'Math', 95), 
 (2, 'Bob', 'Math', 76), 
 (3, 'Charlie', 'Math', 59), 
 (4, 'Diana', 'Math', 88), 
 (5, 'Eve', 'Math', 40), 
 (6, 'Frank', 'Math', 95), 
 (7, 'Grace', 'Science', 67), 
 (8, 'Henry', 'Science', 82), 
 (9, 'Ivy', 'English', 91), 
 (10, 'Jack', 'English', 55), 
 (11, 'Kevin', 'Math', 73), 
 (12, 'Lily', 'Science', 48), 
 (13, 'Mia', 'English', 100), 
 (14, 'Noah', 'Math', 64), 
 (15, 'Olivia', 'Science', 79);
 
 -- Q6. Display students who scored 60 or less. 
 select*from studentscores where marks<=60;
-- Q7. Display students who scored more than 70. 
select*from studentscores where marks>70;
-- Q8. Display students who scored less than or equal to 75. 
select*from studentscores where marks<=75;
-- Q9. Display students who scored exactly 100. 
select*from studentscores where marks=100;
-- Q10. Display students who did not score 40. 
select*from studentscores where marks!=40;
-- Q11. Display students who scored more than or equal to 90.
select*from studentscores where marks=90;
-- Q12. Display students who scored less than 65.
select*from studentscores where marks<65;


-- Q6. Set marks to 100 for students who scored exactly 95. 
update studentscores set marks=100 where marks=95;
-- Q7. Increase marks by 15 for students scoring below 60. 
update studentscores set marks=marks+15 where marks<60;
-- Q8. Add 5 marks for students scoring above 75. 
update studentscores set marks=marks+5 where marks>75;
-- Q9. Reduce 3 marks for students scoring above 95. 
update studentscores set marks=marks-3 where marks>95;
-- Q10. Set marks to 75 for students scoring below 50. 
update studentscores set marks=75 where marks<50;
-- Q11. Increase marks by 8 for students scoring exactly 64.
update studentscores set marks=marks+8 where marks=64; 
-- Q12. Reduce 5 marks for students scoring 100.
update studentscores set marks=marks-5 where marks=100;


--  Q6. Delete students who scored exactly 76.
delete from studentscores where marks=76; 
-- Q7. Delete students who scored exactly 100.
delete from studentscores where marks=100;  
-- Q8. Delete students who scored less than 65. 
delete from studentscores where marks<65;
-- Q9. Delete students who scored greater than or equal to 90. 
delete from studentscores where marks<=90; 
-- Q10. Delete students who scored exactly 73.
delete from studentscores where marks=76;  
-- Q11. Delete students who scored exactly 48.
delete from studentscores where marks=48;  
-- Q12. Delete students who scored between 70 and 80 (using comparison operators).
delete from studentscores where marks>70 and marks<80;
set sql_safe_updates=0;

use da_09;
show tables;

create table patients(
patient_id int primary key,
patient_name varchar(50) not null,
age int check(age>=1),
gender varchar(10) not null,
phone varchar(15) unique,
city varchar(50) default'hyderabad');





create table doctors(
doctor_id int primary key,
doctor_name varchar(50) not null,
specialization varchar(50) not null,
experience int check(experience>=0),
consultaion_fee decimal(10,2) check(consultaion_fee>0));

-- update the consultation fee of the doctor_id is 3 to 800
update doctors set consultation_fee=consultation_fee+800 where doctor_id=3;
-- update fee of every docs by 10%
update doctors set consultation_fee=consultation*1.10 ;
-- appointment is completes to id 5
update appointments set appointment_status='completed' where appointment_id =5;
-- delete billing id 8 also delete patient record who does not hve any appointments or billing records
delete from billing where bill_id=8;
-- display patient names and age after 5 years
select patient_name,age,age+5 as  age_after_5_years from patients;
-- display doctor names and consultation fee after adding 200rs
select doctor_name,consultation_fee,consultation_fee+200 as increased_fee from doctors;
-- display doctors names and confee after deducting 10% as tax
select doctor_name,consultation_fee,consultation_fee*0.90 as fee_tax from doctors;
-- display patient ids and calculate the bill amount after substracting the dicount
select patient_id,bill_amount,bill_amount-300 as discount_fee from billing;
-- display bill ids and calculate bill amount after adding 18%gst
select bill_id,bill_amount,bill_amount*1.18 as gst from billing;
-- display patients whose age is >40
select*from ptients where age>40;
-- display patients whose age is <=25;
select*from ptients where age<=25;
--  display doc whose exp is >5years
select*from doctors where experience>5;
-- display doc confee is not equal to500
select*from doctors where consultation_fee!=500;
-- display patients btw 20 and 50
select*from patients where age >20 and age<50;
-- display doc with specialization card,neu,orhto using in
-- display patients whose age is >30 and city is hyd
select*from patients where age>30 and city='hyderabad';
-- display doc exp>10 and fee is >1000
select*from doctors where experience>10 or consultation_fee>1000;
-- 

create table appointments(
appointment_id int primary key,
patient_id int,
foreign key(patient_id)references patients(patient_id),
doctor_id int,
foreign key(doctor_id)references doctors(doctor_id),
appointment_date date not null,
appointment date not null,
appointment_status varchar(20) default'scheduled');
alter table appointments drop appointment;
desc appointments;

create table billing(
bill_id int primary key,
patient_id int ,
foreign key(patient_id)references patients(patient_id),
bill_amount decimal(10,2) check(bill_amount>0),
discount decimal(10,2) default'0',
payment_mode varchar(20) not null,
payment_status varchar(20) default'pending');


