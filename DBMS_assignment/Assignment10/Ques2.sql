drop procedure if exists sp_sqr_cube;

delimiter $$
create procedure sp_sqr_cube(in num int )

BEGIN

declare sqr_num int ;
declare cube_num int;


set sqr_num = num * num;
set cube_num = num * num * num;

insert into sqr_cube values(num , sqr_num , cube_num);

END;

$$
delimiter ;

