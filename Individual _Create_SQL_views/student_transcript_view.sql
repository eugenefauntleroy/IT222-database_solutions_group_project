-- Student_transcript_view
-- DB: techcertificate
create or replace view studenttranscriptview
as
SELECT 
-- 	rosterkey
	statusname as "Status"
	, studentstartdate as "Enrolled"
	, concat(firstname, ' ', lastname) as Student
-- 	, sectionkey
	, coursename as "Course"
	, concat(sectionyear, '-', quarterkey, '-', quartername) as "Quarter Year"
	, credits as "Available Credits"
	, finalgrade as "Grade"
-- 	studentkey
	FROM public.roster
	join coursesection using(sectionkey)
	JOIN course using(coursekey)
	JOIN quarter using(quarterkey)
	join student using(studentkey)
	join person using(personkey)
	join status using(statuskey)
-- 	where studentkey = 179
	order by sectionyear, quarterkey asc;
