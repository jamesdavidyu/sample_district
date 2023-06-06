/*import data from CSV file called my_data.csv*/
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



proc sql;
	select * from a1_staff
	where answered = 'y'
	union all
	select * from a2_staff
	where answered = 'y'
	union all
	select * from a3_staff
	where answered = 'y'
	union all
	select * from a4_staff
	where answered = 'y';