SELECT COUNT(joined_date)
FROM Student
WHERE joined_date BETWEEN '2005-12-04' AND '2018-12-04';

SELECT  * FROM Student limit 3;

select *
  from Student
order by Student_id asc limit 4,1;


select *
  from Student
order by Student_id asc limit 3,3;



select *
  from Student
where joined_date='2016-02-01';


select Course.Course_name,Course.Course_fee
from Course where Course.Course_fee=(select min(Course.Course_fee)
from Course);


select Course.Course_name,Course.Course_fee
from Course where Course.Course_fee=(select max(Course.Course_fee)
from Course);




SELECT count(*) FROM `Student`
where
    joined_date between '1995-01-14' and '2018-03-17';


SELECT COUNT(Module_no)
FROM Module
WHERE Course_id=1;



SELECT SUM(Module_no)
FROM Course;



SELECT COUNT(Student_name)
FROM Course
WHERE Course_id=1;


SELECT COUNT(Student_name)
FROM Course;


SELECT COUNT(Student_no) FROM Course WHERE Student_no>2  ;



SELECT marks FROM institute.Score ;


SELECT * FROM institute.Score where Module_name='b1';


//multiple tables


SELECT * from Student
INNER JOIN Course
ON Student.Course_id=Course.Course_id;




SELECT * from Student
INNER JOIN Module
ON Student.Course_id=Module.Course_id;




select Module.Module_name,Module.Module_no
from
Module
join Course using(Course_id)order by 1,2;


SELECT * from Student
INNER JOIN Module
ON Student.Module_no=Module.Module_no;



SELECT * from Student
INNER JOIN Score
ON Student.student_id=Score.student_id;


SELECT Score.Course_name, Score.Module_name,Score.Student_name,Score.marks
FROM Score
ORDER BY Score.marks desc;


select * from Student where Student_id=(select Score.Student_id
FROM Score where marks=(select max(Score.marks)
from Score)
ORDER BY Score.marks desc
limit 1);


select student_name,joined_date,completion_date,Course_name,Course_fee,marks from Student,Course,Score where Student.student_id=Course.Student_id;