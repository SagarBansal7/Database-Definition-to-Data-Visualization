# Database Definition to Data Visualization #
## Graduate Course: Database Management and SQL for Analytics ##

This was a group project from a course on Database and SQL. Below is the prompt on the client:

> Northern Lights Technical (NLT) School was founded in 1985 in Pittsfield, MA. It was the first computer software training business in the area and was immediately successful. Over the decade since its inception, NLT has grown steadily and is still the market leader in computer training in the Pittsfield area. The growth of the company has caused bookkeeping problems for the company who, up until the present, have kept all their business records in a series of MS Excel spreadsheets. To address the inadequacy of the current system we were asked to prepare a database system for NLT from the ground up.  In addition, we need to answer client's specific questions and make recommendations from our findings.

This project was carried out in three phases. In phase one, we developed an Entity Relationship Diagram, and Logical Database Model based on the client's new requirements ensuring all the logical entities and relationships are captured. In phase two, we cleaned and organized the MS Excel spreadsheets using filters and VLOOKUP features to align with our Logical Data Model. We also wrote SQL scripts to build the database system from the beginning and then populate it with the transformed data. In the final phase, we connected the database with Tableau and explored the client's data in order to answer questions and provide recommendations for improvements. 

In this repository, I have created sub-folders consisting of the final deliverables for each phase. Here's some information about all the files included:

1) <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/tree/master/Phase%201">Phase 1</a>  
    * <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%201/Business%20Requirements%20-%20Data%20Definition%20to%20Visualization.pdf">Business Requirements</a> - All the information that we received from the client. 
    * <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%201/Entity%20Relationship%20Diagram%20-%20Data%20Definition%20to%20Visualization.pdf">Entity Relationship Diagram</a> - Final diagram with all the business entities and relationships between them.

2) <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/tree/master/Phase%202">Phase 2</a>
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/Logical%20Data%20Model%20-%20Data%20Definition%20to%20Visualization.pdf">Logical Data Model</a> - Final model after mapping the ERD entities and relationships in terms of a database system. 
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/Phase%202%20Assumptions%20-%20%20Data%20Definition%20to%20Visualization.pdf">Phase 2 Assumptions</a> - Our assumptions about data while constructing and populating the database.
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/Scrubbed%20Data%20-%20%20Data%20Definition%20to%20Visualization.xlsx">Scrubbed Data</a> - Transformed data that was used to populate the database.
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/SQL%20Scripts%20-%20Data%20Definition%20to%20Visualization.pdf">SQL Scripts</a> - Scripts to build and populate the database.  
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/SQL%20Scripts%20(.sql)%20-%20Data%20Definition%20to%20Visualization.sql">SQL Scripts (.sql)</a> - Scripts in .sql format to build and populate the database.  
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/Populated%20Database%20Tables%20-%20Data%20Definition%20to%20Visualization.pdf">Populated Database Tables</a> - Final Tables after we populated them with the scrubbed data.

3) <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/tree/master/Phase%203">Phase 3</a>
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%203/Data%20Changes%20-%20Data%20Definition%20to%20Visualization.pdf">Data Changes</a> - List of changes made in the data. 
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%203/Phase%203%20SQL%20Scripts%20-%20Data%20Definition%20to%20Visualization.pdf">SQL Scripts</a> - Queries to search and retrieve information from the database. 
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%203/Phase%203%20SQL%20Scripts%20(.sql)%20-%20Data%20Definition%20to%20Visualization.sql">SQL Scripts (.sql)</a> - Queries in .sql format to search and retrieve information from the database. 
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%203/Query%20Results%20-%20Data%20Definition%20to%20Visualization.pdf">Query Results</a> - Results received from the queries. 
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%203/Presentation%20-%20Data%20Definition%20to%20Visualization.pdf">Presentation</a> - Final Presentation.
    *  <a href="https://public.tableau.com/profile/sagar8300#!/vizhome/Phase3-ClientSegment-Team7E_15939006760380/NorthernLightsTechnicalSchoolClientInsights">Please click here for Tableau work!</a> - Results received after exploring the data through Tableau. Check this out!

Following is a glimpse of the SQL script written for this project: 

````sql

-- Create Scripts

