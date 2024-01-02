drop procedure if exists conversion;

delimiter $$

create procedure conversion (in value_ int)

BEGIN

declare o_value int default 0; 
declare yard int default 0;
declare foot int default 0;
declare inch int default 0;

set o_value = value_;
set yard = value_ / (3*12);
set value_ = value_ % 36;

set foot = value_ / 12;
set value_ = value_ % 12;

set inch = value_;

select o_value ,yard , foot , inch;

END;

$$
delimiter ;
