/* /home/laurence/3DLDF-2.0.4/database/3dldf.sql  */

/* Created Mon 22 Mar 2021 04:27:10 PM CET by Laurence D. Finston (LDF)  */
create database 3dldf;

create user '3dldf'@'localhost';
grant all on 3dldf.* to '3dldf'@'localhost';

use 3dldf;

drop table points;

create table points
(
    w_coord_world float not null default 0.0,	
    x_coord_world float not null default 0.0,
    y_coord_world float not null default 0.0,
    z_coord_world float not null default 0.0,
    w_coord_user float not null default 0.0,	
    x_coord_user float not null default 0.0,
    y_coord_user float not null default 0.0,
    z_coord_user float not null default 0.0,
    w_coord_view float not null default 0.0,	
    x_coord_view float not null default 0.0,
    y_coord_view float not null default 0.0,
    z_coord_view float not null default 0.0,
    w_coord_pre_projective float not null default 0.0,	
    x_coord_pre_projective float not null default 0.0,
    y_coord_pre_projective float not null default 0.0,
    z_coord_pre_projective float not null default 0.0,
    w_coord_projective float not null default 0.0,	
    x_coord_projective float not null default 0.0,
    y_coord_projective float not null default 0.0,
    z_coord_projective float not null default 0.0,
    draw_dot_value int not null default 0,
    do_output boolean not null default false,
    measurement_units varchar(16) not null default "cm"
    
);

alter table points add column operetta varchar(64) default null after opera;

show columns from 3dldf.points;

/* Insert into `points'  */

/* ***************************************************** */

insert into points (x_coord_world, y_coord_world, z_coord_world, w_coord_world)
values
(1, 2, 3, 1);

#### *****************************************************

/* Select  */

select x_coord_world, y_coord_world, z_coord_world, w_coord_world from points
order by x_coord_world asc\G

/* Local Variables: */
/* mode:SQL */
/* outline-minor-mode:t */
/* End: */
