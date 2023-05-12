select * from m_student
where answered = 'y';

alter table h_student rename column excited_teachers to excited_teacher;

alter table m_student rename column excited_teachers to excited_teacher;

select id, 
((respectful_teachers+
concerned_teachers+
visit_teachers+
how_teachers+
again_teachers+
disrespectful_people+
understand_people+
energy_school+
fights_students
connected_adults
space_school
online_bully
respect_students
fair_rules
school_violence
matter_others
behavior_students
adult_help
belong_school
excited_teacher
unfair_adults
teachers_race
think_race
honest_race
encourage_race
share_race
often_race
adults_race
school_race)/29.0)

select id, answered,
(case when respectful_teachers = 'None of my teachers' then 1
when respectful_teachers = 'A few of my teachers' then 2
when respectful_teachers = 'About half of my teachers' then 3
when respectful_teachers = 'Most of my teachers' then 4
when respectful_teachers = 'All of my teachers' then 5 end) as respectful_teachers,
(case when concerned_teachers = 'None of my teachers' then 1
when concerned_teachers = 'A few of my teachers' then 2
when concerned_teachers = 'About half of my teachers' then 3
when concerned_teachers = 'Most of my teachers' then 4
when concerned_teachers = 'All of my teachers' then 5 end) as concerned_teachers,
(case when visit_teachers = 'None of my teachers' then 1
when visit_teachers = 'A few of my teachers' then 2
when visit_teachers = 'About half of my teachers' then 3
when visit_teachers = 'Most of my teachers' then 4
when visit_teachers = 'All of my teachers' then 5 end) as visit_teachers,
(case when how_teachers = 'None of my teachers' then 1
when how_teachers = 'A few of my teachers' then 2
when how_teachers = 'About half of my teachers' then 3
when how_teachers = 'Most of my teachers' then 4
when how_teachers = 'All of my teachers' then 5 end) as how_teachers,
(case when again_teachers = 'None of my teachers' then 1
when again_teachers = 'A few of my teachers' then 2
when again_teachers = 'About half of my teachers' then 3
when again_teachers = 'Most of my teachers' then 4
when again_teachers = 'All of my teachers' then 5 end) as again_teachers,
(case when disrespectful_people = 'Almost never' then 5
when disrespectful_people = 'Once in a while' then 4
when disrespectful_people = 'Sometimes' then 3
when disrespectful_people = 'Frequently' then 2
when disrespectful_people = 'Almost always' then 1 end) as disrespectful_people,
(case when understand_people = 'Do not understand at all' then 1
when understand_people = 'Understand a little' then 2
when understand_people = 'Understand somewhat' then 3
when understand_people = 'Understand quite a bit' then 4
when understand_people = 'Completely understand' then 5 end) as understand_people,
(case when energy_school = 'Very negative' then 1
when energy_school = 'Somewhat negative' then 2
when energy_school = 'Slightly negative' then 3
when energy_school = 'Neither negative or positive' then 4
when energy_school = 'Slightly positive' then 5
when energy_school = 'Somewhat positive' then 6
when energy_school = 'Very positive' then 7 end) as energy_school,
(case when fights_students = 'Almost never' then 5
when fights_students = 'Once in a while' then 4
when fights_students = 'Sometimes' then 3
when fights_students = 'Frequently' then 2
when fights_students = 'Almost always' then 1 end) as fights_students,
(case when connected_adults = 'Not at all connected' then 1
when connected_adults = 'Slightly connected' then 2
when connected_adults = 'Somewhat connected' then 3
when connected_adults = 'Quite connected' then 4
when connected_adults = 'Extremely connected' then 5 end) as connected_adults,
(case when space_school = 'Very unpleasant' then 1
when space_school = 'Somewhat unpleasant' then 2
when space_school = 'Slightly unpleasant' then 3
when space_school = 'Neither pleasant or unpleasant' then 4
when space_school = 'Slightly pleasant' then 5
when space_school = 'Somewhat pleasant' then 6
when space_school = 'Very pleasant' then 7 end) as space_school,
(case when online_bully = 'Not at all likely' then 5
when online_bully = 'Slightly likely' then 4
when online_bully = 'Somewhat likely' then 3
when online_bully = 'Quite likely' then 2
when online_bully = 'Extremely likely' then 1 end) as online_bully,
(case when respect_students = 'No respect at all' then 1
when respect_students = 'A little bit of respect' then 2
when respect_students = 'Some respect' then 3
when respect_students = 'Quite a bit of respect' then 4
when respect_students = 'A tremendous amount of respect' then 5 end) as respect_students,
(case when fair_rules = 'Very unfair' then 1
when fair_rules = 'Somewhat unfair' then 2
when fair_rules = 'Slightly unfair' then 3
when fair_rules = 'Neither unfair or fair' then 4
when fair_rules = 'Slightly fair' then 5
when fair_rules = 'Somewhat fair' then 6
when fair_rules = 'Very fair' then 7 end) as fair_rules,
(case when school_violence = 'Almost never' then 5
when school_violence = 'Once in a while' then 4
when school_violence = 'Sometimes' then 3
when school_violence = 'Frequently' then 2
when school_violence = 'Almost always' then 1 end) as school_violence,
(case when matter_others = 'Do not matter at all' then 1
when matter_others = 'Matter a little bit' then 2
when matter_others = 'Matter somewhat' then 3
when matter_others = 'Matter quite a bit' then 4
when matter_others = 'Matter a tremendous amount' then 5 end) as matter_others,
(case when behavior_students = 'Hurts my learning a tremendous amount' then 1
when behavior_students = 'Hurts my learning some' then 2
when behavior_students = 'Hurts my learning a little bit' then 3
when behavior_students = 'Neither helps nor hurts my learning' then 4
when behavior_students = 'Helps my learning a little bit' then 5
when behavior_students = 'Helps my learning some' then 6
when behavior_students = 'Helps my learning a tremendous amount' then 7 end) as behavior_students,
(case when adult_help = 'Not at all difficult' then 5
when adult_help = 'Slightly difficult' then 4
when adult_help = 'Somewhat difficult' then 3
when adult_help = 'Quite difficult' then 2
when adult_help = 'Extremely difficult' then 1 end) as adult_help,
(case when belong_school = 'Do not belong at all' then 1
when belong_school = 'Belong a little bit' then 2
when belong_school = 'Belong somewhat' then 3
when belong_school = 'Belong quite a bit' then 4
when belong_school = 'Completely belong' then 5 end) as belong_school,
(case when excited_teacher = 'Almost never' then 1
when excited_teacher = 'Once in a while' then 2
when excited_teacher = 'Sometimes' then 3
when excited_teacher = 'Frequently' then 4
when excited_teacher = 'Almost always' then 5 end) as excited_teacher,
(case when unfair_adults = 'Not at all unfairly' then 5
when unfair_adults = 'Slightly unfairly' then 4
when unfair_adults = 'Somewhat unfairly' then 3
when unfair_adults = 'Quite unfairly' then 2
when unfair_adults = 'Extremely unfairly' then 1 end) as unfair_adults,
(case when teachers_race = 'Almost never' then 1
when teachers_race = 'Once in a while' then 2
when teachers_race = 'Sometimes' then 3
when teachers_race = 'Frequently' then 4
when teachers_race = 'Almost always' then 5 end) as teachers_race,
(case when think_race = 'Almost never' then 1
when think_race = 'Once in a while' then 2
when think_race = 'Sometimes' then 3
when think_race = 'Frequently' then 4
when think_race = 'Almost always' then 5 end) as think_race,
(case when honest_race = 'Not at all confident' then 1
when honest_race = 'Slightly confident' then 2
when honest_race = 'Somewhat confident' then 3
when honest_race = 'Quite confident' then 4
when honest_race = 'Extremely confident' then 5 end) as honest_race,
(case when encourage_race = 'Almost never' then 1
when encourage_race = 'Once in a while' then 2
when encourage_race = 'Sometimes' then 3
when encourage_race = 'Frequently' then 4
when encourage_race = 'Almost always' then 5 end) as encourage_race,
(case when share_race = 'Not at all comfortable' then 1
when share_race = 'Slightly comfortable' then 2
when share_race = 'Somewhat comfortable' then 3
when share_race = 'Quite comfortable' then 4
when share_race = 'Extremely comfortable' then 5 end) as share_race,
(case when often_race = 'Almost never' then 1
when often_race = 'Once in a while' then 2
when often_race = 'Sometimes' then 3
when often_race = 'Frequently' then 4
when often_race = 'Almost always' then 5 end) as often_race,
(case when adults_race = 'Almost never' then 1
when adults_race = 'Once in a while' then 2
when adults_race = 'Sometimes' then 3
when adults_race = 'Frequently' then 4
when adults_race = 'Almost always' then 5 end) as adults_race,
(case when school_race = 'Not at all well' then 1
when school_race = 'Slightly well' then 2
when school_race = 'Somewhat well' then 3
when school_race = 'Quite well' then 4
when school_race = 'Extremely well' then 5 end) as school_race 
from m_student
where answered = 'y';

