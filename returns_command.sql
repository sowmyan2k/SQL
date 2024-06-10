create table Orders(order_id int,order_date date,amount int,cust_id int)
insert into Orders(order_id,order_date,amount,cust_id) values (11,'2022-11-06',3000,1),
(22,'2022-10-15',1200,3),
(33,'2022-10-25',2500,6),
(44,'2022-09-30',4000,8),
(55,'2022-09-02',3400,9)
select * from Orders
select * from customer
select c.first_name,o.cust_id
from customer as c inner join Orders as o
on c.customer_id=o.cust_id
select c.first_name,o.cust_id
from customer as c left join Orders as o
on c.customer_id=o.cust_id
select c.first_name,o.cust_id
from customer as c right join Orders as o
on c.customer_id=o.cust_id
update Orders set amount=100
where cust_id=3
select * from Orders
select min(amount) from Orders
select max(amount) from Orders
select avg(amount) from Orders
select avg(amount) as average from Orders
create function multiply(@number int)
returns int
as begin
return @number*10
end
select dbo.multiply(230) as number2
select amount,dbo.multiply(amount) as new_amt from Orders
select
case
when 100<200 then'100 is less than 200'
when 100>200 then'100 is greater than 200'
when 100=200 then'100 is equal to 200'
end as result

select * from Orders
select * from Orders ORDER BY amount
