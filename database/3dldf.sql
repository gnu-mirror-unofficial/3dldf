/* /home/laurence/3DLDF-2.0.4/database/3dldf.sql  */

/* Created Mon 22 Mar 2021 04:27:10 PM CET by Laurence D. Finston (LDF)  */
create database 3dldf;

create user '3dldf'@'localhost';
grant all on 3dldf.* to '3dldf'@'localhost';

use 3dldf;

/* * points  */

drop table points;

create table points
(
    prefix varchar(32) not null default "",
    name varchar(32) not null default "",
    world_coordinates_x float not null default 0.0,
    world_coordinates_y float not null default 0.0,
    world_coordinates_z float not null default 0.0,
    world_coordinates_w float not null default 0.0,	
    user_coordinates_x float not null default 0.0,
    user_coordinates_y float not null default 0.0,
    user_coordinates_z float not null default 0.0,
    user_coordinates_w float not null default 0.0,
    view_coordinates_x float not null default 0.0,
    view_coordinates_y float not null default 0.0,
    view_coordinates_z float not null default 0.0,
    view_coordinates_w float not null default 0.0,	
    pre_projective_coordinates_w float not null default 0.0,	
    pre_projective_coordinates_x float not null default 0.0,
    pre_projective_coordinates_y float not null default 0.0,
    pre_projective_coordinates_z float not null default 0.0,
    projective_coordinates_x float not null default 0.0,
    projective_coordinates_y float not null default 0.0,
    projective_coordinates_z float not null default 0.0,
    projective_coordinates_w float not null default 0.0,	
    world_extremes_min_x float not null default 0.0,	
    world_extremes_max_x float not null default 0.0, 
    world_extremes_min_y float not null default 0.0, 
    world_extremes_max_y float not null default 0.0, 
    world_extremes_min_z float not null default 0.0, 
    world_extremes_max_z float not null default 0.0, 
    pre_projective_extremes_min_x float not null default 0.0,  
    pre_projective_extremes_max_x float not null default 0.0, 
    pre_projective_extremes_min_y float not null default 0.0,  
    pre_projective_extremes_max_y float not null default 0.0, 
    pre_projective_extremes_min_z float not null default 0.0,  
    pre_projective_extremes_max_z float not null default 0.0, 
    projective_extremes_min_x float not null default 0.0,  
    projective_extremes_max_x float not null default 0.0, 
    projective_extremes_min_y float not null default 0.0,  
    projective_extremes_max_y float not null default 0.0, 
    projective_extremes_min_z float not null default 0.0,  
    projective_extremes_max_z float not null default 0.0, 
    draw_dot_value int not null default 0,
    do_output boolean not null default false,
    measurement_units varchar(16) not null default "cm"
);


    -- transform_matrix_0_0 float not null default 1.0,
    -- transform_matrix_0_1 float not null default 0.0,
    -- transform_matrix_0_2 float not null default 0.0,
    -- transform_matrix_0_3 float not null default 0.0,	
                  
    -- transform_matrix_1_0 float not null default 0.0,
    -- transform_matrix_1_1 float not null default 1.0,
    -- transform_matrix_1_2 float not null default 0.0,
    -- transform_matrix_1_3 float not null default 0.0,
                  
    -- transform_matrix_2_0 float not null default 0.0,
    -- transform_matrix_2_1 float not null default 0.0,
    -- transform_matrix_2_2 float not null default 1.0,
    -- transform_matrix_2_3 float not null default 0.0,
                  
    -- transform_matrix_3_0 float not null default 0.0,
    -- transform_matrix_3_1 float not null default 0.0,
    -- transform_matrix_3_2 float not null default 0.0,
    -- transform_matrix_3_3 float not null default 1.0,



alter table points add column operetta varchar(64) default null after opera;

show columns from 3dldf.points;

/* Insert into `points'  */

/* ***************************************************** */

delete from points;

insert into points (world_coordinates_x, world_coordinates_y, world_coordinates_z, world_coordinates_w)
values
(1, 2, 3, 1);

insert into points (world_coordinates_x, world_coordinates_y, world_coordinates_z, world_coordinates_w)
values
(17.5, 5, 13.001, 1);

/* * Select  */

select world_coordinates_x, world_coordinates_y, world_coordinates_z, world_coordinates_w,
transform_matrix_0_0, transform_matrix_0_1, transform_matrix_0_2, transform_matrix_0_3,
transform_matrix_1_0, transform_matrix_1_1, transform_matrix_1_2, transform_matrix_1_3,
transform_matrix_2_0, transform_matrix_2_1, transform_matrix_2_2, transform_matrix_2_3,
transform_matrix_3_0, transform_matrix_3_1, transform_matrix_3_2, transform_matrix_3_3
from
points order by world_coordinates_x, world_coordinates_y, world_coordinates_z, world_coordinates_z asc\G


/* * transforms  */

drop table transforms;

create table transforms
(
    name varchar(32) not null default "",
  
    matrix_0_0 float not null default 1.0,
    matrix_0_1 float not null default 0.0,
    matrix_0_2 float not null default 0.0,
    matrix_0_3 float not null default 0.0,	
                  
    matrix_1_0 float not null default 0.0,
    matrix_1_1 float not null default 1.0,
    matrix_1_2 float not null default 0.0,
    matrix_1_3 float not null default 0.0,
                  
    matrix_2_0 float not null default 0.0,
    matrix_2_1 float not null default 0.0,
    matrix_2_2 float not null default 1.0,
    matrix_2_3 float not null default 0.0,
                  
    matrix_3_0 float not null default 0.0,
    matrix_3_1 float not null default 0.0,
    matrix_3_2 float not null default 0.0,
    matrix_3_3 float not null default 1.0

);

delete from transforms;

insert into transforms (name) values ("t0");

select * from transforms order by name, matrix_0_0 asc\G

/* Local Variables: */
/* mode:SQL */
/* outline-minor-mode:t */
/* End: */

