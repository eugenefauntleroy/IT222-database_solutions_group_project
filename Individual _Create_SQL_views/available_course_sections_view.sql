-- 1: Available_course_sections_view
-- DB: techcertificate
CREATE OR REPLACE VIEW availablecoursesectionsview
AS
SELECT sectionkey
	, sectionyear
-- 	, quarterkey
	, quartername
-- 	, coursekey
	, coursename
	, coursedescription
-- 	, instructorkey
	, CONCAT(firstname, ' ', lastname) as "Instructor"
	, credits
-- 	, pricehistorykey
	, pricepercredit
	, credits * pricepercredit as "Cost"

	FROM public.coursesection
	JOIN course using(coursekey)
	JOIN instructor using(instructorkey)
	JOIN person using(personkey)
	JOIN quarter using(quarterkey)
	JOIN pricehistory using(pricehistorykey)
	WHERE sectionyear >= EXTRACT(YEAR from CURRENT_DATE)
	AND quarterkey >= EXTRACT(QUARTER FROM CURRENT_DATE);
