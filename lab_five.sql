SET VERIFY OFF;
SET ECHO OFF;
/* initial settings */
SET LINESIZE 180;
SET PAGESIZE 35;
/* drop any previous data */
DROP TABLE student cascade constraints;
DROP TABLE faculty cascade constraints;
DROP TABLE course cascade constraints;
DROP TABLE section cascade constraints;
DROP TABLE location cascade constraints;
DROP SEQUENCE s_StudentID;
DROP SEQUENCE s_FacultyID;
DROP SEQUENCE s_CourseID;
DROP SEQUENCE s_SectionID;
DROP SEQUENCE s_LocationID;
DROP INDEX i_student;
DROP INDEX i_faculty;
/* create sequences */
CREATE SEQUENCE s_StudentID;
CREATE SEQUENCE s_FacultyID;
CREATE SEQUENCE s_CourseID;
CREATE SEQUENCE s_SectionID;
CREATE SEQUENCE s_LocationID;
/* header and footer */
TTITLE LEFT 'Date: ' _DATE CENTER 'Report' RIGHT 'Page: ' FORMAT 999 SQL.PNO SKIP 2
BTITLE LEFT 'Created by Bennett Wenger' RIGHT 'Page: ' FORMAT 999 SQL.PNO SKIP 2
/* create tables */
CREATE TABLE student (
    StudentID NUMBER(10) CONSTRAINT student_pk PRIMARY KEY,
    FirstName VARCHAR2(20),
    LastName VARCHAR2(20), MI CHAR(1),
    Address VARCHAR2(20), City VARCHAR2(20),
    State CHAR(2), Zip VARCHAR2(10),
    HomePhone VARCHAR2(10), WorkPhone VARCHAR2(10),
    Email VARCHAR2(20), DOB DATE,
    PIN VARCHAR2(10), Status CHAR(1)
);
CREATE TABLE faculty (
    FacultyID NUMBER(10) CONSTRAINT faculty_pk PRIMARY KEY,
    FirstName VARCHAR2(20),
    LastName VARCHAR2(20), MI CHAR(1),
    WorkPhone VARCHAR2(10), CellPhone VARCHAR2(10),
    Rank VARCHAR2(20), Experience VARCHAR2(20),
    Status CHAR (1)
);
CREATE TABLE course (
    CourseID NUMBER(10) CONSTRAINT course_pk PRIMARY KEY,
    CourseNumber VARCHAR2(20),
    CourseName VARCHAR2(20), Description VARCHAR2(20),
    CreditHours NUMBER(4), Status CHAR(1)
);
CREATE TABLE section (
    SectionID NUMBER(10) CONSTRAINT section_pk PRIMARY KEY,
    CourseID NUMBER(10),
    SectionNumber VARCHAR2(10), Days VARCHAR2(10),
    StartTime DATE, EndTime DATE,
    LocationID NUMBER(10), SeatsAvailable NUMBER(3),
    Status CHAR(1)
);
CREATE TABLE location (
    LocationID NUMBER(10) CONSTRAINT location_pk PRIMARY KEY,
    Building VARCHAR2(20),
    Room VARCHAR2(5), Capacity NUMBER(5),
    Status CHAR(1)
);
/* insert values into student table */
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Booky', 'Phillips', 'L',
    'PO BOX 339', 'Pickerington', 'OH', '43147-9998',
    '6142812811', '6142541254', 'bphillips@email.com',
    '12-JAN-1963', '15246', 'F'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Denise', 'Miller', 'S',
    '172 E Main St', 'Columbus', 'OH', '43215-9997',
    '6145412544', '6142541254', 'dsmith@email.com',
    '01-FEB-1964', '45246', 'S'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Rocky', 'Smith', 'R',
    '45 Broad St', 'Westerville', 'OH', '43081-8888',
    '6145542211', '6142541254', 'rsmith@email.com',
    '02-APR-1950', '99999', 'J'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Tammy', 'Stone', 'B',
    '88 E Broad St', 'Columbus', 'OH', '43215-7777',
    '6142812811', '6142541254', 'Tstone@email.com',
    '04-MAR-1958', '88855', 'R'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Anne', 'Thomas', 'P',
    '172 E State St', 'Columbus','OH', '43215-7777',
    '6144667245', '6142541254', 'athomas@email.com',
    '05-MAY-1971', '99911', 'F'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Paula', 'Miller', 'R',
    '250 Civic Center Dr', 'Columbus', 'OH', '43215-8888',
    '6142812811', '6142541254', 'Pthomas@email.com',
    '06-JuN-1972', '44555', 'R'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Melissa', 'Harrison', 'G',
    'PO BOX 154', 'Obetz', 'OH', '43147-4444',
    '6142812811', '6142541254', 'mHarrison@email.com',
    '07-JUL-1974', '77898', 'J'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Ellen', 'Andrews', 'M',
    '17 E State St', 'Columbus', 'OH', '43215-5555',
    '6145415411', '6142541254', 'EAndrews@email.com',
    '08-AUG-1964', '11512', 'F'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Mary', 'Green', 'S',
    '10 Broad Meadows Ct', 'Columbus', 'OH', '43214-6666',
    '6142812811', '6142541254', 'mGreen@email.com',
    '09-SEP-1963', '04455', 'S'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Michael', 'Jones', 'W',
    '23 E Main St', 'Circleville', 'OH', '43113-4444',
    '6145415455', '6142541254', 'mjones@email.com',
    '10-OCT-1973', '55246', 'J'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Timothy', 'Johnson', 'T',
    '45 S Scioto', 'Circleville', 'OH', '43113-3333',
    '4281281122', '6142541254', 'tjohnson@email.com',
    '11-NOV-1975', '95246', 'F'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Ryan', 'Moore', 'E',
    '90 N Court St', 'Pickerington', 'OH', '43147-6666',
    '6145454455', '6142541254', 'Rmoore@email.com',
    '12-DEC-1978', '65246', 'R'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Theresa', 'Anderson', 'C',
    '8 W High St', 'Columbus', 'OH', '43207-7777',
    '6145414455', '6142541254', 'tanderson@email.com',
    '03-APR-1973', '5746', 'S'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Cathy', 'Ream', 'A',
    '123 Weber Rd', 'Worthington', 'OH', '43085-6666',
    '6148845544', '6142541254', 'Cream@email.com',
    '01-AUG-1968', '28246', 'R'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Toni', 'Baloney', 'R',
    '2210 Trent Rd', 'Columbus', 'OH', '43229-8888',
    '6142812811', '6142541254', 'Tbaloney@email.com',
    '07-OCT-1969', '09090', 'J'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Daphne', 'Miller', 'R',
    '10 Main St', 'Obetz', 'OH', '43101-4444',
    '6145415477', '6142541254', 'dmiller@email.com',
    '02-MAR-1971', '34343', 'F'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Keith', 'Palmer', 'W',
    '205 Court St', 'Circleville', 'OH', '43113-9909',
    '7402812811', '6142541254', 'kpalmer@email.com',
    '22-JAN-1974', '84575', 'F'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Renee', 'Pierson', 'S',
    '4578 Heatherton Dr', 'Columbus', 'OH', '43229-1234',
    '6148461415', '6142541254', 'rpierson@email.com',
    '04-JAN-1978', '98789', 'J'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Maria', 'Gordon', 'P',
    '5515 Briarcliff', 'Reynoldsburg', 'OH', '43068-5644',
    '6142812811', '6142541254', 'mgordons@email.com',
    '12-Feb-1975', '43422', 'R'
);
INSERT INTO STUDENT (
    StudentID,
    FirstName, LastName, MI,
    Address, City, State, Zip,
    HomePhone, WorkPhone, Email,
    DOB, PIN, Status
)
VALUES (
    s_StudentID.nextval,
    'Randy', 'Thompson', ' ',
    '1459 Northtown Blvd', 'Columbus', 'OH', '43229-4551',
    '6148891544', '6142541254', 'rthompson@email.com',
    '12-JAN-1963', '65454', 'S'
);
/* insert values into faculty table */
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'sam', 'cook', 'p',
    '6142812811', '6142541254',
    'newbie', '5 YEARS', 'A'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'mike', 'jones', 'l',
    '6142812811', '6142541254',
    'historian', '3 YEARS', 'T'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'denise', 'smith', 'h',
    '6142812811', '6142541254',
    'professor', '25 YEARS', 'A'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'tim', 'miller', 'o',
    '6142812811', '6142541254',
    'Adjunct', '5 YEARS', 'L'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'ann', 'meek', 'p',
    '6142812811', '6142541254',
    'Professor', '35 YEARS', 'R'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'betty', 'lane', 'w',
    '6142812811', '6142541254',
    'associate', '5 YEARS', 'A'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'greg', 'morris', 's',
    '6142812811', '6142541254',
    'Professor', '5 YEARS', 'L'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'wayne', 'grill', 'a',
    '6142812811', '6142541254',
    'associate', '15 YEARS', 'R'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'mika', 'wiley', 'q',
    '6142812811', '6142541254',
    'associaTe', '10 YEARS', 'A'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'debbie', 'wine', 'y',
    '6142812811', '6142541254',
    'Adjunct', '5 YEARS', 'L'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'sonya', 'fellows', 'z',
    '6142812811', '6142541254',
    'associate', '5 YEARS', 'A'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'leslie', 'merritt', 'p',
    '6142812811', '6142541254',
    'professor', '35 YEARS', 'R'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'thomas', 'prist', 'l',
    '6142812811', '6142541254',
    'associate', '5 YEARS', 'A'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'rodney', 'reynolds', 'm',
    '6142812811', '6142541254',
    'TA', '2 YEARS', 'A'
);
INSERT INTO FACULTY (
    FacultyID,
    FirstName, LastName, MI,
    WorkPhone, CellPhone,
    Rank, Experience, Status
)
VALUES (
    s_FacultyID.nextval,
    'cathy', 'frazier', 'n',
    '6142812811', '6142541254',
    'associate', '5 YEARS', 'A'
);
/* insert values into course table */
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'ACT-1211', 'Financial Accounting',
    'Financial Accounting', '3', 'E'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'CSCI-2370', 'Database Systems',
    'Database Systems', '3', 'I'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'CSCI-2489', 'Mobile Development',
    'Mobile Development', '4', 'D'
);

INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'CSCI-2412', 'Web Database',
    'Web Database', '3', 'A'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'GIS-2100', 'Intro to GIS Data',
    'Intro to GIS Data', '3', 'E'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'GIS-1102', 'GIS in Industry',
    'GIS in Industry', '4', 'I'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'GIS-1101', 'Acquire GIS Data',
    'Acquire GIS Data', '4', 'E'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'HOSP-1153', 'Nutrition',
    'Nutrition', '3', 'D'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'HOSP-1109', 'Food Principles',
    'Food Principles', '3', 'S'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'IMM-2601', 'Game Development',
    'Game Development', '4', 'R'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'IMM-1530', 'Screenwriting',
    'Screenwriting', '4', 'Z'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'MKTG-1110', 'Marketing Principles',
    'Marketing Principles', '3', 'U'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'SES-1006', 'Intro to Golf',
    'Intro to Golf', '3', 'Y'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'SES-2216', 'Basics of Golf',
    'Basics of Golf', '4', 'B'
);
INSERT INTO COURSE (
    CourseID,
    CourseNumber, CourseName,
    Description, CreditHours, Status
)
VALUES (
    s_CourseID.nextval,
    'CSCI-2447', 'Intro to Javascript',
    'Intro to Javascript', '4', 'C'
);
/* insert values into section table */
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    99, 'B1-H',
    'Tue', '22-MAY-13', '3-AUG-13',
    29999, 23, 'A'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    999, 'C1-H',
    'Wed', '22-MAY-13', '3-AUG-13',
    39999, 23, 'C'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    999, 'D1-W',
    'Thur', '22-MAY-13', '3-AUG-13',
    49999, 23, 'F'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    99999, 'E1-2',
    'Fri', '22-MAY-13', '3-AUG-13',
    59999, 23, 'D'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    999, 'F1-B',
    'Sat', '22-MAY-13', '3-AUG-13',
    69999, 23, 'E'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    99999, 'G1-B',
    'Mon', '22-MAY-13', '3-AUG-13',
    79999, 23, 'E'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    9999, 'H1-HWB',
    'Tue', '22-MAY-13', '3-AUG-13',
    89999, 23, 'R'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    999, 'I1-HWB',
    'Wed', '22-MAY-13', '3-AUG-13',
    99999, 23, 'T'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    9999, 'J1-HWB',
    'Thur', '22-MAY-13', '3-AUG-13',
    9999, 23, 'U'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    99999, 'K1-HWB',
    'Fri', '22-MAY-13', '3-AUG-13',
    229999, 23, 'A'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    9999, 'L1-HWB',
    'Sat', '22-MAY-13', '3-AUG-13',
    2439870000, 23, 'G'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    999, 'M1-W',
    'Tue', '22-MAY-13', '3-AUG-13',
    2249870000, 23, 'A'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    9999, 'N1-W',
    'Thur', '22-MAY-13', '3-AUG-13',
    2259870000, 23, 'Y'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    999, 'O1-W',
    'Mon', '22-MAY-13', '3-AUG-13',
    2269870000, 23, 'A'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    99999, 'P1-H',
    'Fri', '22-MAY-13', '3-AUG-13',
    2279870000, 23, 'R'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    99999, 'Q1-H',
    'Sat', '22-MAY-13', '3-AUG-13',
    2289870000, 23, 'E'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    9999, 'R1-H',
    'Tue', '22-MAY-13', '3-AUG-13',
    2299870000, 23, 'W'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    9999, 'S1-WE',
    'Tue', '22-MAY-13', '3-AUG-13',
    2309870000, 23, 'I'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    999, 'T1-WE',
    'Tue', '22-MAY-13', '3-AUG-13',
    2319870000, 23, 'W'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    99999, 'U1-LE',
    'Tue', '22-MAY-13', '3-AUG-13',
    229999, 23, 'N'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    9999, 'V1-LE',
    'Tue', '22-MAY-13', '3-AUG-13',
    2439870000, 23, 'W'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    999, 'W1-LE',
    'Tue', '22-MAY-13', '3-AUG-13',
    2249870000, 23, 'A'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    99999, 'X1-BTW',
    'Tue', '22-MAY-13', '3-AUG-13',
    2259870000, 23, 'A'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    9999, 'Y1-BTW',
    'Tue', '22-MAY-13', '3-AUG-13',
    2269870000, 23, 'I'
);
INSERT INTO SECTION (
    SectionID,
    CourseID, SectionNumber,
    Days, StartTime, EndTime,
    LocationID, SeatsAvailable, Status
)
VALUES (
    s_SectionID.nextval,
    999, 'A1-BTW',
    'Mon', '22-MAY-13', '3-AUG-13',
    19999, 23, 'O'
);
/* insert values into location table */
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  209',
    00030, 'A'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Delaware Hall', '  210',
    00030, 'B'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Nestor Hall', '  211',
    00030, 'C'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Delaware', '  212',
    00030, 'D'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  213',
    00030, 'E'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Acquinas Hall', '  214',
    00030, 'F'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Nestor Hall', '  215',
    00030, 'G'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  216',
    00030, 'H'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Nestor Hall', '  217',
    00030, 'I'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  218',
    00030, 'J'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Delaware Hall', '  220',
    00030, 'K'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  221',
    00030, 'L'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  222',
    00030, 'M'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  223',
    00030, 'N'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  224',
    00030, 'O'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Delaware Hall', '  220',
    00030, 'P'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  221',
    00030, 'Q'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Delaware Hall', '  222',
    00030, 'R'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Acquinas Hall', '  223',
    00030, 'S'
);
INSERT INTO LOCATION (
    LocationID,
    Building, Room,
    Capacity, Status
)
VALUES (
    s_LocationID.nextval,
    'Eibling Hall', '  224',
    00030, 'T'
);
/* create indexes */
CREATE INDEX i_student ON
student(LastName, FirstName, StudentID);
CREATE INDEX i_faculty ON
faculty(LastName, FirstName, FacultyID);
/* create and output reports */

