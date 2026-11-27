use da_09;
create table departments(
dept_id int primary key,
depat_name varchar(50)not null unique,
location varchar(50) default'hyderabad',
budget decimal(10,2) check (budget > 0)
);

insert into departments values 
(001,'data analyst','vizag',43000);
insert into departments values
(002,'python','vzd',45000),
(003,'java','sklm',48000);
set sql_safe_updates=0;
update departments set location='sklm' where dept_id=003;
insert into departments values(004,'gen ai','vizag',42000),
(005,'cloud computing','bangalore',50000);
insert into departments values(006,'devops','hyderabad',49000);
select*from departments;

create table students(
student_id int primary key,
student_name varchar(100) not null,
email varchar(40) unique,
age int check (age >=18),
gender varchar(20) not null,
city varchar(20) default 'hyderabad',
fees decimal(10,2) check (fees > 0),
dept_id int ,
foreign key(dept_id) references departments(dept_id));

insert into students values
(101,'bhuvan','bhuvan@gmail.com',21,'male','vizag',43000,001),
(102,'sai','sai@gmail.com',22,'male','vzd',45000,002),
(103,'lasya','lasya@gmail.com',20,'female','sklm',48000,003),
(104,'sri priya','sripriya@gmail.com',21,'female','vizag',42000,004),
(105,'karthik','karthik@gmail.com',20,'male','bangalore',50000,005),
(106,'pandu','pandu@gmail.com',19,'male','vizag',43000,001),
(107,'srini','srini@gmail.com',25,'female','vzd',45000,002),
(108,'sowmya','sowmya@gmail.com',18,'female','sklm',48000,003),
(109,'praneeth','praneeth@gmail.com',23,'male','vizag',42000,004),
(110,'honey','honey@gmail.com',21,'female','bangalore',50000,005);

select*from students;
-- default constraint
insert into students values(111,'ram','ram@gmail.com',20,'male',default,49000,006);
select*from students;

-- constraints violations

-- primary key
-- two students with same student_id
insert into students values(111,'sai','sairam@gmail.com',27,'male','vizag',42000,004),
(109,'krishna','krishna@gmail.com',20,'male','sklm',48000,003);
-- insert a student with null id
insert into students(student_id,student_name,email,age,gender,city,fees,dept_id)values
(null,'vshnu','vishnu@gmail.com',25,'male','hyderabad',49000,006);

-- unique constraints
-- same email
insert into students values(112,'hari','hari@gmail.com',29,'male','sklm',48000,003),
(113,'mahesh','hari@gmail.com',23,'male','vizag',42000,004);
-- update same email to another student
update students set email='bhuvan@gmail.com' where student_name='lasya';

-- not null
-- without student name
insert into students (student_id,student_name,email,age,gender,city,fees,dept_id) values
(113,null,'ayyo@gmail.com',24,'female','hyderabad',49000,006);
-- student with null gender
insert into students values(114,'babu','babu@gmail.com',23,null,'bangalore',50000,005);
select*from students;

-- DEFAULT constraint
-- DEFAULT WORKING
INSERT INTO STUDENTS VALUES(114,'NANI','NANI@GMAIL.COM',21,'MALE',DEFAULT,49000,001);
-- DEFAULT ANALYSING BY GIVING values
INSERT INTO STUDENTS VALUES(115,'BOB','BOB@GMAIL.COM',22,'MALE','SKLM',48000,002);

-- CHECK CONSTRAINTS
-- AGE
INSERT INTO STUDENTS VALUES(116,'SAI','HI@GMAIL.COM',15,'MALE','BANGALORE',50000,003);
-- FEE
INSERT INTO STUDENTS VALUES(117,'DIVYA','DIVYA@GMAIL.COM',30,'FEMALE','HYDERABAD',-45678,004);

-- FOREIGN KEY
-- DEPT_ID THAT DOESN'T EXIST IN DEPARTMENTS
INSERT INTO STUDENTS VALUES(118,'HIESH','GI@GMAIL.COM',23,'MALE','VIZAG',43000,007);
-- 






