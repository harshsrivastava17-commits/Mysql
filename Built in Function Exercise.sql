DROP DATABASE IF EXISTS training_functions;
CREATE DATABASE training_functions;
USE training_functions;
CREATE TABLE CourseEnrollments (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(40),
    LastName VARCHAR(40),
    CourseName VARCHAR(40),
    Fee DECIMAL(10,2),
    EnrollmentDate DATE,
    CompletionDate DATE
);

INSERT INTO CourseEnrollments
(StudentID, FirstName, LastName, CourseName, Fee, EnrollmentDate, CompletionDate)
VALUES
(101, 'aman', 'Sharma', 'Python', 12500.75, '2026-01-05', '2026-03-20'),
(102, 'priya', 'Verma', 'MySQL', 9800.40, '2026-01-12', '2026-02-28'),
(103, 'rahul', 'Singh', 'Python', 15750.90, '2026-02-01', '2026-04-15'),
(104, 'neha', 'Gupta', 'Power BI', 11200.25, '2026-02-10', '2026-05-05'),
(105, 'ishita', 'Kapoor', 'MySQL', 8900.60, '2026-03-03', '2026-04-22'),
(106, 'arjun', 'Mehta', 'Python', 13650.15, '2026-03-15', '2026-06-10'),
(107, 'simran', 'Joshi', 'Power BI', 10400.95, '2026-04-01', '2026-06-30'),
(108, 'vikas', 'Rao', 'MySQL', 7600.50, '2026-04-18', '2026-05-29'),
(109, 'kiran', 'Malik', 'Python', 14999.99, '2026-05-02', '2026-07-25'),
(110, 'rohan', 'Sethi', 'Power BI', 11950.35, '2026-05-20', '2026-08-14');

SELECT * FROM CourseEnrollments;

Select *,
upper(concat(Firstname, ' ', Lastname)) as fullname
from courseenrollments;

Select *,
concat(upper(substring(firstname,1,1)), substring(firstname,2), ' ', lastname) as fullname 
from CourseEnrollments;
 
 select database();
 show tables;
 
 
select
concat(upper(Left(coursename,3)), '-', studentid) as studentcode
from courseenrollments;

SELECT 
    REVERSE(FirstName) AS ReversedFirstName, 
    CHAR_LENGTH(FirstName) AS CharacterCount 
FROM courseenrollments;

select firstname,
locate('a', firstname) as locationofa
from courseenrollments;

select firstname,
upper(Replace(firstname, 'a', 'o')) as firstnameplaced
from courseenrollments;

select firstname,
LPAD(Firstname,'12','0') as paddedname
from courseenrollments;

select
concat(Right(Firstname, '2')), '-', (Left(Firstname, '2')) as courselabel
from courseenrollments;

select fee,
Round( Fee, '1') as fee_one_decimal, Round( Fee, '0') as fee_whole_number
from courseenrollments;

select fee,
ceil(fee) as feeceiling,
floor(fee) as feefloor
from courseenrollments;

select
mod(fee, '500') as feemodule, fee as original_fee
from courseenrollments;

select fee,
Abs(Fee - 1000) as fee_difference
from courseenrollments;

select fee,
round(fee * 1.18,2) as updated_fees
from courseenrollments;



SELECT
    Fee,
    ABS(Fee - 10000) AS Absolute_Difference
FROM CourseEnrollments;

SELECT Fee,
FORMAT(Fee, 2) AS Formatted_Fee
FROM CourseEnrollments;

SELECT
    Fee,
    ROUND(Fee * 1.18, 2) AS Updated_Fee
FROM CourseEnrollments;

SELECT
    FORMAT(ROUND(Fee * 1.18, 2), 2) AS Final_Fee
FROM CourseEnrollments;

SELECT
    FORMAT(Fee * 1.18, 2) AS Updated_Formatted_Fee
FROM CourseEnrollments;

SELECT
    EnrollmentDate,
    YEAR(EnrollmentDate) AS Enrollment_Year,
    MONTHNAME(EnrollmentDate) AS Enrollment_Month,
    DAYNAME(EnrollmentDate) AS Enrollment_Day
FROM CourseEnrollments;

SELECT
    DATE_FORMAT(EnrollmentDate, '%d/%m/%Y') AS Formatted_EnrollmentDate,
    DATE_FORMAT(CompletionDate, '%M %d, %Y') AS Formatted_CompletionDate
FROM CourseEnrollments;

SELECT
    EnrollmentDate,
    CompletionDate,
    TIMESTAMPDIFF(DAY, EnrollmentDate, CompletionDate) AS Total_Days
FROM CourseEnrollments;

SELECT
    EnrollmentDate,
    DATE_ADD(DATE_ADD(EnrollmentDate, INTERVAL 1 MONTH),INTERVAL 10 DAY) AS New_EnrollmentDate
FROM CourseEnrollments;

SELECT
    CompletionDate,
    DATE_ADD(CompletionDate, INTERVAL -7 DAY) AS Previous_Date
FROM CourseEnrollments;

 SELECT
    EnrollmentDate,
    CompletionDate,
    TIMESTAMPDIFF(MONTH, EnrollmentDate, CompletionDate) AS Complete_Months
FROM CourseEnrollments;

SELECT
    EnrollmentDate,
    DATE_ADD(DATE_ADD(DATE_ADD(EnrollmentDate, INTERVAL 1 YEAR),INTERVAL 2 MONTH),INTERVAL 5 DAY
    ) AS Updated_EnrollmentDate
FROM CourseEnrollments;


SELECT
    EnrollmentDate,
    DAYNAME(EnrollmentDate) AS Enrollment_Weekday,
    CompletionDate,
    DAYNAME(CompletionDate) AS Completion_Weekday
FROM CourseEnrollments;

SELECT
    EnrollmentDate,
    CURDATE() AS Current_Date,
    TIMESTAMPDIFF(DAY, EnrollmentDate, CURDATE()) AS Days_Until_Today
FROM CourseEnrollments;

SELECT
    CompletionDate,
    DATE_FORMAT(DATE_ADD(CompletionDate, INTERVAL 15 DAY),'%d/%m/%Y') AS Updated_CompletionDate
FROM CourseEnrollments;