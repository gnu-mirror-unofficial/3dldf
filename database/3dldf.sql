/* /home/laurence/3DLDF-2.0.4/database/3dldf.sql  */

/* Created Mon 22 Mar 2021 04:27:10 PM CET by Laurence D. Finston (LDF)  */

use 3dldf;

drop table points;

create table points
(
    title varchar(128) unique not null,
);

alter table Songs add column operetta varchar(64) default null after opera;

show columns from Songs.Songs;

/* Insert into `Songs'  */

/* ***************************************************** */

insert into Songs (title, music, lead_sheet, recordings)
values
("Abends in der Taverna", "Werner Bochmann", true, 1);

#### *****************************************************

/* Select  */

select * from Songs order by title asc\G

select title from Songs where words_and_music = "Irving Berlin"\G

/* Local Variables: */
/* mode:SQL */
/* outline-minor-mode:t */
/* End: */
