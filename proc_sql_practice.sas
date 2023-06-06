/*import data from CSV files*/
proc import out=a1_staff
    datafile="/home/u63451762/a_staff/a1_staff.csv"
    dbms=csv
    replace;
    getnames=YES;
run;

proc import out=a2_staff
    datafile="/home/u63451762/a_staff/a2_staff.csv"
    dbms=csv
    replace;
    getnames=YES;
run;

proc import out=a3_staff
    datafile="/home/u63451762/a_staff/a3_staff.csv"
    dbms=csv
    replace;
    getnames=YES;
run;

proc import out=a4_staff
    datafile="/home/u63451762/a_staff/a4_staff.csv"
    dbms=csv
    replace;
    getnames=YES;
run;

/*code needs to be named exactly as SAS outputs (if column names or responses are cut off, need to use that)*/

/*code likert scales*/
proc sql;
	select id, answered,
	(case when enthusiastic_students = 'Not at all enthusiastic' then 1 
	when enthusiastic_students = 'Slightly enthusiastic' then 2
	when enthusiastic_students = 'Somewhat enthusiastic' then 3
	when enthusiastic_students = 'Quite enthusiastic' then 4
	when enthusiastic_students = 'Extremely enthusiastic' then 5 end) as enthusiastic_students,
	(case when staff_trusted = 'Not at all trusted' then 1
	when staff_trusted = 'Trusted a little bit' then 2
	when staff_trusted = 'Trusted somewhat' then 3
	when staff_trusted = 'Trusted quite a bit' then 4
	when staff_trusted = 'Trusted a tremendous amount' then 5 end) as staff_trusted,
	(case when positive_colleagues = 'Not at all positive' then 1
	when positive_colleagues = 'Slightly positive' then 2
	when positive_colleagues = 'Somewhat positive' then 3
	when positive_colleagues = 'Quite positive' then 4
	when positive_colleagues = 'Extremely positive' then 5 end) as positive_colleagues,
	(case when supportive_students = 'Not at all supportive' then 1
	when supportive_students = 'Slightly supportive' then 2
	when supportive_students = 'Somewhat supportive' then 3
	when supportive_students = 'Quite supportive' then 4
	when supportive_students = 'Extremely supportive' then 5 end) as supportive_students,
	(case when respectful_staff_students = 'Not at all respectful' then 1
	when respectful_staff_students = 'Slightly respectful' then 2
	when respectful_staff_students = 'Somewhat respectful' then 3
	when respectful_staff_students = 'Quite respectful' then 4
	when respectful_staff_students = 'Extremely respectful' then 5 end) as respectful_staff_students,	
	(case when optimistic_improvement = 'Not at all optimistic' then 1
	when optimistic_improvement = 'Slightly optimistic' then 2
	when optimistic_improvement = 'Somewhat optimistic' then 3
	when optimistic_improvement = 'Quite optimistic' then 4
	when optimistic_improvement = 'Extremely optimistic' then 5 end) as optimistic_improvement,
	(case when students_help_students = 'Almost never' then 1
	when students_help_students = 'Once in a while' then 2
	when students_help_students = 'Sometimes' then 3
	when students_help_students = 'Frequently' then 4
	when students_help_students = 'Almost all the time' then 5 end) as students_help_students,	
	(case when colleagues_support_initiatives = 'Not at all supportive' then 1
	when colleagues_support_initiatives = 'Slightly supportive' then 2
	when colleagues_support_initiatives = 'Somewhat supportive' then 3
	when colleagues_support_initiatives = 'Quite supportive' then 4
	when colleagues_support_initiatives = 'Extremely supportive' then 5 end) as colleagues_support_initiatives,
	(case when positive_environment = 'Not at all positive' then 1
	when positive_environment = 'Slightly positive' then 2
	when positive_environment = 'Somewhat positive' then 3
	when positive_environment = 'Quite positive' then 4
	when positive_environment = 'Extremely positive' then 5 end) as positive_environment,
	(case when positive_leaders = 'Not at all positive' then 1
	when positive_leaders = 'Slightly positive' then 2
	when positive_leaders = 'Somewhat positive' then 3
	when positive_leaders = 'Quite positive' then 4
	when positive_leaders = 'Extremely positive' then 5 end) as positive_leaders,
	(case when leaders_important_staff_satisfi = 'Not important at all' then 1
	when leaders_important_staff_satisfi = 'Slightly important' then 2
	when leaders_important_staff_satisfi = 'Somewhat important' then 3
	when leaders_important_staff_satisfi = 'Quite important' then 4
	when leaders_important_staff_satisfi = 'Extremely important' then 5 end) as leaders_important_staff_satisfi,
	(case when leaders_positive_influence = 'Not at all positive' then 1
	when leaders_positive_influence = 'Slightly positive' then 2
	when leaders_positive_influence = 'Somewhat positive' then 3
	when leaders_positive_influence = 'Quite positive' then 4
	when leaders_positive_influence = 'Extremely positive' then 5 end) as leaders_positive_influence,
	(case when leaders_communicate_effective = 'Not at all effectively' then 1
	when leaders_communicate_effective = 'Slightly effectively' then 2
	when leaders_communicate_effective = 'Somewhat effectively' then 3
	when leaders_communicate_effective = 'Quite effectively' then 4
	when leaders_communicate_effective = 'Extremely effectively' then 5 end) as leaders_communicate_effective,
	(case when leaders_knowledge = 'Not knowledgeable at all' then 1
	when leaders_knowledge = 'Slightly knowledgeable' then 2
	when leaders_knowledge = 'Somewhat knowledgeable' then 3
	when leaders_knowledge = 'Quite knowledgeable' then 4
	when leaders_knowledge = 'Extremely knowledgeable' then 5 end) as leaders_knowledge,
	(case when leaders_responsive = 'Not at all responsive' then 1
	when leaders_responsive = 'Slightly responsive' then 2
	when leaders_responsive = 'Somewhat responsive' then 3
	when leaders_responsive = 'Quite responsive' then 4
	when leaders_responsive = 'Extremely responsive' then 5 end) as leaders_responsive,
	(case when leaders_effective_rules = 'Not at all effectiv' then 1
	when leaders_effective_rules = 'Slightly effective' then 2
	when leaders_effective_rules = 'Somewhat effective' then 3
	when leaders_effective_rules = 'Quite effective' then 4
	when leaders_effective_rules = 'Extremely effective' then 5 end) as leaders_effective_rules,
	(case when leaders_clear_goals = 'Not at all clearly' then 1
	when leaders_clear_goals = 'Slightly clearly' then 2
	when leaders_clear_goals = 'Somewhat clearly' then 3
	when leaders_clear_goals = 'Quite clearly' then 4
	when leaders_clear_goals = 'Extremely clearly' then 5 end) as leaders_clear_goals,
	(case when staff_input = 'Almost no input' then 1
	when staff_input = 'A little bit of input' then 2
	when staff_input = 'Some input' then 3
	when staff_input = 'Quite a bit of input' then 4
	when staff_input = 'A tremendous amount of input' then 5 end) as staff_input,
	(case when friendly_families = 'Not at all friendly' then 1
	when friendly_families = 'Slightly friendly' then 2
	when friendly_families = 'Somewhat friendly' then 3
	when friendly_families = 'Quite friendly' then 4
	when friendly_families = 'Extremely friendly' then 5 end) as friendly_families,
	(case when meet_families = 'Almost never' then 1
	when meet_families = 'Once in a while' then 2
	when meet_families = 'Sometimes' then 3
	when meet_families = 'Frequently' then 4
	when meet_families = 'Almost all the time' then 5 end) as meet_families,
	(case when caring_families = 'Not at all caring' then 1
	when caring_families = 'Slightly caring' then 2
	when caring_families = 'Somewhat caring' then 3
	when caring_families = 'Quite caring' then 4
	when caring_families = 'Extremely caring' then 5 end) as caring_families,
	(case when supportive_families = 'Not at all supportive' then 1
	when supportive_families = 'Slightly supportive' then 2
	when supportive_families = 'Somewhat supportive' then 3
	when supportive_families = 'Quite supportive' then 4
	when supportive_families = 'Extremely supportive' then 5 end) as supportive_families,
	(case when trust_parents = 'Do not trust at all' then 1
	when trust_parents = 'Trust a little bit' then 2
	when trust_parents = 'Trust some' then 3
	when trust_parents = 'Trust quite a bit' then 4
	when trust_parents = 'Trust a tremendous amount' then 5 end) as trust_parents,
	(case when respectful_parents = 'Not at all respectful' then 1
	when respectful_parents = 'Slightly respectful' then 2
	when respectful_parents = 'Somewhat respectful' then 3
	when respectful_parents = 'Quite respectful' then 4
	when respectful_parents = 'Extremely respectful' then 5 end) as respectful_parents,
	(case when challenging_families = 'Not at all challenging' then 5
	when challenging_families = 'Slightly challenging' then 4
	when challenging_families = 'Somewhat challenging' then 3
	when challenging_families = 'Quite challenging' then 2
	when challenging_families = 'Extremely challenging' then 1 end) as challenging_families
	from a1_staff
	where answered = 'y';