/* format column headings */
COLUMN StudentID		HEADING 'Student ID'
COLUMN FirstName		HEADING 'First Name'
COLUMN LastName			HEADING 'Last Name'
COLUMN WorkPhone		HEADING 'Work Phone'
COLUMN HomePhone		HEADING 'Home Phone'
COLUMN FacultyID		HEADING 'Faculty ID'
COLUMN CellPhone		HEADING 'Cellphone'
COLUMN CourseID			HEADING 'Course ID'
COLUMN CourseNumber		HEADING 'Course #'
COLUMN CourseName		HEADING 'Course Name'
COLUMN CreditHours		HEADING 'Credit Hours'
COLUMN SectionID		HEADING 'Section ID'
COLUMN SectionNumber	HEADING 'Section Number'
COLUMN StartTime		HEADING 'Starts'
COLUMN EndTime			HEADING 'Ends'
COLUMN LocationID		HEADING 'Location ID'
COLUMN SeatsAvailable	HEADING 'Seats Available'
/* output reports */
CLEAR SCREEN;
SELECT * FROM student;
SELECT * FROM faculty;
SELECT * FROM course;
SELECT * FROM section;
SELECT * FROM location;

/* LAB 2 STARTS HERE */
/* Primary keys assigned in Lab 1 code above */

