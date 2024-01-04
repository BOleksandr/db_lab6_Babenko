-- Тригер insert_cellphone після всавки нового рядка в таблицю 
-- Cellphone затисує першу букву бренду у верхньому регістрі
create or replace function upper_first_letter_brand() 
returns trigger
language 'plpgsql'
as $$
begin
	update Cellphone set 
	brand = upper(substring(trim(new.brand), 1, 1)) || substring(trim(new.brand), 2)
	where Cellphone.cellphone_id = new.cellphone_id;
	return null;
end;
$$;

create trigger insert_cellphone  
after insert on cellphone 
for each row execute function upper_first_letter_brand();