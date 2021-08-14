# Group Create SQL Views 
## GROUP PROJECT 3
*Eva, Mich, Esteban*

prep
----
- First create a schema `CREATE SCHEMA group_create_SQL_views`

____________________________________________

1.  Student info (quick view of names, email & date joined, address & studentkey) 
```sql
CREATE VIEW group_create_SQL_views.studentinfo
AS
SELECT person.lastname,
    person.firstname,
    person.address,
    person.city,
    person.state,
    person.email,
    person.dateadded,
    Student.studentkey
FROM person
JOIN student USING (personkey);
```
2. Student login credentials (function for admin / login recovery) 
```sql
CREATE VIEW group_create_SQL_views.studentlogin
AS
SELECT student.studentkey,
    person.dateadded,
    person.lastname,
    person.firstname,
    logintable.username,
    logintable.userpassword
FROM person
JOIN student USING (personkey)
JOIN logintable USING (personkey)
GROUP BY student.studentkey, person.dateadded, person.lastname, person.firstname, logintable.username, logintable.userpassword;

```
3. Student grades view (listing requirements and final grade)
```sql
CREATE VIEW group_create_SQL_views.studentgrades
AS
SELECT lastname
, firstname
, statusname
, coursename
, concat(sectionyear, '-', quartername) as "term"
, credits
, minimumgrade
, finalgrade

FROM person
JOIN student using (personkey)
JOIN instructor using (statuskey)
JOIN coursesection using (instructorkey)
JOIN course using (coursekey)
JOIN certificatecourse using (coursekey)
JOIN quarter using (quarterkey)
JOIN pricehistory using (pricehistorykey)
JOIN status using (statuskey)
JOIN rosterstaging using (studentkey)
order by sectionyear desc;

```

4. Student enrollment (listing area and certificatename)
```sql
CREATE VIEW group_create_SQL_views.studentenrollment
AS
SELECT lastname
, firstname
, concat(sectionyear, '-', quartername) as "term"
, coursename
, areaname
, certificatename
from roster
join coursesection using(sectionkey)
join quarter using(quarterkey)
join student using(studentkey)
join person using(personkey)
join instructor using(instructorkey)
join instructorarea using(instructorkey)
join instructionalarea using(instructionalareakey)
join course using(coursekey)
join certificatecourse using(coursekey)
join certificate using(certificatekey)
order by lastname, firstname asc
```
5. Instructor details (showing hiredate, status, sectionyear, and quarter)
```sql
CREATE VIEW group_create_SQL_views.instructor_details
AS
SELECT lastname, firstname, hiredate, statusname, sectionyear, quartername
FROM person
JOIN instructor using (personkey)
JOIN coursesection using (instructorkey)
JOIN quarter using (quarterkey)
JOIN status using (statuskey);
```

### Screenshot of views:
<img width="506" alt="image" src="https://user-images.githubusercontent.com/26440947/129435993-e4f05a7a-a739-46e3-b3bf-b1f489989b41.png">