/* update data for foreign keys */

UPDATE section
SET CourseID='2' WHERE CourseID='99';
UPDATE section
SET CourseID='3' WHERE CourseID='999';
UPDATE section
SET CourseID='4' WHERE CourseID='9999';
UPDATE section
SET CourseID='5' WHERE CourseID='99999';

UPDATE section
SET LocationID='6' WHERE CourseID='2';
UPDATE section
SET LocationID='8' WHERE CourseID='3';
UPDATE section
SET LocationID='10' WHERE CourseID='4';
UPDATE section
SET LocationID='12' WHERE CourseID='5';

/* foreign keys */
ALTER TABLE section
add CONSTRAINT section_CourseID_fk FOREIGN KEY (CourseID) REFERENCES course (CourseID);
ALTER TABLE section
add CONSTRAINT section_LocationID_fk FOREIGN KEY (LocationID) REFERENCES location (LocationID);

/* update data for check constraints */
-- no variety here for now, will revise in future labs as needed

UPDATE faculty
SET Status='A';
UPDATE course
SET Status='A';
UPDATE section
SET Status='A';
UPDATE location
SET Status='A';
UPDATE student
SET Status='C';

UPDATE student
SET Zip='01234-5678';
UPDATE section
SET Days='MTWRFSU';

UPDATE location
SET Building='CINCY HALL';
UPDATE faculty
SET Rank='PROFESSOR';

