with t as (
select student,class,rank() over (partition by class order by student) as r from courses
)
select distinct class from t where t.r >=5