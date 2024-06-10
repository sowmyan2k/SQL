create database assignment

use assignment

create table customer(cust_id int, 
first_name varchar(20),
last_name varchar(20),
email varchar(20), 
addr varchar(30),
city varchar(20),
state varchar(20),
zip int)

select * from customer

---2.Insert 5 new records into the tableinsert into Customer values (1,'Sana','Sinha','sana@gmail.com','JP_Nagar','Bangalore','Karnataka',58005),
(2,'Pooja','Sharma','pooja@gmail.com','5th Cross','Pune','Maharastra',45093),
(3,'Gayathri','D','gayathri@yahoo.com','Texas','San Jose','CA',0987),
(4,'Bob','Andrew','bob@yahoo.com','New City','California','CA',9653),(5,'Raj','J','raj@gmail.com','4th Cross','Chennai','Tamil Nadu',600001)select * from customer---3.Select only the ‘first_name’ & ‘last_name’ columns from the customer table

select first_name, last_name
from customer

---4.Select those records where ‘first_name’ starts with “G” and city is ‘San Jose’

select * from customer
where first_name like 'g%' and city='san jose'


----module 3 assignment

---1.Create an ‘Orders’ table which comprises of these columns – ‘order_id’,
---‘order_date’, ‘amount’, ‘customer_id’

Create table Orders(order_id int, order_date date, amount int, cust_id int)

-- Record Insertion
insert into Orders (order_id, order_date, amount, cust_id)
values  (11, '2022-Aug-06',2500,1),
		(22,'2021-11-04',3500,3),
		(33,'2019-12-14',2000,5),
		(44,'2020-02-20',5000,6),
		(55,'2022-07-05',2400,7);


---Make an inner join on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column 


select * from Orders
select * from Customer

select c.first_name, o.cust_id
from customer as c inner join Orders as o
on c.cust_id=o.cust_id

---3.Make left and right joins on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column

select c.first_name, o.cust_id
from customer as c right join Orders as o
on c.cust_id=o.cust_id


select c.first_name, o.cust_id
from customer as c left join Orders as o
on c.cust_id=o.cust_id

----4.Update the ‘Orders’ table, set the amount to be 100 where ‘customer_id’ is 3

select * from Orders

update Orders set amount=100
where cust_id=3


----module 4 assignment

---1.Use the inbuilt functions and find the minimum, maximum and average amount from the orders table

select * from Orders
select min(amount) as min_amount from Orders
select max(amount) from Orders
select avg(amount) from Orders

---2.Create a user-defined function, which will multiply the given number with 10

create function multiply(@number int)
returns int
as
begin
return @number*10
end

select dbo.multiply(14) as number1
select dbo.multiply(140) as number2

select amount,dbo.multiply(amount) as new_amt from orders

---3.Use the case statement to check if 100 is less than 200, greater than 200 or equal to
---2oo and print the corresponding value

select
case
when 100<200 then '100 is less than 200'
when 100>200 then '100 is greater than 200'
when 100=200 then '100 is equal to 200'
end as result
