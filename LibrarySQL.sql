create database LIBRARY;
use Library;

create table Publisher
(
id int ,
name varchar(30) not null ,
addr varchar(30) not null ,
telphone varchar(11) not null,
email varchar(35) not null
primary key(id)
);

create table Library
(
id int Primary key ,
place varchar(50) unique,
subj varchar(50) not null
);

create table Book
(
isbn int ,
name varchar(50)not null,
auther varchar(50)not null,
yearOfPublish int not null,
pages int not null,
edition varchar(20),
id int primary key ,
id_library int foreign key references Library(id),
id_publisher int foreign key references Publisher(id)
);

create table Student
(
id_stu int primary key,
fname varchar(15) not null,
lname varchar(15) not null,
dept varchar(15) not null,
yearOfStudy int not null,
);

create table Student_Book
(
stuid int  constraint stu_fk foreign key references student(id_stu),
bookid int constraint book_fk foreign key references book(id),
constraint st_bo primary key(stuid,bookid) ,
startdate date not null ,
enddate date not null 
);

insert into Publisher(id,name,addr,email,telphone) values('1','ibn-katheer','lebanon','info@ibn-katheer.com','03-204459');

insert into Library(id,place,subj)values('1','fs column from left','Design');

insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('1','introduction to java','james macron','12154201','2000','11','500','two','5');

insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('14251','mahmoud','zaki','CS','1');

insert into Student_Book values (14251,1,'11-11-2011','12-11-2011')

select * from book
select * from Student  
select * from Student_Book
select * from Library
select * from Publisher