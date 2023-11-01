select
	s.id AS student_id, 
	s.fullname AS student_name, 
	AVG(g.grade) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
GROUP BY s.id, s.fullname
ORDER BY average_grade DESC
LIMIT 5;

SELECT 
	s.id AS student_id, 
	s.fullname AS student_name, 
	AVG(g.grade) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
WHERE g.subject_id = 2
GROUP BY s.id, s.fullname
ORDER BY average_grade DESC
LIMIT 1;

SELECT 
	g.id AS group_id, 
	g.name AS group_name, 
	AVG(grades.grade) AS average_grade
FROM groups g
JOIN students s ON g.id = s.group_id
JOIN grades ON s.id = grades.student_id
WHERE grades.subject_id = 3
GROUP BY g.id, g.name
ORDER BY average_grade DESC;

SELECT AVG(grade) AS average_grade
FROM grades;

SELECT s.name AS subject_name
FROM subjects s
WHERE s.teacher_id = 2;

SELECT id, fullname
FROM students
WHERE group_id = 3;

SELECT 
	s.fullname AS student_name, 
	g.grade, 
	g.grade_date
FROM students s
JOIN grades g ON s.id = g.student_id
WHERE s.group_id = 3 AND g.subject_id = 3;

SELECT AVG(g.grade) AS average_grade
FROM grades g
JOIN subjects s ON g.subject_id = s.id
WHERE s.teacher_id = 2;

SELECT DISTINCT s.name AS subject_name
FROM subjects s
JOIN grades g ON s.id = g.subject_id
JOIN students stu ON g.student_id = stu.id
WHERE stu.id =2;

SELECT s.name AS subject_name
FROM subjects s
JOIN grades g ON s.id = g.subject_id
JOIN students stu ON g.student_id = stu.id
JOIN teachers t ON s.teacher_id = t.id
WHERE stu.id = 3 AND t.id = 3;