-- update times/dates for formatting

UPDATE section
SET StartTime=to_date('04/14/1987 04:30 PM', 'mm/dd/yyyy HH:MI PM');
UPDATE section
SET EndTime=to_date('09/14/1987 04:30 PM', 'mm/dd/yyyy HH:MI PM');


/* check constraints */
ALTER TABLE student
add CONSTRAINT student_Zip_ck CHECK (RTRIM(Zip, '01234567890-') is NULL);

ALTER TABLE section
add CONSTRAINT section_Days_ck CHECK (RTRIM(Days, 'MTWRFSU') IS NULL);

ALTER TABLE section
add CONSTRAINT section_SeatsAvailable_ck CHECK (SeatsAvailable < 100);

ALTER TABLE faculty
add CONSTRAINT faculty_Status_ck CHECK (Status IN('F','A'));

ALTER TABLE course
add CONSTRAINT course_Status_ck CHECK (Status IN('A','I'));

ALTER TABLE section
add CONSTRAINT section_Status_ck CHECK (Status IN('A','I'));

ALTER TABLE location
add CONSTRAINT location_Status_ck CHECK (Status IN('A','I'));

ALTER TABLE student
add CONSTRAINT student_Status_ck CHECK (Status IN('C','T'));

ALTER TABLE location
add CONSTRAINT location_Building_ck CHECK (Building IN('CLEVELAND HALL','TOLEDO CIRCLE','AKRON SQ','CINCY HALL','SPRINGFIELD DOME','DAYTON DORM','COLUMBUS HALL'));

