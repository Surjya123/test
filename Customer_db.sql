use customer_behaviour;
select * from customer;

#customer amount vs gender
select gender ,sum(purchase_amount) as revenue from customer
group by gender;

#customer used discount but spent more
select customer_id, purchase_amount 
from customer 
where discount_applied = 'Yes' 
  and purchase_amount >= (select avg(purchase_amount) from customer);
  #
