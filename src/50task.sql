create table groups
(
    id         serial primary key,
    group_name varchar(50)
);
create table courses
(
    id          serial primary key,
    course_name varchar(50),
    start_date  varchar(50),
    groups_id   int references groups (id)
);
create table lessons
(
    id          serial primary key,
    lesson_name varchar(50),
    course_id   int references courses (id)
);
create table mentors
(
    id             serial primary key,
    first_name     varchar(50),
    last_name      varchar(50),
    gender         varchar(50),
    email          varchar(50),
    specialization varchar(50),
    experience     int,
    course_id      int references courses (id)
);
create table students
(
    id            serial primary key,
    first_name    varchar(50),
    last_name     varchar(50),
    gender        varchar(50),
    email         varchar(50),
    date_of_birth date,
    group_id      int references groups (id)
);
insert into groups(group_name)
values ('Java 9'),
       ('JS 9'),
       ('Java 12'),
       ('JS 12'),
       ('Java 13'),
       ('JS 13');
insert into courses (course_name, start_date, groups_id)
values ('Java 9 core', '2023-01-03', 1),
       ('JS 9 core', '2023-01-03', 2),
       ('Java 12 core', '2023-10-03', 3),
       ('JS 12 core', '2023-10-03', 4),
       ('Java 13 core', '2024-01-08', 5),
       ('JS 13 core', '2024-01-08', 6),
       ('Technical English', '2024-01-08', 1),
       ('Python', '2024-01-08', 6);
insert into lessons(lesson_name, course_id)
values ('Loops', 1),
       ('HTML', 2),
       ('Methods', 3),
       ('CSS', 4),
       ('Collections', 5),
       ('React', 6);
