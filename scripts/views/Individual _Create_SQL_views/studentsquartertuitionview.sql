/***
*
* 	4. studentsquartertuitionview
*   -- DB: techcertificate
*
***/
create or replace view studentsquartertuitionview
as

SELECT statusname as "Status"
	, studentstartdate as "Enrolled"
	, coursename as "Course"
	, quartername as "Quarter"
	, sectionyear as "Year"
	, credits as "Available Credits"
	, pricepercredit as "Price/Credit"
	, credits * pricepercredit as "Cost"
	FROM public.roster
	join public.coursesection using(sectionkey)
	JOIN public.course using(coursekey)
	JOIN public.quarter using(quarterkey)
	join public.student using(studentkey)
	join public.person using(personkey)
	join public.status using(statuskey)
	join public.pricehistory using(pricehistorykey)
	where studentkey = 179
	AND quarterkey >= EXTRACT(QUARTER FROM CURRENT_DATE)
	order by sectionyear, quarterkey asc;
