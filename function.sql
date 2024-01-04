-- Функція phone_info(phone_id) за phone_id виводить модель і бренд телефону та його середню оцінку користувачами
create or replace function phone_info(phone_id int)
	returns table (model_name char, brand_name char, avg_grade numeric(4, 2))
language plpgsql
as $$
begin
 return query
 	select model, brand, round(coalesce(avg(grade), 0), 2) from cellphone natural join rating
	where cellphone_id = phone_id
	group by model, brand;
end;
$$;