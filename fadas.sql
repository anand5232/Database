create table employi(fname varchar2(10),lname varchar2(10),salary number(10),empid number(10), jobid number(10), deptname varchar2(10),
location varchar2(10), managerid number(10), deptid number(10));

insert into employi values('ram','Sharma',23000,23,56,'cse','pnb',12,100);
insert into employi values('anand','jhariya',2340,24,57,'mth','mp',11,101);

non pairwise comparison
select fname,lname,managerid,depid from employi where managerid IN(select managerid from employi where fname='Ram')
AND
deptid IN (select deptid from employi where fname='Ram');