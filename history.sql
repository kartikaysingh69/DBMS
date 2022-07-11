/* 2022-05-26 13:27:40 [12 ms] */ 
CREATE TABLE table_name(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    update_time DATETIME COMMENT 'Update Time',
    content VARCHAR(255) COMMENT 'content'
) DEFAULT CHARSET UTF8 COMMENT 'newTable';
/* 2022-05-26 13:29:43 [21 ms] */ 
DESC student;
/* 2022-05-26 13:30:29 [13 ms] */ 
DESC student;
/* 2022-05-26 13:31:49 [4 ms] */ 
INSERT INTO student VALUES(1,"kartikay",1,"delhi");
/* 2022-05-26 13:31:51 [22 ms] */ 
DESC student;
/* 2022-05-26 13:31:57 [15 ms] */ 
INSERT INTO student VALUES(1,"dev",1,"delhi");
/* 2022-05-26 13:32:32 [2 ms] */ 
SELECT * from student;
/* 2022-05-26 13:33:13 [2 ms] */ 
INSERT INTO student VALUES(2,"tarun",2,"delhi");
/* 2022-05-26 13:33:32 [3 ms] */ 
INSERT INTO student VALUES(3,"priyanshu",3,"delhi");
/* 2022-05-26 13:33:48 [4 ms] */ 
INSERT INTO student VALUES(4,"ritik",4,"delhi");
/* 2022-05-26 13:34:11 [3 ms] */ 
INSERT INTO student VALUES(5,"shivek",5,"delhi");
/* 2022-05-26 13:34:17 [3 ms] */ 
INSERT INTO student VALUES(1,"dev",11,"delhi");
/* 2022-05-26 13:34:24 [3 ms] */ 
INSERT INTO student VALUES(2,"tarun",22,"delhi");
/* 2022-05-26 13:34:30 [14 ms] */ 
INSERT INTO student VALUES(3,"priyanshu",33,"delhi");
/* 2022-05-26 13:34:35 [14 ms] */ 
INSERT INTO student VALUES(4,"ritik",44,"delhi");
/* 2022-05-26 13:34:38 [15 ms] */ 
INSERT INTO student VALUES(5,"shivek",55,"delhi");
/* 2022-05-26 13:34:57 [2 ms] */ 
SELECT * FROM student;
/* 2022-05-26 13:36:21 [15 ms] */ 
DROP TABLE student;
/* 2022-05-26 13:36:30 [2 ms] */ 
show tables;
/* 2022-05-27 12:33:34 [39 ms] */ 
show tables;
/* 2022-05-27 12:41:43 [46 ms] */ 
CREATE TABLE student (ssid int ,name varchar(25),roll_no int,gender varchar (25),address varchar(25));
/* 2022-05-27 12:41:56 [35 ms] */ 
desc student;
/* 2022-05-27 12:43:22 [20 ms] */ 
insert into student values(1,"dev",23,"male",'delhi');
/* 2022-05-27 12:43:45 [17 ms] */ 
insert into student values(2,"shivek",25,"male",'delhi');
/* 2022-05-27 12:44:03 [9 ms] */ 
insert into student values(3,"mayank",24,"male",'delhi');
/* 2022-05-27 12:44:29 [17 ms] */ 
insert into student values(4,"priyanshu",26,"male",'delhi');
/* 2022-05-27 12:44:54 [17 ms] */ 
insert into student values(5,"kartikay",27,"male",'delhi');
/* 2022-05-27 12:45:12 [18 ms] */ 
insert into student values(6,"tarun",28,"male",'delhi');
/* 2022-05-27 12:45:33 [17 ms] */ 
insert into student values(7,"param",29,"male",'delhi');
/* 2022-05-27 12:45:56 [41 ms] */ 
desc student;
/* 2022-05-27 12:46:30 [9 ms] */ 
select * from student;
/* 2022-05-27 12:53:45 [51 ms] */ 
create Table marks (ssid int, name VARCHAR (25),maths int, c_language int, dbms int, wbp int, es int);
/* 2022-05-27 12:56:02 [19 ms] */ 
INSERT into marks values (1,"dev",24,25,25,19,22);
/* 2022-05-27 12:56:54 [18 ms] */ 
INSERT into marks values (2,"param",22,24,23,17,21);
/* 2022-05-27 12:57:30 [16 ms] */ 
INSERT into marks values (3,"shivek",22,21,25,17,23);
/* 2022-05-27 12:57:54 [16 ms] */ 
INSERT into marks values (4,"priyanshu",24,25,25,19,22);
/* 2022-05-27 12:58:16 [18 ms] */ 
INSERT into marks values (5,"mayank",24,24,22,15,22);
/* 2022-05-27 12:59:14 [17 ms] */ 
INSERT into marks values (6,"kartikay",23,24,21,19,12);
/* 2022-05-27 12:59:32 [17 ms] */ 
INSERT into marks values (7,"tarun",21,25,25,19,22);
/* 2022-05-27 13:00:20 [40 ms] */ 
desc marks;
/* 2022-05-27 13:00:47 [8 ms] */ 
SELECT * from marks;
/* 2022-05-27 13:03:30 [11 ms] */ 
SELECT * from marks inner join student;
/* 2022-05-27 13:06:53 [8 ms] */ 
SELECT * from marks;
/* 2022-05-27 13:07:24 [18 ms] */ 
SELECT * from marks LEFT JOIN student on marks.ssid=student.ssid;
/* 2022-05-27 13:08:54 [8 ms] */ 
select * from marks right join student on marks.name=student.name;
/* 2022-05-27 13:10:40 [19 ms] */ 
SELECT * from marks where name like 's%';
/* 2022-05-27 13:11:22 [6 ms] */ 
select *from marks where name like "d%";
/* 2022-05-27 13:12:38 [5 ms] */ 
select * from marks where name like "_e";
/* 2022-05-27 13:14:13 [12 ms] */ 
select name from marks where ssid=any (select ssid from student where ssid <8);
/* 2022-06-02 13:13:03 [6 ms] */ 
use dev;
/* 2022-06-02 13:15:09 [17 ms] */ 
update student set name='tarun' where ssid=6;
/* 2022-06-02 13:15:20 [4 ms] */ 
commit;
/* 2022-06-02 13:16:17 [17 ms] */ 
update student set name='pilla' where ssid=6;
/* 2022-06-02 13:16:37 [6 ms] */ 
select * from student;
/* 2022-06-02 13:16:52 [6 ms] */ 
rollback;
/* 2022-06-02 13:17:08 [8 ms] */ 
select * from student;
/* 2022-06-02 13:19:52 [5 ms] */ 
rollback;
/* 2022-06-02 13:19:56 [5 ms] */ 
select * from student;
/* 2022-06-03 13:04:07 [10 ms] */ 
use dev;
/* 2022-06-03 13:04:10 [13 ms] */ 
select * from student;
/* 2022-06-03 13:04:40 [6 ms] */ 
select * from marks;
/* 2022-06-03 13:17:31 [4 ms] */ 
select * from student;
/* 2022-06-03 13:17:48 [6 ms] */ 
select * from marks;
/* 2022-06-03 13:33:22 [20 ms] */ 
delete from marks where ssid = 5;
/* 2022-06-03 13:33:25 [4 ms] */ 
select * from marks;
/* 2022-06-03 13:33:58 [17 ms] */ 
delete from marks where ssid = 4;
/* 2022-06-03 13:34:04 [7 ms] */ 
select * from student;
/* 2022-06-03 13:34:08 [2 ms] */ 
delete from marks where ssid = 4;
/* 2022-06-03 13:34:10 [6 ms] */ 
select * from marks;
/* 2022-06-03 13:35:59 [23 ms] */ 
insert into marks values (4,"priyanshu",22,24,21,20,19);
/* 2022-06-03 13:36:04 [4 ms] */ 
select * from marks;
/* 2022-06-03 13:36:20 [17 ms] */ 
insert into marks values (4,"priyanshu",22,24,21,20,19);
/* 2022-06-03 13:36:37 [16 ms] */ 
delete from marks where ssid =4;
/* 2022-06-03 13:36:40 [5 ms] */ 
select * from marks;
/* 2022-06-03 13:36:43 [16 ms] */ 
insert into marks values (4,"priyanshu",22,24,21,20,19);
/* 2022-06-03 13:36:45 [4 ms] */ 
select * from marks;
/* 2022-06-03 13:36:55 [5 ms] */ 
select * from student;
/* 2022-06-03 13:37:04 [5 ms] */ 
select * from marks;
/* 2022-06-03 13:37:35 [18 ms] */ 
insert into marks values (5,"mayank",22,24,21,20,19);
/* 2022-06-03 13:38:01 [4 ms] */ 
select * from marks;
/* 2022-06-03 13:38:03 [4 ms] */ 
select * from student;
/* 2022-06-03 13:38:05 [6 ms] */ 
select * from marks;
/* 2022-06-03 13:38:07 [5 ms] */ 
select * from student;
/* 2022-06-03 13:38:08 [4 ms] */ 
select * from marks;
/* 2022-06-03 13:38:46 [81 ms] */ 
alter table student add primary key(ssid);
/* 2022-06-03 13:39:18 [60 ms] */ 
alter table marks add primary key(ssid);
/* 2022-06-03 13:41:53 [69 ms] */ 
alter table marks add FOREIGN key (ssid) references student(ssid);
/* 2022-06-19 12:45:49 [3 ms] */ 
Create database college;
/* 2022-06-19 12:46:23 [2 ms] */ 
show DATABASES;
/* 2022-06-19 12:48:07 [2 ms] */ 
show tables;
/* 2022-06-19 12:48:29 [3 ms] */ 
select * from student;
/* 2022-06-19 12:49:09 [9 ms] */ 
desc student;
/* 2022-06-19 12:54:39 [1 ms] */ 
select * from student;
/* 2022-06-19 12:55:56 [27 ms] */ 
alter table student add(club varchar(10));
/* 2022-06-19 12:56:16 [2 ms] */ 
select * from student;
/* 2022-06-19 12:58:40 [23 ms] */ 
alter table student modify roll_NO varchar(25);
/* 2022-06-19 13:01:24 [3 ms] */ 
select * from student;
/* 2022-06-19 13:02:50 [9 ms] */ 
desc student;
/* 2022-06-19 13:12:12 [2 ms] */ 
Select ssid,name from student;
/* 2022-06-19 13:14:18 [3 ms] */ 
Select count(*) from student;
/* 2022-06-19 13:14:52 [3 ms] */ 
Select count(name) from student;
/* 2022-06-19 13:14:58 [2 ms] */ 
Select count(*) from student;
/* 2022-06-19 13:14:59 [1 ms] */ 
Select count(name) from student;
/* 2022-06-19 13:16:36 [2 ms] */ 
Select distinct(name) from student;
/* 2022-06-19 13:18:09 [2 ms] */ 
Select count(distinct(name)) from student;
/* 2022-06-19 13:19:28 [2 ms] */ 
Select * from student where gender='Male';
/* 2022-06-19 13:21:06 [1 ms] */ 
Select * from student where gender !='M';
/* 2022-06-19 13:22:30 [2 ms] */ 
Select * from student where gender='M' and ssid between '1' and '4';
/* 2022-06-19 13:22:43 [1 ms] */ 
Select * from student where gender='M' and ssid between '1' and '10';
/* 2022-06-19 13:22:46 [1 ms] */ 
Select * from student where gender !='M';
/* 2022-06-19 13:22:59 [1 ms] */ 
Select * from student where gender='M' and ssid between '1' and '7';
/* 2022-06-19 13:23:09 [2 ms] */ 
Select * from student where gender='M' and ssid between '1' and '3';
/* 2022-06-19 13:23:26 [2 ms] */ 
Select * from student where gender='M' and ssid between '3' and '5';
/* 2022-06-19 13:24:16 [2 ms] */ 
Select * from student where gender='Male';
/* 2022-06-19 13:25:53 [3 ms] */ 
update student set gender='FEMALE' where ssid between '4' and '6';
/* 2022-06-19 13:27:09 [1 ms] */ 
select * from student where ssid between '2' and '6';
/* 2022-06-19 13:28:15 [1 ms] */ 
select * from student where ssid in('2','1','3');
/* 2022-06-19 13:29:46 [1 ms] */ 
select * from student where ssid not between '2' and '5';
/* 2022-06-19 13:31:16 [2 ms] */ 
select * from student where ssid not in('2','3','4');
/* 2022-06-19 13:33:02 [2 ms] */ 
select * from student where ssid between '2' and '4' or ssid not in('1','5','7');
/* 2022-06-19 13:44:09 [4 ms] */ 
SELECT * FROM marks;
/* 2022-06-19 13:47:27 [4 ms] */ 
SELECT * FROM marks;
/* 2022-06-19 13:49:14 [5 ms] */ 
Select * from student;
/* 2022-06-19 13:51:20 [3 ms] */ 
SELECT SSID FROM student WHERE roll_NO>25;
/* 2022-06-19 13:53:14 [2 ms] */ 
SELECT * FROM student ORDER BY roll_NO;
/* 2022-06-19 13:55:08 [2 ms] */ 
SELECT * FROM student ORDER BY roll_NO,ssid;
/* 2022-06-19 13:59:13 [13 ms] */ 
DESC STUDENT;
/* 2022-06-19 14:00:56 [19 ms] */ 
ALTER TABLE student ADD UNIQUE(NAME);
/* 2022-06-19 14:01:01 [10 ms] */ 
DESC STUDENT;
/* 2022-06-19 14:02:54 [9 ms] */ 
Alter table student modify SSID INT not null;
/* 2022-06-19 14:05:35 [11 ms] */ 
Alter table student add check(SSID<=3);
/* 2022-06-19 14:06:49 [11 ms] */ 
Alter table student alter SSID set default 0;
/* 2022-06-19 14:09:25 [11 ms] */ 
DESC STUDENT;
/* 2022-06-19 14:10:05 [9 ms] */ 
DESC MARKS;
/* 2022-06-19 14:11:10 [2 ms] */ 
Select sum(SSID) from marks;
/* 2022-06-19 14:17:54 [2 ms] */ 
Select avg(SSID) from marks;
/* 2022-06-19 14:18:48 [2 ms] */ 
Select min(SSID) from marks;
/* 2022-06-19 14:19:52 [2 ms] */ 
Select max(SSID) from marks;
image.png