select round(avg(e_student_score),1) as e_student_positivity_score from e_student_scores;

select id, answered,
((concerned_teacher+
how_teacher+
again_teacher+
respect_teacher+
disrespectful_people+
understand_people+
energy_school+
fights_students+
support_adults+
fair_rules+
online_bully+
respect_students+
behavior_students+
school_violence+
belong_school+
excited_teacher+
adult_help) / 17.0) as e_student_score
from e_student_coded;

select id, answered,
(case when concerned_teacher = 'Not at all concerned' then 1
when concerned_teacher = 'Slightly concerned' then 2
when concerned_teacher = 'Somewhat concerned' then 3
when concerned_teacher = 'Quite concerned' then 4
when concerned_teacher = 'Extremely concerned' then 5 end) as concerned_teacher,
(case when how_teacher = 'Almost never' then 1
when how_teacher = 'Once in a while' then 2
when how_teacher = 'Sometimes' then 3
when how_teacher = 'Frequently' then 4
when how_teacher = 'Almost always' then 5 end) as how_teacher,
(case when again_teacher = 'Not at all excited' then 1
when again_teacher = 'Slightly excited' then 2
when again_teacher = 'Somewhat excited' then 3
when again_teacher = 'Quite excited' then 4
when again_teacher = 'Extremely excited' then 5 end) as again_teacher,
(case when respect_teacher = 'Not at all respectful' then 1
when respect_teacher = 'Slightly respectful' then 2
when respect_teacher = 'Somewhat respectful' then 3
when respect_teacher = 'Quite respectful' then 4
when respect_teacher = 'Extremely respectful' then 5 end) as respect_teacher,
(case when disrespectful_people = 'Almost never' then 5
when disrespectful_people = 'Once in a while' then 4
when disrespectful_people = 'Sometimes' then 3
when disrespectful_people = 'Frequently' then 2
when disrespectful_people = 'Almost always' then 1 end) as disrespectful_people,
(case when understand_people = 'Do not understand at all' then 1
when understand_people = 'Understand a little' then 2
when understand_people = 'Understand somewhat' then 3
when understand_people = 'Understand quite a bit' then 4
when understand_people = 'Completely understand' then 5 end) as understand_people,
(case when energy_school = 'Very negative' then 1
when energy_school = 'Somewhat negative' then 2
when energy_school = 'Slightly negative' then 3
when energy_school = 'Neither negative or positive' then 4
when energy_school = 'Slightly positive' then 5
when energy_school = 'Somewhat positive' then 6
when energy_school = 'Very positive' then 7 end) as energy_school,
(case when fights_students = 'Almost never' then 5
when fights_students = 'Once in a while' then 4
when fights_students = 'Sometimes' then 3
when fights_students = 'Frequently' then 2
when fights_students = 'Almost always' then 1 end) as fights_students,
(case when support_adults = 'No support at all' then 1
when support_adults = 'A little bit of support' then 2
when support_adults = 'Some support' then 3
when support_adults = 'Quite a bit of support' then 4
when support_adults = 'A tremendous amount of support' then 5 end) as support_adults,
(case when fair_rules = 'Very unfair' then 1
when fair_rules = 'Somewhat unfair' then 2
when fair_rules = 'Slightly unfair' then 3
when fair_rules = 'Neither unfair or fair' then 4
when fair_rules = 'Slightly fair' then 5
when fair_rules = 'Somewhat fair' then 6
when fair_rules = 'Very fair' then 7 end) as fair_rules,
(case when online_bully = 'Not at all likely' then 5
when online_bully = 'Slightly likely' then 4
when online_bully = 'Somewhat likely' then 3
when online_bully = 'Quite likely' then 2
when online_bully = 'Extremely likely' then 1 end) as online_bully,
(case when respect_students = 'No respect at all' then 1
when respect_students = 'A little bit of respect' then 2
when respect_students = 'Some respect' then 3
when respect_students = 'Quite a bit of respect' then 4
when respect_students = 'A tremendous amount of respect' then 5 end) as respect_students,
(case when behavior_students = 'Hurts my learning a tremendous amount' then 1
when behavior_students = 'Hurts my learning some' then 2
when behavior_students = 'Hurts my learning a little bit' then 3
when behavior_students = 'Neither helps nor hurts my learning' then 4
when behavior_students = 'Helps my learning a little bit' then 5
when behavior_students = 'Helps my learning some' then 6
when behavior_students = 'Helps my learning a tremendous amount' then 7 end) as behavior_students,
(case when school_violence = 'Almost never' then 5
when school_violence = 'Once in a while' then 4
when school_violence = 'Sometimes' then 3
when school_violence = 'Frequently' then 2
when school_violence = 'Almost always' then 1 end) as school_violence,
(case when belong_school = 'Do not belong at all' then 1
when belong_school = 'Belong a little bit' then 2
when belong_school = 'Belong somewhat' then 3
when belong_school = 'Belong quite a bit' then 4
when belong_school = 'Completely belong' then 5 end) as belong_school,
(case when excited_teacher = 'Almost never' then 1
when excited_teacher = 'Once in a while' then 2
when excited_teacher = 'Sometimes' then 3
when excited_teacher = 'Frequently' then 4
when excited_teacher = 'Almost always' then 5 end) as excited_teacher,
(case when adult_help = 'Not at all difficult' then 5
when adult_help = 'Slightly difficult' then 4
when adult_help = 'Somewhat difficult' then 3
when adult_help = 'Quite difficult' then 2
when adult_help = 'Extremely difficult' then 1 end) as adult_help
from e_student
where answered = 'y';

select * from e_student
where answered = 'y';

