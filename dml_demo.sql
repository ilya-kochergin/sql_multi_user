set role group101_2017;
select * from vpupkin.regions;
select * from vpupkin.countries;
-- начало перой транцзакции

insert into vpupkin.regions(regions_seq.netxval, 'Mars') ; 

update vpupkin.employees set salary= salary*2
where department_id = 90 ;
select salary from vpupkin.employees
where department_id = 90 for update wait 5;
commit;
rollback; 
set constraints all deferred ;



rollback;

