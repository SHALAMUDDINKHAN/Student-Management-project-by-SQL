CREATE TABLE students(
Enrollment INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Registration int NOT NULL,
S_Name varchar(30),
Branch varchar(30) NOT NULL,
CGPA float,
placed varchar(10),
mobile varchar(10)NOT NULL
);
alter table Students add age int;
alter table Students modify Enrollment varchar(10);
desc Students;
#DROP TABLE students;
SELECT * FROM Students;
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UCE078',2012293,'SHALAMUDDIN KHAN','CIVIL ENGINEERING',8.58,'NO','9812345567',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UCE090',2012294,'SWARUP ROY','CIVIL ENGINEERING',7.88,'NO','9863421264',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UCE040',201224,'DIBAKAR BANIK','CIVIL ENGINEERING',8.84,'NO','9615649981',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UEC073',2012283,'NILADRI SHEKHAR BANIK','ELECTRONICS AND COMUNICATION',8.08,'NO','9812345567',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UEI073',20122890,'KARNAJIT BANIK','ELECTRONICS AND COMUNICATION',8.08,'NO','9812345567',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UEI048',2012456,'BHULAN DEB','ELECTRONICS AND INSTRUMENT',8.54,'YES','9856324859',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UEE050',2012080,'SAKHIL HOSSAIN','ELECTRICAL ENGINEERING',7.93,'NO','9863027897',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UME019',2012177,'KAPIL AHMED','MECHANICALENGINEERING',7.59,'NO','7005198379',22);

INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UCE073',2012454,'MUSTAQE AHMED','CIVIL ENGINEERING',8.04,'NO','9856324843',24);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UPE048',2012450,'SHAHID ANWAR MAMUD','PRODUCTION ENGINEERING',8.54,'NO','9856324822',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UCE003',2012466,'SAIKAT DAS','CIVIL ENGINEERING',8.0,'YES','9856324850',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UEC060',2012200,'DEEP BANIK','ELECTRONICS AND COMUNICATION',7.9,'YES','9812345987',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UCE064',2012476,'ANIKET GHOSH','CIVIL ENGINEERING',7.5,'NO','9856324899',22);
INSERT INTO students(Enrollment,Registration,S_Name,Branch,CGPA,placed,mobile,age)
VALUES ('20UCE063',2012470,'MD PARVEJ','CIVIL ENGINEERING',8.85,'NO','9862789100',22);
update STUDENTs SET branch ='ELECTRONICS AND INSTRUMENT'
where Enrollment='20UEI073'; 
#UPDATING MD PERVES'S  placed column
update STUDENTs SET Placed ='YES'
where Enrollment='20UCE063'; 
SELECT * FROM Students;
#1.PERSON WHO GOT PLACED
SELECT*FROM students WHERE placed='YES';

#2.group by age
select age,count(age) from students group by age;

#3.person whose cgpa greater than 8
select*from students where CGPA>8.0;

#4.STUDENTS FROM PARTICULAR BRENCES present: 
select s_name,branch from students WHERE branch ='CIVIL ENGINEERING';
#5.students from same branches
select branch,s_name from students order by branch asc;
#5.no of students from ece
select s_name,branch from students WHERE branch ='ELECTRONICS AND COMUNICATION';
#6.no of students from ece
SELECT count(*)from students where branch='CIVIL ENGINEERING';
#7.students present at respective department
select branch,count(*) from students group by branch having count(*);
#find branch by enrollment 'like'
select *from students where Enrollment like '___ce%';
#8.NO of students
select count(Enrollment)from studentS;
#9.MAX CGPA
select * from students where branch='civil engineering' && CGPA in (SELECT max(cgpa) from students group by BrancH);
#OR
SELECT * FROM STUDENTS WHERE CGPA IN ( SELECT MAX(CGPA) FROM STUDENTS where branch ='civil engineering');

#10.SECON MAX CGPA OF CIVIL

SELECT * FROM STUDENTS WHERE BRANCH='CIVIL ENGINEERING' && CGPA in (SELECT MAX(CGPA) FROM STUDENTS where CGPA <> (SELECT MAX(CGPA) FROM STUDENTS ));
#OR &BEST ESAY ALMOST SAME
SELECT * FROM STUDENTS WHERE CGPA IN ( SELECT MAX(CGPA) FROM STUDENTS where CGPA!=(SELECT MAX(CGPA) FROM STUDENTS where branch ='civil engineering'));

#NO OF STUDENTS IN EACH BRANCH
select branch,count(branch)from studentS group by branch
order by count(branch) desc;

