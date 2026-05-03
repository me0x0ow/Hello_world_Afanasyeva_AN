select product_id, count(*) as name
from suppliers
group by product_id;