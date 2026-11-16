 create database student_management;
Query OK, 1 row affected (0.02 sec)

mysql> use student_management;
Database changed
mysql> create table students ( student_id int primary key,name varchar (30),age int,department varchar(30),marks float );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into students values(101,"ravi",21,"ai&ds",85),(102,"rahul",22,"cse",90),(103,"priya",21,"eee",75),(104,"ani",21,"mech",85),(105,"veda",20,"ai&ds",85);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from students;
+------------+-------+------+------------+-------+
| student_id | name  | age  | department | marks |
+------------+-------+------+------------+-------+
|        101 | ravi  |   21 | ai&ds      |    85 |
|        102 | rahul |   22 | cse        |    90 |
|        103 | priya |   21 | eee        |    75 |
|        104 | ani   |   21 | mech       |    85 |
|        105 | veda  |   20 | ai&ds      |    85 |
+------------+-------+------+------------+-------+
5 rows in set (0.01 sec)

mysql> update students set marks =95 where student_id =103;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> delete from students where student_id = 104;
Query OK, 1 row affected (0.01 sec)

mysql> select * from students;
+------------+-------+------+------------+-------+
| student_id | name  | age  | department | marks |
+------------+-------+------+------------+-------+
|        101 | ravi  |   21 | ai&ds      |    85 |
|        102 | rahul |   22 | cse        |    90 |
|        103 | priya |   21 | eee        |    95 |
|        105 | veda  |   20 | ai&ds      |    85 |
+------------+-------+------+------------+-------+
4 rows in set (0.00 sec)

mysql> select * from students where department ="ai&ds;
    "> ;
    "> ;;;;;;
    ">
    "> select * from students where department ="ai&ds";
    "> ;;
    "> ;^C
mysql> select * from students where department ="ai&ds";
+------------+------+------+------------+-------+
| student_id | name | age  | department | marks |
+------------+------+------+------------+-------+
|        101 | ravi |   21 | ai&ds      |    85 |
|        105 | veda |   20 | ai&ds      |    85 |
+------------+------+------+------------+-------+
2 rows in set (0.01 sec)

mysql> select * from students where marks > 85;
+------------+-------+------+------------+-------+
| student_id | name  | age  | department | marks |
+------------+-------+------+------------+-------+
|        102 | rahul |   22 | cse        |    90 |
|        103 | priya |   21 | eee        |    95 |
+------------+-------+------+------------+-------+
2 rows in set (0.00 sec)

mysql> select * from students order by marks desc;
+------------+-------+------+------------+-------+
| student_id | name  | age  | department | marks |
+------------+-------+------+------------+-------+
|        103 | priya |   21 | eee        |    95 |
|        102 | rahul |   22 | cse        |    90 |
|        101 | ravi  |   21 | ai&ds      |    85 |
|        105 | veda  |   20 | ai&ds      |    85 |
+------------+-------+------+------------+-------+
4 rows in set (0.00 sec)

mysql> select distinct department from students;
+------------+
| department |
+------------+
| ai&ds      |
| cse        |
| eee        |
+------------+
3 rows in set (0.01 sec)

mysql> select count(*) from students where department = "ai&ds";
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

mysql> select avg(marks) from students;
+------------+
| avg(marks) |
+------------+
|      88.75 |
+------------+
1 row in set (0.00 sec)

mysql> select max(marks) from students;
+------------+
| max(marks) |
+------------+
|         95 |
+------------+
1 row in set (0.01 sec)

mysql> select min(marks from students;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from students' at line 1
mysql> select min(marks) from students;
+------------+
| min(marks) |
+------------+
|         85 |
+------------+
1 row in set (0.00 sec)

mysql> select * from students where name like 'r%';
+------------+-------+------+------------+-------+
| student_id | name  | age  | department | marks |
+------------+-------+------+------------+-------+
|        101 | ravi  |   21 | ai&ds      |    85 |
|        102 | rahul |   22 | cse        |    90 |
+------------+-------+------+------------+-------+
2 rows in set (0.01 sec)

mysql> select * from students where name like 'a%';
Empty set (0.00 sec)

mysql> selectdepartment,count(*) from students group by department;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selectdepartment,count(*) from students group by department' at line 1
 ysql> select department,count(*) from students group by department;
+------------+----------+
| department | count(*) |
+------------+----------+
| ai&ds      |        2 |
| cse        |        1 |
| eee        |        1 |
+------------+----------+
3 rows in set (0.00 sec)

mysql> select * from students where marks between 80 and 90;
+------------+-------+------+------------+-------+
| student_id | name  | age  | department | marks |
+------------+-------+------+------------+-------+
|        101 | ravi  |   21 | ai&ds      |    85 |
|        102 | rahul |   22 | cse        |    90 |
|        105 | veda  |   20 | ai&ds      |    85 |
+------------+-------+------+------------+-------+
3 rows in set (0.01 sec)

mysql> alter table students add email varchar(100);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
ERROR 1146 (42S02): Table 'student_management.student' doesn't exist
mysql> desc students;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| student_id | int          | NO   | PRI | NULL    |       |
| name       | varchar(30)  | YES  |     | NULL    |       |
| age        | int          | YES  |     | NULL    |       |
| department | varchar(30)  | YES  |     | NULL    |       |
| marks      | float        | YES  |     | NULL    |       |
| email      | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
6 rows in set (0.02 sec)
mysql> select * from students where department = "ai&ds" and marks >80;
+------------+------+------+------------+-------+-------+
| student_id | name | age  | department | marks | email |
+------------+------+------+------------+-------+-------+
|        101 | ravi |   21 | ai&ds      |    85 | NULL  |
|        105 | veda |   20 | ai&ds      |    85 | NULL  |
+------------+------+------+------------+-------+-------+
2 rows in set (0.00 sec)

mysql> select * from students where department = 'cse' or department = "cse";
+------------+-------+------+------------+-------+-------+
| student_id | name  | age  | department | marks | email |
+------------+-------+------+------------+-------+-------+
|        102 | rahul |   22 | cse        |    90 | NULL  |
+------------+-------+------+------------+-------+-------+
1 row in set (0.00 sec)

mysql> select * from students where department in ("cse","ai&ds");
+------------+-------+------+------------+-------+-------+
| student_id | name  | age  | department | marks | email |
+------------+-------+------+------------+-------+-------+
|        101 | ravi  |   21 | ai&ds      |    85 | NULL  |
|        102 | rahul |   22 | cse        |    90 | NULL  |
|        105 | veda  |   20 | ai&ds      |    85 | NULL  |
+------------+-------+------+------------+-------+-------+
3 rows in set (0.00 sec)

mysql> select department,count(*) from students group by department having count(*) > 1;
+------------+----------+
| department | count(*) |
+------------+----------+
| ai&ds      |        2 |
+------------+----------+
1 row in set (0.01 sec)

mysql> select * from students where marks > (select avg(marks) from students)
    -> ;
+------------+-------+------+------------+-------+-------+
| student_id | name  | age  | department | marks | email |
+------------+-------+------+------------+-------+-------+
|        102 | rahul |   22 | cse        |    90 | NULL  |
|        103 | priya |   21 | eee        |    95 | NULL  |
+------------+-------+------+------------+-------+-------+
2 rows in set (0.01 sec)
