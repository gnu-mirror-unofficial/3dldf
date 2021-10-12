/* /home/laurence/3DLDF-2.0.4/database/3dldf.sql  */

/* Created Mon 22 Mar 2021 04:27:10 PM CET by Laurence D. Finston (LDF)  */

/* This file is part of GNU 3DLDF, a package for three-dimensional drawing.  */
/* Copyright (C) 2021 The Free Software Foundation, Inc. */

/* GNU 3DLDF is free software; you can redistribute it and/or modify  */
/* it under the terms of the GNU General Public License as published by  */
/* the Free Software Foundation; either version 3 of the License, or  */
/* (at your option) any later version. */

/* GNU 3DLDF is distributed in the hope that it will be useful,  */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of  */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the  */
/* GNU General Public License for more details.  */

/* You should have received a copy of the GNU General Public License  */
/* along with GNU 3DLDF; if not, write to the Free Software  */
/* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA  */

/* GNU 3DLDF is a GNU package.   */
/* It is part of the GNU Project of the   */
/* Free Software Foundation  */
/* and is published under the GNU General Public License.  */
/* See the website http://www.gnu.org  */
/* for more information.    */
/* GNU 3DLDF is available for downloading from  */
/* http://www.gnu.org/software/3dldf/LDF.html.  */

/* Please send bug reports to Laurence.Finston@gmx.de */
/* The mailing list help-3dldf@gnu.org is available for people to  */
/* ask other users for help.   */
/* The mailing list info-3dldf@gnu.org is for sending  */
/* announcements to users. To subscribe to these mailing lists, send an  */
/* email with "subscribe <email-address>" as the subject.   */

/* The author can be contacted at:  */

/* Laurence D. Finston                   */
/* c/o Free Software Foundation, Inc.   */
/* 51 Franklin St, Fifth Floor           */
/* Boston, MA  02110-1301               */
/* USA                                   */

/* Laurence.Finston@gmx.de */

/* * (1) */

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
    up varchar(32) default null,
    array_flag boolean not null default false,
    vector_type_flag boolean not null default false,
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
    drawdot_value int not null default 0,
    do_output boolean not null default false,
    measurement_units varchar(16) not null default "cm"
);


alter table points add column operetta varchar(64) default null after opera;

show columns from 3dldf.points;

/* Insert into `points'  */

/* ***************************************************** */

delete from points;

insert into points (prefix, name, up,
world_coordinates_x, world_coordinates_y, world_coordinates_z, world_coordinates_w)
values
("abc", "p", "r", 1, 2, 3, 1);

insert into points (prefix, name, up,
world_coordinates_x, world_coordinates_y, world_coordinates_z, world_coordinates_w)
values
("abc", "q", "r", 17.5, 5, 13.001, 1);


/* * Select  */


select prefix, name, up, array_flag, vector_type_flag,
world_coordinates_x, world_coordinates_y, world_coordinates_z, world_coordinates_w
from points order by prefix, name\G

select * from points order by prefix, name, world_coordinates_x, world_coordinates_y,
world_coordinates_z asc\G


/* Transforms  */

drop table transforms;
create table transforms
(
   prefix varchar(32) not null default "",
   name varchar(32) not null default "",
   up varchar(32) default null,
   
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



insert into transforms () values ();

select * from transforms\G

delete from transforms;

insert into transforms (name) values ("t0");

select * from transforms order by name, matrix_0_0 asc\G

/* * paths  */

drop table paths;

create table paths
(
   prefix varchar(32) not null default "",
   name varchar(32) not null default "",
   up varchar(32) default null,

   line_switch boolean not null default false,
   cycle_switch boolean not null default false,
  
   do_output boolean not null default false,
  
   fill_draw_value int not null default 0,
    
   arrow int not null default 0,

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
   projective_extremes_max_z float not null default 0.0 
);


insert into paths (prefix, name) values ("abc", "r"); 

select * from points where up = "r"\G

show tables;

select * from connectors;




/* * connectors  */

drop table connectors;

create table connectors
(
   prefix varchar(32) not null default "",
   up varchar(32) default null,
   counter int not null default 0,
   connector varchar(2) default ""
);



insert into connectors () values ();
select * from connectors\G

/* Local Variables: */
/* mode:SQL */
/* outline-minor-mode:t */
/* End: */

