


select OWNER, TABLE_NAME, NUM_ROWS from all_tables where owner in ('SHR', 'HR', 'WORLD', 'VPUPKIN') 
ORDER BY OWNER;

select * from stud101;

create sequence stud101_seq;

alter table stud101 add ( stud_id number(4) , time date) ;

update stud101 set stud_id =stud101_seq.nextval, time =sysdate; 

commit ;

grant select, insert , update on vpupkin.countries to group101_2017;
grant select, insert , update on vpupkin.regions to group101_2017;

grant select, insert , update on vpupkin.employees to group101_2017;

create sequence vpupkin.regions_seq start with 5; 
grant select on vpupkin.regions_seq to group101_2017;
grant select on vpupkin.employees to group101_2017;

select * from vpupkin.regions;
select * from dba_sequences where sequence_owner='VPUPKIN';

grant update on vpupkin.employees to group101_17;