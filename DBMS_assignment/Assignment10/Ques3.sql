drop procedure if exists celsius_faren;

delimiter $$
create procedure celsius_faren(in symbol varchar(1) , in value double)

BEGIN

declare result double ;


if symbol = "F" THEN
set result = (value - 32) * (5/9);
select result AS CELSIUS;

ELSE 

set result = (9/5) * value + 32;
select result as Fahrenheit;

END IF;


END;

$$
delimiter ;


