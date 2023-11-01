drop table if exists groups;
create table groups (
 id SERIAL primary key,
 name varchar(50) not null
);

drop table if exists students;
create table students (
 id SERIAL primary key,
 fullname varchar(150) not null,
 group_id integer references groups(id)
   on delete cascade
);

drop table if exists teachers;
create table teachers (
 id SERIAL primary key,
 fullname varchar(150) not null
);

drop table if exists subjects;
create table subjects (
 id SERIAL primary key,
 name varchar(175) not null,
 teacher_id integer references teachers(id)
   on delete cascade
);

drop table if exists grades;
create table grades (
 id SERIAL primary key,
 student_id integer references students(id)
 on delete cascade,
 subject_id integer references subjects(id)
 on delete cascade,
 grade integer check (grade >= 0 and grade <= 1000),
 grade_date date not null
);