ALTER TABLE location
add CONSTRAINT location_Capacity_ck CHECK (Capacity < 100);

ALTER TABLE course
add CONSTRAINT course_CreditHours_ck CHECK (CreditHours <= 6.0);

ALTER TABLE faculty
add CONSTRAINT faculty_Rank_ck CHECK (Rank IN('PROFESSOR','DOCTOR','INSTRUCTOR','ASSISTANT','TENURE'));

ALTER TABLE faculty
add CONSTRAINT faculty_MI_ck CHECK (MI NOT LIKE '%[^A-Z]%' OR MI IS NULL);

ALTER TABLE student
add CONSTRAINT student_MI_ck CHECK (MI IS NULL OR MI NOT LIKE '%[^A-Z]%');

ALTER TABLE section
add CONSTRAINT section_StartTime_ck CHECK (StartTime < EndTime);

ALTER TABLE student
add CONSTRAINT student_PIN_ck CHECK (PIN IS NOT NULL OR PIN NOT LIKE '%[^*]%');

CLEAR SCREEN;

-- report

SELECT * FROM student;
SELECT * FROM faculty;
SELECT * FROM course;
SELECT SectionID, CourseID, SectionNumber,
Days, LocationID, SeatsAvailable, Status,
to_char(StartTime, 'mm/dd/yyyy') as startDateOnly, to_char(StartTime, 'hh:mi PM') startTimeOnly,
to_char(EndTime, 'mm/dd/yyyy') as endDateOnly, to_char(EndTime, 'hh:mi PM') endTimeOnly
FROM section;
SELECT * FROM location;

-- LAB 3 STARTS HERE

-- drop statements
DROP TABLE registration cascade constraints;
DROP TABLE grade cascade constraints;
DROP TABLE courseInstructor cascade constraints;

