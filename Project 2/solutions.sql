SELECT COURSE.Course_name,
    COURSE.Department
FROM (
        COURSE
        JOIN SECTION USING(Cours_number)
    )
    JOIN (
        GRADE_REPORT
        JOIN STUDENT USING(Student_number)
    ) USING(Section_identifier)
WHERE STUDENT.Name = 'Brown'
    AND SECTION.Semester = 'Fall'
SELECT STUDENT.Name
FROM (
        (
            STUDENT
            JOIN GRADE_REPORT USING(Student_number)
            WHERE GRADE_REPORT.Section_identifier = 112
        )
        JOIN (
            STUDENT
            JOIN GRADE_REPORT USING(Student_number)
            WHERE GRADE_REPORT.Section_identifier = 119
        ) USING(Name)
    )
SELECT STUDENT.Name
FROM STUDENT
WHERE Class = 1
    AND Major = 'CS'
SELECT SECTION.Course_number,
    SECTION.Semester,
    SECTION.Year,
    STUDENT.Name
FROM (
        SECTION
        JOIN GRADE_REPORT USING(SECTION_identifier)
    )
    JOIN STUDENT USING(Student_number)
WHERE SECTION.Instructor = 'Anderson'

SELECT 