insert into mentors (first_name, last_name, gender, email, specialization, experience, course_id)
values ('Datka', 'Mamatzhanova', 'Female', 'datka@gmail.com', 'java', 2, 1),
       ('Ulan', 'Kubanychbekov', 'Male', 'ulan@gmail.com', 'java', 3, 3),
       ('Aizat', 'Duisheeva', 'Female', 'aizat@gmail.com', 'java', 1, 5),
       ('Elizar', 'Aitbek uulu', 'Male', 'elizar@gmail.com', 'js', 1, 2),
       ('Aziat', 'Abdimalikov', 'Male', 'aziat@gmail.com', 'js', 1, 4),
       ('Alisher', 'Jumanov', 'Male', 'alisher@gmail.com', 'js', 1, 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (1, 'Knox', 'Jacquot', 'kjacquot0@addthis.com', 'Male', '2004-04-12', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (2, 'Dewain', 'Hunt', 'dhunt1@trellian.com', 'Male', '2003-04-13', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (3, 'Jarrett', 'Iianon', 'jiianon2@chronoengine.com', 'Male', '2005-05-05', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (4, 'Merry', 'Niezen', 'mniezen3@canalblog.com', 'Male', '1999-04-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (5, 'Nollie', 'Pellingar', 'npellingar4@usgs.gov', 'Female', '2003-05-06', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (6, 'Eveleen', 'Moukes', 'emoukes5@amazon.co.uk', 'Female', '1996-03-03', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (7, 'Nollie', 'Becker', 'nbecker6@is.gd', 'Male', '1994-02-04', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (8, 'Nadine', 'Robilart', 'nrobilart7@walmart.com', 'Female', '2000-06-06', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (9, 'Dex', 'Prugel', 'dprugel8@arizona.edu', 'Male', '2001-03-04', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (10, 'Phyllis', 'Baroche', 'pbaroche9@state.gov', 'Female', '2004-04-04', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (11, 'Bernadette', 'Dulson', 'bdulsona@altervista.org', 'Female', '2004-04-04', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (12, 'Earlie', 'Pledge', 'epledgeb@jimdo.com', 'Male', '1993-12-04', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (13, 'Luigi', 'Standish', 'lstandishc@army.mil', 'Male', '1998-11-13', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (14, 'Cody', 'McLeoid', 'cmcleoidd@yahoo.com', 'Male', '2000-10-10', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (15, 'Heall', 'Dolligon', 'hdolligone@squidoo.com', 'Male', '2003-09-09', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (16, 'Isiahi', 'Somerscales', 'isomerscalesf@eepurl.com', 'Male', '1995-05-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (17, 'Matthieu', 'Spolton', 'mspoltong@so-net.ne.jp', 'Male', '1995-03-30', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (18, 'Esme', 'Brockway', 'ebrockwayh@hexun.com', 'Female', '1997-08-08', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (19, 'Erroll', 'Cutforth', 'ecutforthi@wisc.edu', 'Male', '2002-03-30', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (20, 'Gordon', 'Thieme', 'gthiemej@japanpost.jp', 'Male', '1994-04-04', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (21, 'Dom', 'Arnecke', 'darneckek@google.fr', 'Male', '2000-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (22, 'Raven', 'Yarrall', 'ryarralll@vimeo.com', 'Female', '2009-05-05', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (23, 'Emery', 'McSporon', 'emcsporonm@reverbnation.com', 'Male', '1990-12-20', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (24, 'Der', 'Caville', 'dcavillen@csmonitor.com', 'Male', '2003-03-20', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (25, 'Erich', 'Lorroway', 'elorrowayo@bizjournals.com', 'Male', '2000-08-07', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (26, 'Edan', 'Brayne', 'ebraynep@prweb.com', 'Male', '2008-12-23', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (27, 'Garald', 'Puddle', 'gpuddleq@taobao.com', 'Male', '1990-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (28, 'Orelee', 'Hoggan', 'ohogganr@e-recht24.de', 'Female', '1999-03-29', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (29, 'Dion', 'Kepp', 'dkepps@boston.com', 'Female', '2000-12-13', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (30, 'Winna', 'Ganders', 'wganderst@artisteer.com', 'Female', '2001-11-11', 6);
--Group:
--Получите все записи таблицы groups;
select *
from groups;
--Получите общее количество записей таблицы groups
select count(*) as total_groups
from groups;
--Выведите группы их курсы
select *
from groups g
         inner join courses c on g.id = c.groups_id;
--Выведите курсы групп у которых курс начался с 2020-1-1 по 2023-3-3
select *
from groups g
         inner join courses c on g.id = c.groups_id
where c.start_date between '2020-01-01' and '2023-03-03';
--Выведите имена, дату рождения студентов , которые родились с 1980-1-1 по 2004-12-12, и название группы
select first_name, date_of_birth, g.group_name
from students s
         inner join groups g on s.id = g.id
where date_of_birth between '1980-1-1' and '2004-12-12';
--Выведите суммарный возраст всех студентов курса 'Python'
select sum(extract(YEAR FROM NOW()) - extract(year from s.date_of_birth))
from courses c
         inner join students s on s.id = c.id
         inner join groups g on g.id = c.groups_id
where c.course_name = 'Python';
select sum(extract(year from now()) - extract(year from s.date_of_birth))
from courses c
         inner join groups g on g.id = c.groups_id
         inner join students s on g.id = s.group_id
where c.course_name = 'Python';
--Вывести полное имя, возраст, почту студентов и название группы, где айди группы равен 3
select first_name, last_name, date_of_birth, email, g.group_name
from students s
         inner join groups g on g.id = s.group_id
where g.id in (3);
--Вывести все курсы одной группы, где название группы 'Java-12'
select *
from groups g
         inner join courses c on g.id = c.groups_id
where g.group_name = 'Java 13';
--Вывести название всех групп и количество студентов в группе
SELECT g.group_name, COUNT(*) as student_count
FROM groups g
         INNER JOIN students s ON g.id = s.group_id
GROUP BY g.group_name;
--Вывести название всех групп и количество студентов в группе, если в группе больше 4 студентов
SELECT g.group_name, COUNT(*) as student_count
FROM groups g
         INNER JOIN students s ON g.id = s.group_id
GROUP BY g.group_name
HAVING COUNT(*) > 4;
--Отсортируйте имена студентов группы по убыванию, где айди группы равна 4 и выведите айди студента, имя, пол и название группы
select s.id, s.first_name, s.gender, g.group_name
from groups g
         inner join students s on g.id = s.group_id
where g.id = 4
order by s.first_name desc;
--Course

select *
from courses;
-- Вывести все уроки курса 'Technical English'
select *
from lessons l
         inner join courses c on l.id = c.id
where course_name = 'Java 13 core';
-- Вывести количество всех студентов курса id = 4
select count(*) as total_students
from courses c
         inner join groups g on c.groups_id = g.id
         inner join students s on g.id = s.group_id
where c.id = 4;
-- Вывести имя, почту, специализацию ментора и название курса где курс айди равен 2
select first_name, email, specialization, c.course_name
from mentors
         inner join courses c on c.id = mentors.course_id
where c.id = 2;
-- Посчитить сколько менторов в каждом курсе
SELECT course_name, COUNT(m.id) AS mentors_count
FROM mentors m
         inner join courses c on c.id = m.course_id
GROUP BY course_name;
-- Сгруппируйте и посчитайте менторов в каждом курсе и выведите только те курсы, где в курсе больше 2 менторов
select c.course_name, count(m.id)
from courses c
         inner join mentors m on c.id = m.course_id
group by course_name
having count(m.id) < 2;
-- Вывести название, дату и полное имя ментора, все курсы которые начинаются с 2020-1-1 по 2023-3-3
select c.course_name, start_date, concat(m.first_name, ' ', m.last_name) as full_name
from courses c
         join mentors m on c.id = m.course_id
where start_date between '2020-01-01' and '2023-03-03';
-- Вывести имя, почту, возраст студентов курса 'Java'
select s.first_name, s.email, s.date_of_birth
from courses
         inner join groups g on courses.groups_id = g.id
         inner join students s on g.id = s.group_id
where course_name = 'Java 13 core';
-- Вывести тот курс у где нет ментора
select *
from courses c
         inner join mentors m on c.id = m.course_id
where m.id is null;
-- Вывести тот курс у где нет уроков
select *
from courses c
         inner join groups g on g.id = c.groups_id
         inner join lessons l on c.id = l.course_id
where l.id is null;
-- Вывести тот курс у где нет студентов
select *
from courses c
         inner join groups g on c.groups_id = g.id
         inner join students s on g.id = s.group_id
where s.id is null;
--Students:
--Вывести общее количество студентов
select count(*)
from students;
--Вывести имя, почту и пол студента, айди группы которого равна 2
select first_name, email, gender
from students
         inner join groups g on g.id = students.group_id
where g.id = 2;
--Вывести группу студента, айди которого равна 4
select s.id, s.first_name, g.group_name
from students s
         inner join groups g on g.id = s.group_id
where s.id = 4;
--Сгруппируйте студентов по gender и выведите общее количество gender
select gender, count(*)
from students
group by gender;
--Найдите студента с айди 8 и обновите его данные
update students
set first_name    = ' Adyl',
    last_name     = 'Tolomushev',
    gender        = 'Male',
    email         = 'adyl@gmail.com',
    date_of_birth = '2005-02-17'
where id = 8;
--Найдите самого старшего студента курса, айди курса которого равна 5
select s.first_name, s.date_of_birth
from groups g
         inner join students s on g.id = s.group_id
         inner join courses c on g.id = c.groups_id
where c.id = 5
order by date_of_birth desc
    limit 1;
--Добавьте unique constraint email в столбец таблицы students
alter table students
    add unique (email);
ALTER TABLE students
    ADD CONSTRAINT unique_email UNIQUE (email);
--Добавьте check constraint gender в столбец таблицы mentors
alter table mentors
    add constraint check_gender check ( gender in ('Male', 'Female') );
--ALTER TABLE students
--  ADD CONSTRAINT check_age CHECK (age > 18);
--Добавьте check constraint gender в столбец таблицы students
alter table students
    add constraint check_gender check ( gender in ('Male', 'Female') );

--Mentors:
--Вывести средний возраст всех менторов
--Вывести имя, почту и специализацию ментора группы 'Java-9'
select m.first_name, m.email, m.specialization
from courses c
         inner join mentors m on c.id = m.course_id
         inner join groups g on g.id = c.groups_id
where g.group_name = 'Java 9';
--Вывести всех менторов, чей опыт превышает 1 год
select *
from mentors
where experience > 1;
--Вывести ментора у которого нет курса
select *
from mentors m
         inner join courses c on c.id = m.course_id
where m.id is null;
--Вывести айди, имя ментора и его студентов
select m.id, m.first_name, m.last_name, s.id, s.first_name
from mentors m
         inner join courses c on c.id = m.course_id
         inner join groups g on g.id = c.groups_id
         inner join students s on g.id = s.group_id;
--Посчитать сколько студентов у каждого ментора, и вывести полное имя ментора и количество его студентов
select concat(m.first_name, ' ', m.last_name) as full_name, count(s.id)
from mentors m
         inner join courses c on c.id = m.course_id
         inner join groups g on g.id = c.groups_id
         inner join students s on g.id = s.group_id
group by concat(m.first_name, ' ', m.last_name);
--Вывести ментора у которого нет студентов
select *
from mentors m
         inner join courses c on c.id = m.course_id
         inner join groups g on g.id = c.groups_id
         inner join students s on g.id = s.group_id
where s.id is null;
--Вывести ментора у которого студентов больше чем 2
select concat(m.first_name, ' ', m.last_name) as full_name, count(s.id)
from mentors m
         inner join courses c on c.id = m.course_id
         inner join groups g on g.id = c.groups_id
         inner join students s on g.id = s.group_id

group by concat(m.first_name, ' ', m.last_name)
having count(s.id) > 2;
--Вывести курсы ментора с айди 5
select *
from courses c
         inner join mentors m on c.id = m.course_id
where c.id = 5;
-- 10.Вывести все уроки ментора, айди которого равен 5
select *
from lessons l
         inner join courses c on c.id = l.course_id
         inner join mentors m on c.id = m.course_id
where m.id = 5;
--Lessons:
--Вывести все уроки
select *
from lessons;
--2.Получить все уроки студента, айди которого равен 2
select s.id, s.first_name, l.lesson_name
from students s
         inner join groups g on g.id = s.group_id
         inner join courses c on g.id = c.groups_id
         inner join lessons l on c.id = l.course_id
where s.id = 2;
-- 3.Посчитать уроки каждой группы и вывести название группы и количество уроков, где количество уроков больше чем 2
select count(l.id), g.group_name
from lessons l
         inner join courses c on c.id = l.course_id
         inner join groups g on g.id = c.groups_id
group by g.group_name
having count(l.id) > 2;
-- 4.Отсортировать уроки студента по названию, где айди студента равна 7
select *
from lessons l
         inner join courses c on c.id = l.course_id
         inner join groups g on g.id = c.groups_id
         inner join students s on g.id = s.group_id
where s.id = 7
order by l.lesson_name;
-- 5.Получить все уроки курса, где название курса 'Python kids'
select *
from lessons
         inner join courses c on c.id = lessons.course_id
where c.course_name = 'Java 12 core';
-- 6.Получить все уроки ментора, айди которого равен 5
select *
from lessons
         inner join courses c on c.id = lessons.course_id
         inner join mentors m on c.id = m.course_id
where m.id = 5;