#11.BRANCH WITH MAX STUDENTS
select branch,count(branch)from studentS group by branch
order by count(branch) desc
limit 0,1;
#12.BRANCH WITHB MINIMUM STUDENTS
select branch,count(branch)from studentS group by branch
order by count(branch)
limit 0,1;
#13.BRANCH CONTAINING MAX STUDENTS
select branch from studentS group by branch
order by count(branch) desc
limit 0,1;
#14. sortOut the students by their CGPA in Descending order
SELECT * FROM Students order by CGPA DESC;
# 15.soretout the students according to their placed condition
 
SELECT * FROM Students order by placed desc;
# 16.
create table Students_Hostel(
Enrollment int NOT NULL AUTO_INCREMENT PRIMARY KEY references students(Enrollment),
Registration int NOT NULL,
S_Name varchar(30),
Branch varchar(30) NOT NULL,
mobile varchar(10)NOT NULL,
Hotsel varchar(12),
Block_name varchar(5),
Room_Number int,
Mess varchar(10)
);
alter table Students_Hostel modify Enrollment varchar(10);
desc Students_Hostel;
drop table Students_Hostel;
Alter table Students_Hostel
modify Room_Number varchar(10);
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UCEO78',2012293,'SHALAMUDDIN KHAN','CIVIL ENGINEERING','9812345567','ARYABHATTA','D','G-26','NORTHERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UCE090',2012294,'SWARUP ROY','CIVIL ENGINEERING','9863421264','ARYABHATTA','D','G-23','ESTERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UCE040',201224,'DIBAKAR BANIK','CIVIL ENGINEERING','9615649981','ARYABHATTA','D','G-27','NORTHERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UCE073',2012454,'MUSTAQE AHMED','CIVIL ENGINEERING','9856324843','ARYABHATTA','G','S-40','NORTHERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UCE063',2012470,'MD PARVEJ','CIVIL ENGINEERING','9862789100','ARYABHATTA','F','f-26','NORTHERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UPE048',2012450,'SHAHID ANWAR MAMUD','PRODUCTION ENGINEERING','9856324822','ARYABHATTA','F','G-32','ESTERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UEE050',2012080,'SAKHIL HOSSAIN','ELECTRICAL ENGINEERING','9863027897','ARYABHATTA','F','G-33','ESTERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UCE003',2012466,'SAIKAT DAS','CIVIL ENGINEERING','9856324850','ARYABHATTA','G','G-20','ESTERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UEC060',2012200,'DEEP BANIK','ELECTRONICS AND COMUNICATION','9812345987','ARYABHATTA','F','G-21','ESTERN');

INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UEI048',2012456,'BHULAN DEB','ELECTRONICS AND INSTRUMENT','9856324859','ARYABHATTA','D','G-21','ESTERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UME019',2012177,'KAPIL AHMED','MECHANICALENGINEERING','7005198379','ARYABHATTA','D','G-19','ESTERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UEI073',20122890,'KARNAJIT BANIK','ELECTRONICS AND INSTRUMENT','9812345567','ARYABHATTA','D','G-22','ESTERN');
INSERT INTO Students_Hostel(Enrollment,Registration,S_Name,Branch,mobile,Hotsel,Block_name,Room_Number,Mess)
VALUES ('20UEC073',2012283,'NILADRI SHEKHAR BANIK','ELECTRONICS AND COMUNICATION','9812345566','ARYABHATTA','D','G-24','ESTERN');
select*from Students_Hostel; 
update Students_Hostel SET Enrollment ='20UCE078'
where Enrollment='20UCEO78'; 
#1 students present in each block
select Block_name,count(Block_name) from Students_Hostel group by Block_name;
#2. students in same block
select  Block_name ,S_Name from Students_Hostel order by Block_name asc;
#3. students present in block d,g,f
select S_Name from Students_Hostel where Block_name= 'D';
select S_Name from Students_Hostel where Block_name= 'g';
select S_Name from Students_Hostel where Block_name= 'f';
#4.students who took Northern mess
select S_Name,mess from Students_Hostel where mess='NORTHERN';
#5.students who took Estern mess
select S_Name,mess from Students_Hostel where mess='ESTERN';
#6.group the students by their mess
select * from Students_Hostel order by mess;
#7.select students who is not hosteler
select *from students where Enrollment NOT IN(select Enrollment from Students_Hostel);
#8. students from civil and block d
select S_Name,Block_name from Students_Hostel where branch='CIVIL ENGINEERING' AND Block_name='d';
#9.acess students by room_number and block
select S_Name,Block_name from Students_Hostel where Block_name='d' && Room_Number='G-26';
#10.


