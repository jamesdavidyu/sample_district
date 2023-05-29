/*creates a_staff: combines data from schools a1-a4 into one table*/
select * from a1_staff
union all
select * from a2_staff
union all
select * from a3_staff
union all
select * from a4_staff;

/*creates e_staff: combines data from schools e1-e13 into one table*/
select * from e1_staff
union all
select * from e2_staff
union all
select * from e3_staff
union all
select * from e4_staff
union all
select * from e5_staff
union all
select * from e6_staff
union all
select * from e7_staff
union all
select * from e8_staff
union all
select * from e9_staff
union all
select * from e10_staff
union all
select * from e11_staff
union all
select * from e12_staff
union all
select * from e13_staff;

/*creates h_staff: combines data from schools h1-h5 into one table*/
select * from h1_staff
union all
select * from h2_staff
union all
select * from h3_staff
union all
select * from h4_staff
union all
select * from h5_staff;

/*creates m_staff: combines data from schools m1-m12 into one table*/
select * from m1_staff
union all
select * from m2_staff
union all
select * from m3_staff
union all
select * from m4_staff
union all
select * from m5_staff
union all
select * from m6_staff
union all
select * from m7_staff
union all
select * from m8_staff
union all
select * from m9_staff
union all
select * from m10_staff
union all
select * from m11_staff
union all
select * from m12_staff;

/*no a_student data - creates e_student: combines data from schools e1-e13 into one table*/
select * from e1_student
union all
select * from e2_student
union all
select * from e3_student
union all
select * from e4_student
union all
select * from e5_student
union all
select * from e6_student
union all
select * from e7_student
union all
select * from e8_student
union all
select * from e9_student
union all
select * from e10_student
union all
select * from e11_student
union all
select * from e12_student
union all
select * from e13_student;

/*creates h_student: combines data from schools h1-h5 into one table*/
select * from h1_student
union all
select * from h2_student
union all
select * from h3_student
union all
select * from h4_student
union all
select * from h5_student;

/*creates m_student: combines data from schools m1-m12 into one table*/
select * from m1_student
union all
select * from m2_student
union all
select * from m3_student
union all
select * from m4_student
union all
select * from m5_student
union all
select * from m6_student
union all
select * from m7_student
union all
select * from m8_student
union all
select * from m9_student
union all
select * from m10_student
union all
select * from m11_student
union all
select * from m12_student;

/*cleans a_staff by specifying that empty cells are null*/
update a_staff
set enthusiastic_students = null,
staff_trusted = null,
positive_colleagues = null,
supportive_students = null,
respectful_staff_students = null,
optimistic_improvement = null,
students_help_students = null,
colleagues_support_initiatives = null,
positive_environment = null,
positive_leaders = null,
leaders_important_staff_satisfied = null,
leaders_positive_influence = null,
leaders_communicate_effective = null,
leaders_knowledge = null,
leaders_responsive = null,
leaders_effective_rules = null,
leaders_clear_goals = null,
staff_input = null,
friendly_families = null,
meet_families = null,
caring_families = null,
supportive_families = null,
trust_parents = null,
respectful_parents = null,
challenging_families = null
where answered = 'n';

/*cleans e_staff by specifying that empty cells are null*/
update e_staff
set enthusiastic_students = null,
staff_trusted = null,
positive_colleagues = null,
supportive_students = null,
respectful_staff_students = null,
optimistic_improvement = null,
students_help_students = null,
colleagues_support_initiatives = null,
positive_environment = null,
positive_leaders = null,
leaders_important_staff_satisfied = null,
leaders_positive_influence = null,
leaders_communicate_effective = null,
leaders_knowledge = null,
leaders_responsive = null,
leaders_effective_rules = null,
leaders_clear_goals = null,
staff_input = null,
friendly_families = null,
meet_families = null,
caring_families = null,
supportive_families = null,
trust_parents = null,
respectful_parents = null,
challenging_families = null
where answered = 'n';

/*creates d_staff: combines a_staff, e_staff, h_staff, and m_staff*/
select * from a_staff;
