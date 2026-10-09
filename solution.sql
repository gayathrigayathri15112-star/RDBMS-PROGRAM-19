SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

BEGIN
    FOR rec IN student_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || rec.StudentID ||
            ' Name: ' || rec.StudentName ||
            ' Department: ' || rec.DepartmentID
        );
    END LOOP;
END;
/
