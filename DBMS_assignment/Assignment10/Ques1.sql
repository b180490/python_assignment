drop procedure if exists sp_perimeter_area;

delimiter $$
create procedure sp_perimeter_area(in p_len int , in p_bred int)

BEGIN

declare v_perimeter int default 0;
declare v_area int;


set v_perimeter = 2 * (p_len + p_bred);
set v_area = p_len * p_bred;

insert into metrics values(v_perimeter , v_area);

END;

$$
delimiter ;
