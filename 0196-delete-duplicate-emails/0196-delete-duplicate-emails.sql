with a as (
select 
id,email,rank() over (partition by email order by id ) as r 
    From person)
delete from a where r>1