-- create new (junction) tables
CREATE TABLE registration (
    StudentID NUMBER(10) NOT NULL,
	SectionID NUMBER(10) NOT NULL,
	CONSTRAINT registration_pk PRIMARY KEY (
		StudentID,
		SectionID		
	),
	CONSTRAINT registration_stu_fk FOREIGN KEY (StudentID) REFERENCES student (StudentID),
	CONSTRAINT registration_sec_fk FOREIGN KEY (SectionID) REFERENCES section (SectionID)
);
CREATE TABLE grade (
	gradeNum CHAR NULL,
    StudentID NUMBER(10) NOT NULL,
	SectionID NUMBER(10) NOT NULL,
	CONSTRAINT grade_pk PRIMARY KEY (
		StudentID,
		SectionID		
	),
	CONSTRAINT grade_stu_fk FOREIGN KEY (StudentID) REFERENCES student (StudentID),
	CONSTRAINT grade_sec_fk FOREIGN KEY (SectionID) REFERENCES section (SectionID)
);
CREATE TABLE courseInstructor (
    InstructorID NUMBER(10) NOT NULL,
	SectionID NUMBER(10) NOT NULL,
	CONSTRAINT courseInstructor_pk PRIMARY KEY (
		InstructorID,
		SectionID		
	),
	CONSTRAINT instructor_fac_fk FOREIGN KEY (InstructorID) REFERENCES faculty (FacultyID),
	CONSTRAINT instructor_sec_fk FOREIGN KEY (SectionID) REFERENCES section (SectionID)
);
-- create trigger for grades
CREATE TRIGGER make_grade
AFTER INSERT ON registration
FOR EACH ROW
BEGIN
INSERT INTO grade (StudentID, SectionID) VALUES (:new.StudentID, :new.SectionID);
END;
/
-- insert statements
-- 30 for registration table
INSERT INTO registration (StudentID, SectionID) VALUES(1,1);
INSERT INTO registration (StudentID, SectionID) VALUES(1,2);
INSERT INTO registration (StudentID, SectionID) VALUES(1,3);
INSERT INTO registration (StudentID, SectionID) VALUES(2,4);
INSERT INTO registration (StudentID, SectionID) VALUES(2,5);
INSERT INTO registration (StudentID, SectionID) VALUES(2,6);
INSERT INTO registration (StudentID, SectionID) VALUES(3,7);
INSERT INTO registration (StudentID, SectionID) VALUES(3,8);
INSERT INTO registration (StudentID, SectionID) VALUES(3,9);
INSERT INTO registration (StudentID, SectionID) VALUES(4,10);
INSERT INTO registration (StudentID, SectionID) VALUES(4,11);
INSERT INTO registration (StudentID, SectionID) VALUES(4,12);
INSERT INTO registration (StudentID, SectionID) VALUES(5,13);
INSERT INTO registration (StudentID, SectionID) VALUES(5,14);
INSERT INTO registration (StudentID, SectionID) VALUES(5,15);
INSERT INTO registration (StudentID, SectionID) VALUES(6,16);
INSERT INTO registration (StudentID, SectionID) VALUES(6,17);
INSERT INTO registration (StudentID, SectionID) VALUES(6,18);
INSERT INTO registration (StudentID, SectionID) VALUES(7,19);
INSERT INTO registration (StudentID, SectionID) VALUES(7,20);
INSERT INTO registration (StudentID, SectionID) VALUES(7,21);
INSERT INTO registration (StudentID, SectionID) VALUES(8,22);
INSERT INTO registration (StudentID, SectionID) VALUES(8,23);
INSERT INTO registration (StudentID, SectionID) VALUES(8,24);
INSERT INTO registration (StudentID, SectionID) VALUES(9,25);
INSERT INTO registration (StudentID, SectionID) VALUES(9,1);
INSERT INTO registration (StudentID, SectionID) VALUES(9,2);
INSERT INTO registration (StudentID, SectionID) VALUES(10,3);
INSERT INTO registration (StudentID, SectionID) VALUES(10,4);
INSERT INTO registration (StudentID, SectionID) VALUES(10,5);
-- 10 for courseInstructor table
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(1,1);
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(2,2);
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(3,3);
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(4,4);
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(5,5);
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(6,1);
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(7,2);
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(8,3);
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(9,4);
INSERT INTO courseInstructor (InstructorID, SectionID) VALUES(10,5);
-- views

-- views UNSUCCESSFUL, MODIFIED
-- FIXED 12-09-15 using SELECT and JOIN statements

SET PAGESIZE 40;

-- student

SELECT
student.StudentID,
student.LastName,
student.FirstName,
course.CourseName,
course.CreditHours,
section.SectionID,
section.days,
location.building,
location.room,
section.StartTime,
section.EndTime
FROM student 
JOIN registration ON (student.studentID = REGISTRATION.studentID)
JOIN section ON (registration.sectionID = section.sectionID)
JOIN course ON (section.courseID = course.courseID)
JOIN location ON (section.locationID = location.locationID)
ORDER BY student.LastName
;

-- instructor

SELECT
faculty.facultyID,
faculty.lastName,
faculty.firstName,
course.CourseName,
section.SectionID,
section.days,
location.building,
location.room,
section.StartTime,
section.EndTime
FROM faculty
JOIN courseInstructor ON (faculty.facultyID = courseInstructor.InstructorID)
JOIN section ON (courseInstructor.SectionID = section.sectionID)
JOIN course ON (section.courseID = course.courseID)
JOIN location ON (section.locationID = location.locationID)
ORDER BY faculty.lastName
;

-- LAB 4 STARTS HERE

