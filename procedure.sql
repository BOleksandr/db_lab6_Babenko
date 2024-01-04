-- Процедура insert_rating(in_phone_id, in_user_id, in_grade) 
-- додає в таблицю rating рядок з вказаними аргументами
create or replace procedure insert_rating(in_phone_id int, in_user_id int, in_grade int)
language plpgsql
as $$
begin
	insert into rating(cellphone_id, user_id, grade)
	values (in_phone_id, in_user_id, in_grade);
end;
$$;