create table trainer
(employee_number varchar2(30) not null,
first_name varchar2(10) not null,
middle_name varchar2(15),
last_name varchar2(15),
Street1 varchar2(30),
Street2 varchar2(15),
City varchar2(15),
State varchar2(2),
Zip varchar2(5),
employee_phone_number varchar2(15),
email_address varchar2(15),
employment_start_date Date,
employment_end_date Date,
constraint pk_trainer primary key (employee_number));


create table hardware
(hardware_id varchar2(30) not null,
hardware_name varchar2(30),
hardware_description varchar2(50),
operating_system varchar2(30),
constraint pk_hardware primary key (hardware_id));


create table classroom
(classroom_number varchar2(30) not null,
classroom_capacity number(10,0),
hardware_id varchar2(30) not null,
constraint pk_classroom primary key (classroom_number ),
constraint fk_classroom_hardware foreign key (hardware_id) references hardware (hardware_id));


create table software
(software_id varchar2(30) not null,
software_name varchar2(30),
software_publisher varchar2(30),
number_of_licenses number(10,0),
constraint pk_software primary key (software_id));


create table hardware_software 
(hardware_id varchar2(30) not null,
software_id varchar2(30) not null, 
constraint pk_hardware_software primary key (hardware_id,software_id),
constraint fk_hardware_software1 foreign key (hardware_id) references hardware(hardware_id),
constraint fk_hardware_software2 foreign key (software_id) references software(software_id));

--Insert Data Scripts

INSERT INTO TRAINER VALUES('199111011','Bill','Henry','Williams','1288 Stearns Hill Rd','APT1','Waltham','MA','02451','857-272-7266','BW12@gmail.com','1-OCT-1985','');
INSERT INTO TRAINER VALUES('199712151','Brian','Matthew','Adams','1230 Stearns Hill Rd','APT2','Waltham','MA','02451','857-272-7267','BA12@gmail.com','14-MAR-2014','');
INSERT INTO TRAINER VALUES('199905101','Jack','Scott','Wagner','1422 Stearns Hill Rd','APT3c','Waltham','MA','02451','857-272-7268','JW12@gmail.com','21-APR-2016','');
INSERT INTO TRAINER VALUES('199905102','Jill','Marie','Pensing','1430 Stearns Hill Rd','APT5','Waltham','MA','02451','857-272-7269','JP12@gmail.com','11-NOV-2016','');
INSERT INTO TRAINER VALUES('200001141','Chuck','David','Black','7628 Stearns Hill Rd','APT6','Waltham','MA','02451','857-272-7270','CB12@gmail.com','16-NOV-2016','');
INSERT INTO TRAINER VALUES('200006121','Tim','Jackson','Heberle','4412 Stearns Hill Rd','APT9','Waltham','MA','02451','857-272-7271','TH12@gmail.com','23-FEB-2017','');
INSERT INTO TRAINER VALUES('200009291','Bob','William','Bertig','4413 Stearns Hill Rd','APT1','Waltham','MA','02451','857-272-7272','BB12@gmail.com','26-MAR-2017','04-NOV-2019');
INSERT INTO TRAINER VALUES('200111011','Debbie','Louise','Beverly','1292 Stearns Hill Rd','APT2','Waltham','MA','02451','857-272-7273','DB12@gmail.com','11-MAY-2018','');
INSERT INTO TRAINER VALUES('200111051','Tammy','Megan','Locum','1298 Stearns Hill Rd','APT1c','Waltham','MA','02451','857-272-7274','TL12@gmail.com','12-JUN-2019','');
INSERT INTO TRAINER VALUES('200112041','Joan','Elizabeth','Wendel','1293 Stearns Hill Rd','APT1b','Waltham','MA','02451','857-272-7275','JW12@gmail.com','1-NOV-2019','');
INSERT INTO TRAINER VALUES('200112155','Cleo','Ann','Patra','1210 Stearns Hill Rd','APT5','Waltham','MA','02451','857-272-7276','CP12@gmail.com','05-NOV-2019','');
INSERT INTO HARDWARE VALUES('MAC','Macintosh','Apple Macintosh','macOSX');
INSERT INTO HARDWARE VALUES('PC','IBM','International Business Machines','Linux');


