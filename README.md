# Database Definition to Data Visualization #
## Graduate Course: Database Management and SQL for Analytics ##

This was a group project from a course on Database and SQL. Below is the prompt on the client:

> Northern Lights Technical (NLT) School was founded in 1985 in Pittsfield, MA. It was the first computer software training business in the area and was immediately successful. Over the decade since its inception, NLT has grown steadily and is still the market leader in computer training in the Pittsfield area. The growth of the company has caused bookkeeping problems for the company who, up until the present, have kept all their business records in a series of MS Excel spreadsheets. To address the inadequacy of the current system we were asked to prepare a database system for NLT from the ground up.  In addition, we need to answer client's specific questions and make recommendations from our findings.

This project was carried out in three phases. In phase one, we developed an Entity Relationship Diagram, and Logical Database Model based on the client's new requirements ensuring all the logical entities and relationships are captured. In phase two, we cleaned and organized the MS Excel spreadsheets using filters and VLOOKUP features to align with our Logical Data Model. We also wrote SQL scripts to build the database system from the beginning and then populate it with the transformed data. In the final phase, we connected the database with Tableau and explored the client's data in order to answer questions and provide recommendations for improvements. 

In this repository, I have created sub-folders consisting of the final deliverables for each phase. Here's some information about all the files included:

1) <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/tree/master/Phase%201">Phase 1</a>  
    * <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%201/Business%20Requirements%20-%20Data%20Definition%20to%20Visualization.pdf">Business Requirements</a> - All the information that we recieved from the client. 
    * <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%201/Entity%20Relationship%20Diagram%20-%20Data%20Definition%20to%20Visualization.pdf">Entity Relationship Diagram</a> - Final diagram with all the business entities and relationships between them.

2) <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/tree/master/Phase%202">Phase 2</a>
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/Logical%20Data%20Model%20-%20Data%20Definition%20to%20Visualization.pdf">Logical Data Model</a> - Final model after mapping the ERD entities and relationships in terms of a database system. 
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/Phase%202%20Assumptions%20-%20%20Data%20Definition%20to%20Visualization.pdf">Phase 2 Assumptions</a> - Our assumptions about data while constructing and populating the database.
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/Scrubbed%20Data%20-%20%20Data%20Definition%20to%20Visualization.xlsx">Scrubbed Data</a> - Transformed data that was used to populate the database.
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/SQL%20Scripts%20-%20Data%20Definition%20to%20Visualization.pdf">SQL Scripts</a> - Scripts to build and populate the database.  
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%202/Populated%20Database%20Tables%20-%20Data%20Definition%20to%20Visualization.pdf">Populated Database Tables</a> - Final Tables after we populated them with the scrubbed data.

3) <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/tree/master/Phase%203">Phase 3</a>
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%203/Data%20Changes%20-%20Data%20Definition%20to%20Visualization.pdf">Data Changes</a> - List of changes made in the data. 
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%203/Phase%203%20SQL%20Scripts%20-%20Data%20Definition%20to%20Visualization.pdf">SQL Scripts</a> - Queries to search and retrieve information from the database. 
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%203/Query%20Results%20-%20Data%20Definition%20to%20Visualization.pdf">Query Results</a> - Results received from the queries. 
    *  <a href="https://github.com/SagarBansal7/Database-Definition-to-Data-Visualization/blob/master/Phase%203/Presentation%20-%20Data%20Definition%20to%20Visualization.pdf">Presentation</a> - Final Presentation.
    *  <a href="https://public.tableau.com/profile/sagar8300#!/vizhome/Phase3-ClientSegment-Team7E_15939006760380/NorthernLightsTechnicalSchoolClientInsights">Please click here for Tableau work!</a> - Results received after exploring the data through Tableau. Check this out!


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