set serveroutput on
DECLARE
	CURSOR cursor_grade is
		SELECT grade.StudentID, grade.sectionID, substr(course.courseName, Length(course.courseName),1) 
		FROM grade, course, section  WHERE section.sectionID = grade.sectionID AND section.courseID = course.courseID;
	grade_studentID grade.StudentID%type;
	sec_id grade.sectionID%type;
	LastChar CHAR;
	
BEGIN
	OPEN cursor_grade;
  
	LOOP
	
		FETCH cursor_grade INTO grade_studentID, sec_id, LastChar;
		EXIT WHEN cursor_grade%NOTFOUND;
		
		IF lastChar BETWEEN 'a' AND 'f' THEN
			UPDATE grade SET grade.gradeNum = 'A'
			WHERE SectionID = sec_id AND StudentID = grade_studentID;
		ELSIF lastChar BETWEEN 'g' AND 'k' THEN
			UPDATE grade SET grade.gradeNum = 'B'
			WHERE SectionID = sec_id AND StudentID = grade_studentID;
		ELSIF lastChar BETWEEN 'l' AND 'p' THEN
			UPDATE grade SET grade.gradeNum = 'C'
			WHERE SectionID = sec_id AND StudentID = grade_studentID;
		ELSIF lastChar BETWEEN 'q' AND 't' THEN
			UPDATE grade SET grade.gradeNum = 'D'
			WHERE SectionID = sec_id AND StudentID = grade_studentID;
		ELSIF lastChar BETWEEN 'u' AND 'z' THEN
			UPDATE grade SET grade.gradeNum = 'E'
			WHERE SectionID = sec_id AND StudentID = grade_studentID;
		ELSE
			UPDATE grade SET grade.gradeNum = 'X'
			WHERE SectionID = sec_id AND StudentID = grade_studentID;
		END IF;

	END LOOP;
	CLOSE cursor_grade;
END;
/

-- report

SET PAGESIZE 40;
SET LINESIZE 400;

SELECT
student.StudentID,
student.lastName,
student.firstName,
course.CourseName,
section.SectionID,
course.CreditHours,
section.days,
section.StartTime,
section.EndTime,
location.building,
location.room,
faculty.lastName,
faculty.firstName,
grade.gradeNum
FROM student
JOIN grade ON (student.studentID = grade.studentID)
JOIN section ON (grade.sectionID = section.sectionID)
JOIN location ON (section.locationID = location.locationID)
JOIN course ON (section.courseID = course.courseID)
JOIN courseInstructor ON (grade.sectionID = courseInstructor.sectionID)
JOIN faculty ON (courseInstructor.instructorID = faculty.facultyID)
ORDER BY student.lastName
;

-- LAB 5 STARTS HERE

CLEAR SCREEN;

set serveroutput on
DECLARE
	CURSOR address_label IS
		SELECT DISTINCT 
		student.lastName,
		student.firstName,
		student.Address,
		student.city,
		student.state,
		student.zip
		FROM student, grade, registration
		WHERE student.studentID = registration.studentID
		AND registration.sectionID = grade.sectionID
		AND grade.gradeNum = 'A'
		ORDER BY student.zip, student.lastName;
	student_lastName student.lastName%type;
	student_firstName student.firstName%type;
	student_address student.Address%type;
	student_city student.city%type;
	student_state student.state%type;
	student_zip student.zip%type;
	gap VARCHAR2(30) := '------------------------------';
	
BEGIN
	OPEN address_label;
  
	LOOP
		
		FETCH address_label INTO 
		student_lastName,
		student_firstName,
		student_address,
		student_city,
		student_state,
		student_zip;
		
		EXIT WHEN address_label%NOTFOUND;
		
		DBMS_OUTPUT.PUT_LINE(gap);
		DBMS_OUTPUT.PUT_LINE(student_firstName || ' ' || student_lastName);
		DBMS_OUTPUT.PUT_LINE(student_address);
		DBMS_OUTPUT.PUT_LINE(student_city || ', ' || student_state || '  ' || student_zip);
		DBMS_OUTPUT.PUT_LINE(gap);
		
	END LOOP;
	
	CLOSE address_label;
END;
/
