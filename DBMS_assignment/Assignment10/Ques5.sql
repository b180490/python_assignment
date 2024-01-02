drop procedure if exists check_100;

delimiter $$
create procedure check_100(in x int , in y int)

BEGIN

declare result int ;

set result = x * y;


if result >=  100 THEN
select "equal or greater to 100" as msg ;

ELSE 

select "less than  100" as msg;

END IF;


END;

$$
delimiter ;

