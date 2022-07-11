/* 2022-06-19 13:37:50 [12 ms] */ 
create Table marks (ssid int, name VARCHAR (25),maths int, c_language int, dbms int, wbp int, es int);
/* 2022-06-19 13:38:50 [7 ms] */ 
DESC MARKS;
/* 2022-06-19 14:50:46 [11 ms] */ 
create table person(driver_id varchar(10),name varchar(10),address varchar(10),primary key(driver_id));
/* 2022-06-19 14:50:46 [11 ms] */ 
create table car(regno varchar(10),model varchar(10),year int,primary key(regno));
/* 2022-06-19 14:50:47 [9 ms] */ 
create table accident(report_number int,accd_date date,location varchar(10),primary key(report_number));
/* 2022-06-19 14:50:47 [10 ms] */ 
create table owns(driver_id varchar(10),regno varchar(10),primary key(driver_id,regno),foreign key(driver_id) references person(driver_id),foreign key(regno) references car(regno));
/* 2022-06-19 14:50:48 [13 ms] */ 
create table participated(driver_id varchar(10),regno varchar(10),report_number int,damage_amount int,primary key(driver_id,regno,report_number),foreign key(driver_id) references person(driver_id),foreign key(regno) references car(regno),foreign key(report_number) references accident(report_number));
/* 2022-06-19 14:53:10 [5 ms] */ 
insert into person values('D192','kartikay','delhi');
/* 2022-06-19 14:53:10 [3 ms] */ 
insert into person values('D193','ritik','delhi');
/* 2022-06-19 14:53:11 [3 ms] */ 
insert into person values('D194','tarun','delhi');
/* 2022-06-19 14:53:11 [4 ms] */ 
insert into person values('D195','priyanshu','delhi');
/* 2022-06-19 14:53:12 [4 ms] */ 
insert into person values('D196','karan','delhi');
/* 2022-06-19 14:55:27 [3 ms] */ 
insert into car values('DL8108','polo gt',2022);
/* 2022-06-19 14:55:27 [4 ms] */ 
insert into car values('DL0007','i20',2022);
/* 2022-06-19 14:55:28 [2 ms] */ 
insert into car values('DL287','thar',2017);
/* 2022-06-19 14:55:28 [3 ms] */ 
insert into car values('DL6557','contessa',2012);
/* 2022-06-19 14:57:50 [6 ms] */ 
insert into accident values(1234,'2022-07-17','Delhi');
/* 2022-06-19 14:58:45 [7 ms] */ 
insert into accident values(1235,'2022-06-19','delhi');
/* 2022-06-19 14:58:45 [5 ms] */ 
insert into accident values(1236,'2022-01-15','goa');
/* 2022-06-19 14:58:46 [4 ms] */ 
insert into accident values(1237,'2022-01-12','sikkim');
/* 2022-06-19 14:58:46 [3 ms] */ 
insert into accident values(1238,'2021-03-18','manali');
/* 2022-06-19 15:03:20 [5 ms] */ 
select count(0) as Totalcars from car c,participated p where c.regno=p.regno and c.model='i20';
/* 2022-06-19 15:04:31 [9 ms] */ 
create table student(stud_no int(5) primary key,stud_name varchar(15));
/* 2022-06-19 15:04:31 [9 ms] */ 
create table membership(mem_no int(5) primary key,stud_no int(5) references student(stud_no));
/* 2022-06-19 15:04:32 [10 ms] */ 
create table book_(book_no int(5) primary key,book_name varchar(20),author varchar(2));
/* 2022-06-19 15:04:32 [10 ms] */ 
create table lss_rec_(iss_no int primary key,iss_date date,mem_no int(5) references membership(mem_no),book_no int(5) references book(book_no));
/* 2022-06-19 15:06:39 [7 ms] */ 
insert into student values (1001,"dev");
/* 2022-06-19 15:06:39 [3 ms] */ 
insert into student values (1002,"piyush");
/* 2022-06-19 15:06:40 [3 ms] */ 
insert into student values (1003,"priyanshu");
/* 2022-06-19 15:06:41 [3 ms] */ 
insert into student values (1004,"tarun");
/* 2022-06-19 15:06:41 [3 ms] */ 
insert into student values (1005,"ritik");
/* 2022-06-19 15:06:42 [3 ms] */ 
insert into student values (1006,"shivek");
/* 2022-06-19 15:06:42 [3 ms] */ 
insert into student values (1007,"kartikay");
/* 2022-06-19 15:06:43 [3 ms] */ 
insert into student values (1008,"mayank");
/* 2022-06-19 15:06:43 [4 ms] */ 
insert into student values (1009,"param");
/* 2022-06-19 15:06:44 [3 ms] */ 
insert into student values (1010,"aryan");
/* 2022-06-19 15:06:45 [3 ms] */ 
insert into student values (1011,"ayush");
/* 2022-06-19 15:07:25 [3 ms] */ 
insert into membership values(101,1001);
/* 2022-06-19 15:07:25 [4 ms] */ 
insert into membership values(102,1002);
/* 2022-06-19 15:07:26 [3 ms] */ 
insert into membership values(103,1003);
/* 2022-06-19 15:07:26 [3 ms] */ 
insert into membership values(104,1004);
/* 2022-06-19 15:07:27 [4 ms] */ 
insert into membership values(105,1005);
/* 2022-06-19 15:07:28 [3 ms] */ 
insert into membership values(106,1006);
/* 2022-06-19 15:07:29 [3 ms] */ 
insert into membership values(107,1007);
/* 2022-06-19 15:07:30 [3 ms] */ 
insert into membership values(108,1008);
/* 2022-06-19 15:07:31 [3 ms] */ 
insert into membership values(109,1009);
/* 2022-06-19 15:08:07 [3 ms] */ 
insert into membership values(110,1010);
/* 2022-06-19 15:08:08 [3 ms] */ 
insert into membership values(111,1011);
/* 2022-06-19 15:08:40 [3 ms] */ 
insert into book_ values (1,"Harry Potter","JK");
/* 2022-06-19 15:10:24 [5 ms] */ 
insert into lss_rec_ values(01,"1998-05-08",104,10);
/* 2022-06-19 15:10:27 [4 ms] */ 
insert into lss_rec_ values(02,"1998-03-08",102,9);
/* 2022-06-19 15:10:28 [2 ms] */ 
insert into lss_rec_ values(03,"1998-04-08",103,8);
/* 2022-06-19 15:10:28 [3 ms] */ 
insert into lss_rec_ values(04,"1998-06-08",101,7);
/* 2022-06-19 15:10:29 [3 ms] */ 
insert into lss_rec_ values(05,"1998-07-08",105,6);
/* 2022-06-19 15:10:29 [4 ms] */ 
insert into lss_rec_ values(06,"1998-08-08",106,5);
/* 2022-06-19 15:10:30 [2 ms] */ 
insert into lss_rec_ values(07,"1997-01-09",107,4);
/* 2022-06-19 15:10:30 [3 ms] */ 
insert into lss_rec_ values(08,"1996-08-10",108,3);
/* 2022-06-19 15:10:31 [4 ms] */ 
insert into lss_rec_ values(09,"1995-05-11",109,2);
/* 2022-06-19 15:10:31 [3 ms] */ 
insert into lss_rec_ values(010,"1995-05-12",110,1);
/* 2022-06-19 15:10:32 [3 ms] */ 
insert into lss_rec_ values(011,"1995-05-12",111,11);
/* 2022-06-19 15:14:42 [3 ms] */ 
select stud_name, mem_no from student s, membership m where m.stud_no=s.stud_no;
/* 2022-06-22 17:18:42 [9 ms] */ 
create table owns(driver_id varchar(10),regno varchar(10),primary key(driver_id,regno),foreign key(driver_id) references person(driver_id),foreign key(regno) references car(regno));
/* 2022-06-22 17:19:11 [8 ms] */ 
create table owns(driver_id varchar(10),regno varchar(10));
/* 2022-06-22 17:19:12 [3 ms] */ 
insert into owns values('D190','dl8213');
/* 2022-06-22 17:19:13 [2 ms] */ 
insert into owns values('D193','dl9113');
/* 2022-06-22 17:19:13 [3 ms] */ 
insert into owns values('D194','dl9116');
/* 2022-06-22 17:19:14 [2 ms] */ 
insert into owns values('D195','dl9616');
/* 2022-06-22 17:19:14 [2 ms] */ 
insert into owns values('D196','dl9617');
/* 2022-06-22 17:19:31 [1 ms] */ 
select * from owns;
