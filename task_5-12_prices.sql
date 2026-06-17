select product_id, count(*) as price
from prices
group by product_id;

select product_id, avg(price)
from prices
group by product_id;

select product_id, min(price)
from prices
group by product_id;

select product_id, max(price)
from prices
group by product_id;