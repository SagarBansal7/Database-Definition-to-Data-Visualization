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
 
CREATE VIEW ENROLLMENTPATTERN AS
SELECT 
client_number, request_date_time, status
FROM enrollment_request;
 

CREATE VIEW QUES4_ENROLL_WAITLST AS
select course.unique_code, 
       course.course_level, 
       enrollment_request.request_date_time,
       enrollment_request.status, 
       enrollment_request.payment,
       count(enrollment_request.client_number) client_Number
from class 
join course on class.unique_code = course.unique_code
join enrollment_request on class.reference_number = enrollment_request.reference_number
group by course.unique_code, 
        course.course_level,
        enrollment_request.request_date_time,
        enrollment_request.status,
        enrollment_request.payment
order by enrollment_request.status, count(enrollment_request.client_number) DESC;
