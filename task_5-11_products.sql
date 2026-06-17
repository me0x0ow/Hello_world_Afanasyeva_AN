select *
from products
where category = 'Электроника';

select *
from products
where category = 'Одежда' and name like '%женские%';

select *
from products
where category = 'Книги' or category = 'Продукты';

select *
from products
where not category = 'Бытовая техника';

select *
from products
where category in ('Электроника', 'Одежда', 'Книги');

select *
from products
where (category = 'Электроника' and name like '%Samsung%') or category = 'Бытовая техника';

select *
from products
where (category in ('Электроника', 'Одежда', 'Бытовая техника') and (id between 1 and 15) and (name not like '%Samsung%')) or category = 'Книги';