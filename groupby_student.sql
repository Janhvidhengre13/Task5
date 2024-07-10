select * from student_performance

select math_score, sum(Math_score) from student_performance
group by math_score 
having sum (Math_score)>50

select reading_score, sum(reading_score) from student_performance
group by reading_score
having sum (reading_score) > 90
order by sum (reading_score) asc
limit 3

select writing_score, sum (writing_score) from student_performance
group by writing_score
having sum (writing_score)>70
order by sum (writing_score) desc
limit 10

select
    gender,
    Writing_score,
    case
        when Writing_score >= 60 then 'Pass'
        else 'Fail'
    end as Writing_result
from student_performance



select gender,Math_score,
    case
        when Math_score >= 90 then 'A'
        When Math_score >= 80 then 'B'
        When Math_score >= 70 then 'C'
        When Math_score >= 60 then 'D'
        else 'F'
    end as Math_grade
from
    student_performance
