select *
from prices
where price between 1000 and 50000;

select distinct price
from prices
where (price between 500 and 70000) and (product_id between 1 and 5);

select distinct price
from prices
where (price between 60000 and 70000) or (price between 0 and 99);