SELECT * FROM narayana.narayana_attendence;
-- write a quary for tha student report who the student below 75 attendence;

SELECT NAME,PRESENT FROM narayana.narayana_attendence
where present > 75;

-- attendence below <65;
SELECT NAME,PRESENT
FROM narayana.narayana_attendence
where PRESENT < 65;


-- Average attendence list in ece students;
SELECT AVG(PRESENT) AS avg_attendence
FROM narayana.narayana_attendence;

-- section wise count
SELECT SECTION,COUNT(*) AS total_students
FROM narayana.narayana_attendence
GROUP BY SECTION;

-- HIGHEST ATTENDENCE STUDENT IN ECE III YEAR
SELECT NAME,PRESENT,SECTION
FROM narayana.narayana_attendence
ORDER BY PRESENT desc
LIMIT 1;

-- LOWEST ATTENDENCE STUDENT IN ECE III YEAR;
SELECT NAME,PRESENT,SECTION
FROM narayana.narayana_attendence
order by present asc
limit 1;

-- BRANCE WISE AVERAGE ATTENDENCE
SELECT BRANCH,AVG(PRESENT) AS avg_attendence
FROM narayana.narayana_attendence
GROUP BY BRANCH;


-- STUDENTS BETWEEN 65 TO 75 ATTENDENCE WHO ARE INVOLVED;
SELECT NAME,PRESENT,SECTION
FROM narayana.narayana_attendence
WHERE PRESENT BETWEEN 65 AND 75;

-- TOTAL STUDENTS;
SELECT COUNT(*) AS total_students
FROM narayana.narayana_attendence;