INSERT INTO CLASSROOM VALUES('1a',5,'MAC');
INSERT INTO CLASSROOM VALUES('1b',5,'MAC');
INSERT INTO CLASSROOM VALUES('2a',5,'PC');
INSERT INTO CLASSROOM VALUES('2b',5,'PC');
INSERT INTO CLASSROOM VALUES('3',5,'MAC');
INSERT INTO CLASSROOM VALUES('4',5,'PC');
INSERT INTO CLASSROOM VALUES('5',15,'PC');
INSERT INTO CLASSROOM VALUES('6',15,'PC');
INSERT INTO CLASSROOM VALUES('7',15,'MAC');
INSERT INTO CLASSROOM VALUES('8',10,'PC');



INSERT INTO SOFTWARE VALUES('ADPHOT50','Adobe PhotoShop','Adobe',5);
INSERT INTO SOFTWARE VALUES('APWORD01','Apache Word War','Apache',20);
INSERT INTO SOFTWARE VALUES('MSACCS00','Microsoft Access 07','Microsoft',5);
INSERT INTO SOFTWARE VALUES('MSEXCL00','Microsoft Excel 03','Microsoft',35);
INSERT INTO SOFTWARE VALUES('MSEXPL00','Microsoft Excel 07','Microsoft',5);
INSERT INTO SOFTWARE VALUES('MSPAINT7','Microsoft Paint','Microsoft',15);
INSERT INTO SOFTWARE VALUES('MSPWRP00','Microsoft PowerPOint 07','Microsoft',5);
INSERT INTO SOFTWARE VALUES('MSWIND00','Microsoft Windows','Microsoft',5);
INSERT INTO SOFTWARE VALUES('MSWORD00','Microsoft Word 07','Microsoft',12);
INSERT INTO SOFTWARE VALUES('NVNETW60','Novell Netware 6.0','novell',5);
INSERT INTO SOFTWARE VALUES('SUNJAVA4','Sun Java 5.0','Sun',5);
INSERT INTO SOFTWARE VALUES('SNPFIR03','Snap Fire Photo','Snap Fire',25);
INSERT INTO SOFTWARE VALUES('APMACOS7','Microsoft Access','Microsoft',5);
INSERT INTO SOFTWARE VALUES('CPUNOW50','Adobe InDesign','Adobe',5);


INSERT INTO HARDWARE_SOFTWARE VALUES('MAC','APWORD01');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','MSEXPL00');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','SUNJAVA4');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','MSACCS00');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','MSEXCL00');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','MSPWRP00');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','MSWORD00');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','NVNETW60');
INSERT INTO HARDWARE_SOFTWARE VALUES('MAC','ADPHOT50');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','CPUNOW50');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','MSPAINT7');
INSERT INTO HARDWARE_SOFTWARE VALUES('MAC','APMACOS7');
INSERT INTO HARDWARE_SOFTWARE VALUES('PC','MSWIND00');


--Query Scripts

CREATE VIEW Q1A AS 
select distinct 
membership_purchase.client_number, count(membership_purchase_id) CountMemberships, sum(membership_payment) SumMembershipPmts
from membership_purchase
group by membership_purchase.client_number
order by membership_purchase.client_number;

CREATE VIEW Q1B AS
select distinct 
enrollment_request.client_number, count(reference_number) CoursesEnrolled, sum(payment) CoursePayment
from enrollment_request
where enrollment_request.status = 'e'
group by enrollment_request.client_number
order by enrollment_request.client_number;
 
CREATE VIEW MOST_VALUABLE_CLIENT AS
select distinct 
client.client_number Client Number, client.first_name Client Name, coalesce(q1a.countmemberships, 0) Membership Count, coalesce(q1a.summembershippmts, 0) Total Membership Payments, coalesce(q1b.coursesenrolled, 0) Total Courses Enrolled, coalesce(q1b.coursepayment, 0) Total Enrollment Fees
from client, q1a, q1b
where q1a.client_number (+) = client.client_number
and q1b.client_number (+) = client.client_number
order by client.client_number;

CREATE VIEW MEMBERSHIPSFORTOPCLIENTS AS 
select 
first_name Client Name,
client.client_number Client Number,
membership_code Membership Category,
date_of_assignment as Membership Start Date,
date_of_assignment+365 as Membership End Date
from client, membership_purchase
where client.client_number = membership_purchase.client_number
and client.client_number in 
(select Client Number from MOST_VALUABLE_CLIENT where
Total Enrollment Fees  (select AVG(Total Enrollment Fees) from MOST_VALUABLE_CLIENT))
order by client.client_number;

````
