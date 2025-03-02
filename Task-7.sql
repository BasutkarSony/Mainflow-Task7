CREATE VIEW student_scores AS
SELECT s.studentId, s.name, sc.TotalScore
FROM students s
JOIN studentscores sc ON s.studentId = sc.studentId;

SELECT * FROM student_scores;

CREATE VIEW passed_students AS
SELECT studentId, name
FROM students
WHERE studentId NOT IN (
    SELECT studentId FROM studentscores WHERE TotalScore < 40
);
SELECT * FROM passed_students;