use dev;
select from student;
update student set name='tarun' where ssid=6;
commit;
update student set name='pilla' where ssid=6;
select * from student;
rollback; 
select * from student;
 use dev;
select * from marks;
CREATE VIEW bca as select name,ssid from student,marks where student.name=marks.ssid; 
select * from student;
select * from marks;
delete from marks where ssid =4 ;

insert into marks values (5,"mayank",22,24,21,20,19);
alter table student add primary key(ssid);
alter table marks add primary key(ssid);
alter table marks add FOREIGN key (ssid) references student(ssid);
Create database college;
show DATABASES;
show tables;

desc student;
select * from student;
alter table student add(club varchar(10));
alter table student modify roll_NO varchar(25);
alter table student add primary key(roll_no);
Alter table student drop primary key;
ALTER TABLE student DROP PRIMARY KEY;
Select ssid,name from student;
Select count(*) from student;
Select count(name) from student;
Select distinct(name) from student;
Select count(distinct(name)) from student;
Select * from student where gender='Male';
Select * from student where gender !='M';
Select * from student where gender='M' and ssid between '3' and '5';
update student set gender='FEMALE' where ssid between '4' and '6';
select * from student where ssid between '2' and '6';
select * from student where ssid in('2','1','3');
select * from student where ssid not between '2' and '5';
select * from student where ssid not in('2','3','4');
select * from student where ssid between '2' and '4' or ssid not in('1','5','7');
SELECT * FROM marks;
Select * from student;

SELECT * FROM student ORDER BY roll_NO,ssid;
DESC STUDENT;
ALTER TABLE student ADD UNIQUE(NAME);
Alter table student modify SSID INT not null;
Alter table student add check(SSID<=3);
Alter table student alter SSID set default 0;
DESC MARKS;
Select sum(SSID) from marks;
Select avg(SSID) from marks;
Select min(SSID) from marks;
Select MATHS as 'MATHEMATICS' from marks;
 
 SELECT SSID
 FROM STUDENT 
INNER JOIN MAKRS ON
 STUDENT.SSID = MAKRS.GENDER;
 SELECT SSID,name FROM student inner join marks on student.ssid = marks.ssi;
 create view toppers as PHP,DBMS FROM MARKS WHERE ssid>4;
 CREATE VIEW TOPPERS AS SELECT wbp,dbms FROM MARKS WHERE ssid>6;

UPDATE TOPPERS SET WBP=20 WHERE DBMS=25;