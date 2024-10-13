--
-- File generated with SQLiteStudio v3.4.4 on Sun Oct 13 11:42:31 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: course
CREATE TABLE IF NOT EXISTS course (
    course_id   INTEGER PRIMARY KEY,
    name         TEXT,
    creditPoints INTEGER);
INSERT INTO course (course_id, name, creditPoints) VALUES (101, 'TO�N H?C', 3);
INSERT INTO course (course_id, name, creditPoints) VALUES (102, 'V?T L�', 4);
INSERT INTO course (course_id, name, creditPoints) VALUES (103, 'H�A H?C', 3);
INSERT INTO course (course_id, name, creditPoints) VALUES (104, 'SINH H?C', 4);
INSERT INTO course (course_id, name, creditPoints) VALUES (105, 'KHOA H?C M�Y T�NH', 6);
INSERT INTO course (course_id, name, creditPoints) VALUES (106, 'KINH T? H?C', 3);
INSERT INTO course (course_id, name, creditPoints) VALUES (107, 'T�M L� H?C', 4);
INSERT INTO course (course_id, name, creditPoints) VALUES (108, 'K? THU?T', 5);
INSERT INTO course (course_id, name, creditPoints) VALUES (109, 'L?CH S?', 3);
INSERT INTO course (course_id, name, creditPoints) VALUES (110, 'NG�N NG? ANH', 3);

-- Table: employee
CREATE TABLE IF NOT EXISTS "employee" (
    course_id   employee_id PRIMARY KEY,
    name    TEXT,
    surname TEXT,
    jobTitle TEXT
);
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (101, 'Nguy?n', 'Anh', 'Gi�o su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (102, 'Tr?n', 'B�nh', 'Ph� Gi�o su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (103, 'L�', 'Chi?n', 'Gi?ng vi�n');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (104, 'Ph?m', 'Dung', 'Gi?ng vi�n ch�nh');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (105, '�?', 'Ho�ng', 'Gi�o su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (106, 'Vu', 'Ki�n', 'Gi?ng vi�n');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (107, 'B�i', 'Lan', 'Tr? l� Gi�o su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (108, 'Ho�ng', 'M?nh', 'Gi�o su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (109, 'Phan', 'Ng?c', 'Gi?ng vi�n ch�nh');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (110, '�inh', 'Phong', 'Ph� Gi�o su');

-- Table: program
CREATE TABLE IF NOT EXISTS program (
    program_id PRIMARY KEY,
    name TEXT,    
    creditPoints    INTERGER,
    yearCommenced INTERGER
);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (201, 'Chuong tr�nh To�n h?c', 120, 2015);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (202, 'Chuong tr�nh V?t l�', 130, 2016);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (203, 'Chuong tr�nh H�a h?c', 125, 2017);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (204, 'Chuong tr�nh Sinh h?c', 135, 2018);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (205, 'Chuong tr�nh Khoa h?c m�y t�nh', 150, 2015);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (206, 'Chuong tr�nh Kinh t? h?c', 120, 2016);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (207, 'Chuong tr�nh T�m l� h?c', 130, 2017);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (208, 'Chuong tr�nh K? thu?t', 140, 2018);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (209, 'Chuong tr�nh L?ch s?', 125, 2015);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (210, 'Chuong tr�nh Ng�n ng? Anh', 120, 2016);

-- Table: student
CREATE TABLE IF NOT EXISTS student (
    student_id   INTEGER PRIMARY KEY,
    name         TEXT,
    surname      TEXT,
    dateOfBirth  TEXT,
    yearEnrolled INTEGER
);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (1, 'Adam', 'Van A', '1999-03-15', 2017);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (2, 'Tr?n', 'Th? B', '2000-11-25', 2018);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (3, 'L�', 'Minh C', '1998-07-10', 2016);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (4, 'Ph?m', 'Qu?c D', '2001-02-20', 2019);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (6, 'Vu', 'Van F', '2000-09-12', 2018);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (7, 'B�i', 'Th? G', '1999-04-30', 2017);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (8, 'Ho�ng', 'Van H', '1998-06-05', 2016);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (9, 'Phan', 'Th? I', '2001-12-01', 2019);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (10, '�inh', 'Van J', '2000-08-14', 2018);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
