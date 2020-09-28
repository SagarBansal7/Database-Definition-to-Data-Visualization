# Database Definition to Data Visualization #
## Graduate Course: Database Management and SQL for Analytics ##

This was a group project from a course on Database and SQL. Below is the prompt from the client:

> Northern Lights Technical (NLT) School was founded in 1985 in Pittsfield, MA. It was the first computer software training business in the area and was immediately successful. Over the decade since its inception, NLT has grown steadily and is still the market leader in computer training in the Pittsfield area. The growth of the company has caused bookkeeping problems for the company who, up until the present, have kept all their business records in a series of MS Excel spreadsheets. To address the inadequacy of the current system we were asked to prepare a database system for NLT from the ground up.  In addition, we need to answer client's specific questions and make recommendations from our findings.

<a href="https://public.tableau.com/profile/sagar8300#!/vizhome/Phase3-ClientSegment-Team7E_15939006760380/NorthernLightsTechnicalSchoolClientInsights">Please click here for Tableau work!</a>


````sql
CREATE TABLE TRAINER
(EMPLOYEE_NUMBER VARCHAR2(9) NOT NULL,
FIRST_NAME VARCHAR2(25), 
MIDDLE_NAME VARCHAR2(25),
LAST_NAME VARCHAR2(25),
STREET1 VARCHAR2(30),
STREET2 VARCHAR2(30),
CITY VARCHAR2(20),
STATE VARCHAR2(2),
ZIP VARCHAR2(9),
EMPLOYEE_PHONE_NUMBER VARCHAR2(12),
EMAIL_ADDRESS VARCHAR2(50),
EMPLOYMENT_START_DATE DATE,
EMPLOYMENT_END_DATE DATE,
CONSTRAINT TRAINER_PK1 PRIMARY KEY (EMPLOYEE_NUMBER));

````
