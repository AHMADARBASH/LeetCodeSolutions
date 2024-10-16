with a as (
select 
id,email,rank() over (partition by email order by id ) as r 
    From person)
delete from person where id in (select id from a where r>1)    
