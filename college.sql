create database college;
show databases;
use college;
create table Courses(CID int unique key, courseName varchar(255), courseType varchar(255));
create table Subjects(SUID int primary key, SubName varchar(255),CID int unique key,courseYear int,Sem varchar(255));
create table Attendance(AID int primary key, Att_date date,religion varchar(255),Rollno int,ID int);
create table Application(ID int primary key auto_increment ,StudName varchar(255),Father varchar(255), CID int unique key, Rollno int);
alter table Application add MotherName varchar(255);
select * from Application;
desc Attendance;
insert into Application(StudName,Father,CID,Rollno,MotherName) values('John423','Thomas765',1005,5,'Sonia76');
insert into Courses(CID,courseName,courseType) values(1004,'courseName44','ctype4');
insert into Subjects(SUID,SubName,CID,courseYear,Sem) values(3,'Hindi',1003,2021,'Semester11');
insert into Attendance(AID,Att_date,religion,Rollno,ID) values(3,'2021-11-02','Bhudhism',3,2);
select * from Attendance where Att_date='2021-11-02';
select CID,courseName,courseType from Courses;
select distinct courseType from Courses;
select * from Application where Rollno between 1 and 3;
select * from Application where StudName like 'n%';
select * from Subjects where SubName in ('English');
select * from Subjects where CID=1001 and courseYear=2021;
select * from Subjects where CID=1001 or subName='Hindi';
select * from Subjects where not CID=1001;
select * from Application;
select * from Application order by Rollno desc;
update Application set Father='Raj' where ID=2;
delete from Subjects where SUID=2;
select * from Application where ID limit 2;
select min(rollno) from Application;
select count(ID) from Application where Rollno>1;
select sum(Rollno) from Application;
select * from Application;
select * from Courses;
select a.*,b.* from Application as a inner join Courses as b on a.CID=b.CID;
select a.*,b.* from Courses as a left join Application as b on a.CID=b.CID;
select * from Courses as c 





