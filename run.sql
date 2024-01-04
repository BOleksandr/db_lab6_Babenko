-- Виклик функції
select * from phone_info(4);

-- Виклик процедури
select * from rating;

call insert_rating(2, 4, 10);
select * from rating;

delete from rating where cellphone_id = 2 and user_id = 4;

-- Виклик тригеру
select * from cellphone;

insert into Cellphone (cellphone_id, model, brand)
values (6, 'iPhone 7', 'apple');

-- Повино вивести Apple
select * from cellphone;

delete from Cellphone
where cellphone_id = 6;