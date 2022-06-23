marks (ssid int, name VARCHAR (25),maths int, c_language int, dbms int, wbp int, es int);
DESC MARKS;
create table person(driver_id varchar(10),name varchar(10),address varchar(10),primary key(driver_id));
 create table car(regno varchar(10),model varchar(10),year int,primary key(regno));
create table accident(report_number int,accd_date date,location varchar(10),primary key(report_number));
 create table owns(driver_id varchar(10),regno varchar(10),primary key(driver_id,regno),foreign key(driver_id) references person(driver_id),foreign key(regno) references car(regno));
 create table participated(driver_id varchar(10),regno varchar(10),report_number int,damage_amount int,primary key(driver_id,regno,report_number),foreign key(driver_id) references person(driver_id),foreign key(regno) references car(regno),foreign key(report_number) references accident(report_number));
insert into person values('D192','dev','delhi');
insert into person values('D193','ritik','delhi');
insert into person values('D194','tarun','delhi');
insert into person values('D195','priyanshu','delhi');
insert into person values('D196','karan','delhi');
insert into car values('DL8108','polo gt',2022);
insert into car values('DL0007','i20',2022);
insert into car values('DL287','thar',2017);
insert into car values('DL6557','contessa',2012);
insert into accident values(1234,'2022-07-17','Delhi');
insert into accident values(1235,'2022-06-19','delhi');
insert into accident values(1236,'2022-01-15','goa');
insert into accident values(1237,'2022-01-12','sikkim');
insert into accident values(1238,'2021-03-18','manali');
insert into owns values('D190','dl8213');
insert into owns values('D193','dl9113');
insert into owns values('D194','dl9116');
insert into owns values('D195','dl9616');
insert into owns values('D196','dl9617');
select count(0) as Totalcars from car c,participated p where c.regno=p.regno and c.model='i20';
create table student(stud_no int(5) primary key,stud_name varchar(15));
create table membership(mem_no int(5) primary key,stud_no int(5) references student(stud_no));
create table book_(book_no int(5) primary key,book_name varchar(20),author varchar(2));
create table lss_rec_(iss_no int primary key,iss_date date,mem_no int(5) references membership(mem_no),book_no int(5) references book(book_no));
insert into student values (1001,"dev");
insert into student values (1002,"piyush");
insert into student values (1003,"priyanshu");
insert into student values (1004,"tarun");
insert into student values (1005,"ritik");
insert into student values (1006,"shivek");
insert into student values (1007,"kartikay");
insert into student values (1008,"mayank");
insert into student values (1009,"param");
insert into student values (1010,"aryan");
insert into student values (1011,"ayush");
insert into membership values(101,1001);
insert into membership values(102,1002);
insert into membership values(103,1003);
insert into membership values(104,1004);
insert into membership values(105,1005);
insert into membership values(106,1006);
insert into membership values(107,1007);
insert into membership values(108,1008);
insert into membership values(109,1009);
insert into membership values(110,1010);
insert into membership values(111,1011);
insert into book_ values (1,"Harry Potter","JK");
insert into book_ values (2,"Story of my life","Helen Keller");
insert into book_ values (3,"Tell me a story","Ravinder Singh");
insert into book_ values (4,"Can love happen","Ravinder Singh");
insert into book_ values (5,"Your dreams are mine now","Ravinder Singh");
insert into book_ values (6,"the perfect us","Durjoy Dutta");
insert into book_ values (7,"Someone like u","Durjoy Dutta");
insert into book_ values (8,"The open door","Helen Keller");
insert into book_ values (9,"Five points someone","Chetan Bhagat");
insert into book_ values (10,"One indian girl","Chetan Bhagat");
insert into book_ values (11,"DBMS","Elmarsi & Navathe");
insert into lss_rec_ values(01,"1998-05-08",104,10);
insert into lss_rec_ values(02,"1998-03-08",102,9);
insert into lss_rec_ values(03,"1998-04-08",103,8);
insert into lss_rec_ values(04,"1998-06-08",101,7);
insert into lss_rec_ values(05,"1998-07-08",105,6);
insert into lss_rec_ values(06,"1998-08-08",106,5);
insert into lss_rec_ values(07,"1997-01-09",107,4);
insert into lss_rec_ values(08,"1996-08-10",108,3);
insert into lss_rec_ values(09,"1995-05-11",109,2);
insert into lss_rec_ values(010,"1995-05-12",110,1);
insert into lss_rec_ values(011,"1995-05-12",111,11);
SELECT * from student;

SELECT * from lss_rec_;
SELECT * from book_;
select stud_name, mem_no from student s, membership m where m.stud_no=s.stud_no;

SELECT driver_id,regno FROM owns;