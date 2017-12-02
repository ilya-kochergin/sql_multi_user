set role group101_2017;
select * from vpupkin.regions;
select * from vpupkin.countries;
-- начало перой транцзакции

insert into vpupkin.regions(regions_seq.netxval, 'Mars') ; 
