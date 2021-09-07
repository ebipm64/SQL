select name,student_id, count(*) from duplicate
group by student_id,name
having count(*) > 1