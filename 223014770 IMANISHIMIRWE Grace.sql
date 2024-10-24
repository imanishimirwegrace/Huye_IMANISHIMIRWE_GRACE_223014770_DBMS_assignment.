Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 96
Server version: 8.3.0 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| am_ltd             |
| huye               |
| information_schema |
| inyange ltd        |
| mysql              |
| performance_schema |
| ruhande            |
| sys                |
+--------------------+
8 rows in set (0.00 sec)

mysql> use ruhande;
Database changed
mysql> insert into ngoma VALUES(6, 'hirwa','eva','f','eastern','kirehe','kirehe','runyombyi','hirwa@gmail.com','0783456789');
Query OK, 1 row affected (0.02 sec)

mysql> insert into ngoma VALUES(6, 'benimana','eularie','f','eastern','kirehe','kabuye','runyombyi','hira@gmail.com','0783456779');
Query OK, 1 row affected (0.00 sec)

mysql> insert into ngoma VALUES(8, 'benimana','valante','m','eastern','kirehe','kabuye','runyombyi','valent@gmail.com','0783456779');
Query OK, 1 row affected (0.00 sec)

mysql> insert into ngoma VALUES(9, 'binamungu','yve','m','western','karongi','kabuye','rugarika','t@gmail.com','0783456779');
Query OK, 1 row affected (0.00 sec)

mysql> insert into ngoma VALUES(10, 'binamungu','yvette','f','western','karongi','bwishura','rugarika','yvet@gmail.com','0733456779');
Query OK, 1 row affected (0.00 sec)

mysql> select * from ngoma;
+------+------------+------------+--------+----------+-----------+------------+-----------+-----------------------+------------+
| ID   | first_name | last_name  | gender | province | district  | sector     | cell      | email_adress          | telephone  |
+------+------------+------------+--------+----------+-----------+------------+-----------+-----------------------+------------+
|    1 | nkubiri    | emmanuel   | M      | western  | ngororero | muhorororo | mubuga    | nkubi@gmail.com       | 0784660040 |
|    2 | niyera     | emmanuella | f      | eastern  | ngoma     | ngoma      | mubuga    | iyera@gmail.com       | 0784634040 |
|    3 | manishimwe | athanasie  | f      | eastern  | kayonza   | kabarondo  | rwinkwavu | athanasie12@gmail.com | 0724634040 |
|    4 | kubana     | emma       | M      | southern | nyanza    | nyanza     | bururi    | entan12@gmail.com     | 0724645600 |
|    5 | Rukundo    | JMV        | M      | southern | nyanza    | ruhuha     | ngamba    | kunda12@gmail.com     | 0792464560 |
|    6 | hirwa      | evode      | M      | nothern  | musanze   | muhoza     | cyuve     | ev123@gmail.com       | 0792464560 |
|    6 | hirwa      | eva        | f      | eastern  | kirehe    | kirehe     | runyombyi | hirwa@gmail.com       | 0783456789 |
|    6 | benimana   | eularie    | f      | eastern  | kirehe    | kabuye     | runyombyi | hira@gmail.com        | 0783456779 |
|    8 | benimana   | valante    | m      | eastern  | kirehe    | kabuye     | runyombyi | valent@gmail.com      | 0783456779 |
|    9 | binamungu  | yve        | m      | western  | karongi   | kabuye     | rugarika  | t@gmail.com           | 0783456779 |
|   10 | binamungu  | yvette     | f      | western  | karongi   | bwishura   | rugarika  | yvet@gmail.com        | 0733456779 |
+------+------------+------------+--------+----------+-----------+------------+-----------+-----------------------+------------+
11 rows in set (0.00 sec)

mysql> alter table ngoma add ntionality;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> alter table ngoma add ntionality char(200);
Query OK, 11 rows affected (0.07 sec)
Records: 11  Duplicates: 0  Warnings: 0

mysql> select * from ngoma;
+------+------------+------------+--------+----------+-----------+------------+-----------+-----------------------+------------+------------+
| ID   | first_name | last_name  | gender | province | district  | sector     | cell      | email_adress          | telephone  | ntionality |
+------+------------+------------+--------+----------+-----------+------------+-----------+-----------------------+------------+------------+
|    1 | nkubiri    | emmanuel   | M      | western  | ngororero | muhorororo | mubuga    | nkubi@gmail.com       | 0784660040 | NULL       |
|    2 | niyera     | emmanuella | f      | eastern  | ngoma     | ngoma      | mubuga    | iyera@gmail.com       | 0784634040 | NULL       |
|    3 | manishimwe | athanasie  | f      | eastern  | kayonza   | kabarondo  | rwinkwavu | athanasie12@gmail.com | 0724634040 | NULL       |
|    4 | kubana     | emma       | M      | southern | nyanza    | nyanza     | bururi    | entan12@gmail.com     | 0724645600 | NULL       |
|    5 | Rukundo    | JMV        | M      | southern | nyanza    | ruhuha     | ngamba    | kunda12@gmail.com     | 0792464560 | NULL       |
|    6 | hirwa      | evode      | M      | nothern  | musanze   | muhoza     | cyuve     | ev123@gmail.com       | 0792464560 | NULL       |
|    6 | hirwa      | eva        | f      | eastern  | kirehe    | kirehe     | runyombyi | hirwa@gmail.com       | 0783456789 | NULL       |
|    6 | benimana   | eularie    | f      | eastern  | kirehe    | kabuye     | runyombyi | hira@gmail.com        | 0783456779 | NULL       |
|    8 | benimana   | valante    | m      | eastern  | kirehe    | kabuye     | runyombyi | valent@gmail.com      | 0783456779 | NULL       |
|    9 | binamungu  | yve        | m      | western  | karongi   | kabuye     | rugarika  | t@gmail.com           | 0783456779 | NULL       |
|   10 | binamungu  | yvette     | f      | western  | karongi   | bwishura   | rugarika  | yvet@gmail.com        | 0733456779 | NULL       |
+------+------------+------------+--------+----------+-----------+------------+-----------+-----------------------+------------+------------+
11 rows in set (0.00 sec)

mysql> update ngoma set nationality='Rwandana';
ERROR 1054 (42S22): Unknown column 'nationality' in 'field list'
mysql> update ngoma set ntionality='Rwandana';
Query OK, 11 rows affected (0.00 sec)
Rows matched: 11  Changed: 11  Warnings: 0

mysql> select * from ngoma;
+------+------------+------------+--------+----------+-----------+------------+-----------+-----------------------+------------+------------+
| ID   | first_name | last_name  | gender | province | district  | sector     | cell      | email_adress          | telephone  | ntionality |
+------+------------+------------+--------+----------+-----------+------------+-----------+-----------------------+------------+------------+
|    1 | nkubiri    | emmanuel   | M      | western  | ngororero | muhorororo | mubuga    | nkubi@gmail.com       | 0784660040 | Rwandana   |
|    2 | niyera     | emmanuella | f      | eastern  | ngoma     | ngoma      | mubuga    | iyera@gmail.com       | 0784634040 | Rwandana   |
|    3 | manishimwe | athanasie  | f      | eastern  | kayonza   | kabarondo  | rwinkwavu | athanasie12@gmail.com | 0724634040 | Rwandana   |
|    4 | kubana     | emma       | M      | southern | nyanza    | nyanza     | bururi    | entan12@gmail.com     | 0724645600 | Rwandana   |
|    5 | Rukundo    | JMV        | M      | southern | nyanza    | ruhuha     | ngamba    | kunda12@gmail.com     | 0792464560 | Rwandana   |
|    6 | hirwa      | evode      | M      | nothern  | musanze   | muhoza     | cyuve     | ev123@gmail.com       | 0792464560 | Rwandana   |
|    6 | hirwa      | eva        | f      | eastern  | kirehe    | kirehe     | runyombyi | hirwa@gmail.com       | 0783456789 | Rwandana   |
|    6 | benimana   | eularie    | f      | eastern  | kirehe    | kabuye     | runyombyi | hira@gmail.com        | 0783456779 | Rwandana   |
|    8 | benimana   | valante    | m      | eastern  | kirehe    | kabuye     | runyombyi | valent@gmail.com      | 0783456779 | Rwandana   |
|    9 | binamungu  | yve        | m      | western  | karongi   | kabuye     | rugarika  | t@gmail.com           | 0783456779 | Rwandana   |
|   10 | binamungu  | yvette     | f      | western  | karongi   | bwishura   | rugarika  | yvet@gmail.com        | 0733456779 | Rwandana   |
+------+------------+------------+--------+----------+-----------+------------+-----------+-----------------------+------------+------------+
11 rows in set (0.00 sec)

mysql> select id,first_name,last_name,gender,telephone;
ERROR 1054 (42S22): Unknown column 'id' in 'field list'
mysql> select id,first_name,last_name,gender,telephone from ngoma;
+------+------------+------------+--------+------------+
| id   | first_name | last_name  | gender | telephone  |
+------+------------+------------+--------+------------+
|    1 | nkubiri    | emmanuel   | M      | 0784660040 |
|    2 | niyera     | emmanuella | f      | 0784634040 |
|    3 | manishimwe | athanasie  | f      | 0724634040 |
|    4 | kubana     | emma       | M      | 0724645600 |
|    5 | Rukundo    | JMV        | M      | 0792464560 |
|    6 | hirwa      | evode      | M      | 0792464560 |
|    6 | hirwa      | eva        | f      | 0783456789 |
|    6 | benimana   | eularie    | f      | 0783456779 |
|    8 | benimana   | valante    | m      | 0783456779 |
|    9 | binamungu  | yve        | m      | 0783456779 |
|   10 | binamungu  | yvette     | f      | 0733456779 |
+------+------------+------------+--------+------------+
11 rows in set (0.00 sec)

mysql> alter table ngoma drop column sector;
Query OK, 11 rows affected (0.06 sec)
Records: 11  Duplicates: 0  Warnings: 0

mysql> select* from ngoma;
+------+------------+------------+--------+----------+-----------+-----------+-----------------------+------------+------------+
| ID   | first_name | last_name  | gender | province | district  | cell      | email_adress          | telephone  | ntionality |
+------+------------+------------+--------+----------+-----------+-----------+-----------------------+------------+------------+
|    1 | nkubiri    | emmanuel   | M      | western  | ngororero | mubuga    | nkubi@gmail.com       | 0784660040 | Rwandana   |
|    2 | niyera     | emmanuella | f      | eastern  | ngoma     | mubuga    | iyera@gmail.com       | 0784634040 | Rwandana   |
|    3 | manishimwe | athanasie  | f      | eastern  | kayonza   | rwinkwavu | athanasie12@gmail.com | 0724634040 | Rwandana   |
|    4 | kubana     | emma       | M      | southern | nyanza    | bururi    | entan12@gmail.com     | 0724645600 | Rwandana   |
|    5 | Rukundo    | JMV        | M      | southern | nyanza    | ngamba    | kunda12@gmail.com     | 0792464560 | Rwandana   |
|    6 | hirwa      | evode      | M      | nothern  | musanze   | cyuve     | ev123@gmail.com       | 0792464560 | Rwandana   |
|    6 | hirwa      | eva        | f      | eastern  | kirehe    | runyombyi | hirwa@gmail.com       | 0783456789 | Rwandana   |
|    6 | benimana   | eularie    | f      | eastern  | kirehe    | runyombyi | hira@gmail.com        | 0783456779 | Rwandana   |
|    8 | benimana   | valante    | m      | eastern  | kirehe    | runyombyi | valent@gmail.com      | 0783456779 | Rwandana   |
|    9 | binamungu  | yve        | m      | western  | karongi   | rugarika  | t@gmail.com           | 0783456779 | Rwandana   |
|   10 | binamungu  | yvette     | f      | western  | karongi   | rugarika  | yvet@gmail.com        | 0733456779 | Rwandana   |
+------+------------+------------+--------+----------+-----------+-----------+-----------------------+------------+------------+
11 rows in set (0.00 sec)

mysql> select * from ngoma where gender='f'and province='eastern';
+------+------------+------------+--------+----------+----------+-----------+-----------------------+------------+------------+
| ID   | first_name | last_name  | gender | province | district | cell      | email_adress          | telephone  | ntionality |
+------+------------+------------+--------+----------+----------+-----------+-----------------------+------------+------------+
|    2 | niyera     | emmanuella | f      | eastern  | ngoma    | mubuga    | iyera@gmail.com       | 0784634040 | Rwandana   |
|    3 | manishimwe | athanasie  | f      | eastern  | kayonza  | rwinkwavu | athanasie12@gmail.com | 0724634040 | Rwandana   |
|    6 | hirwa      | eva        | f      | eastern  | kirehe   | runyombyi | hirwa@gmail.com       | 0783456789 | Rwandana   |
|    6 | benimana   | eularie    | f      | eastern  | kirehe   | runyombyi | hira@gmail.com        | 0783456779 | Rwandana   |
+------+------------+------------+--------+----------+----------+-----------+-----------------------+------------+------------+
4 rows in set (0.01 sec)

mysql> select * from Ngoma;
+------+------------+------------+--------+----------+-----------+-----------+-----------------------+------------+------------+
| ID   | first_name | last_name  | gender | province | district  | cell      | email_adress          | telephone  | ntionality |
+------+------------+------------+--------+----------+-----------+-----------+-----------------------+------------+------------+
|    1 | nkubiri    | emmanuel   | M      | western  | ngororero | mubuga    | nkubi@gmail.com       | 0784660040 | Rwandana   |
|    2 | niyera     | emmanuella | f      | eastern  | ngoma     | mubuga    | iyera@gmail.com       | 0784634040 | Rwandana   |
|    3 | manishimwe | athanasie  | f      | eastern  | kayonza   | rwinkwavu | athanasie12@gmail.com | 0724634040 | Rwandana   |
|    4 | kubana     | emma       | M      | southern | nyanza    | bururi    | entan12@gmail.com     | 0724645600 | Rwandana   |
|    5 | Rukundo    | JMV        | M      | southern | nyanza    | ngamba    | kunda12@gmail.com     | 0792464560 | Rwandana   |
|    6 | hirwa      | evode      | M      | nothern  | musanze   | cyuve     | ev123@gmail.com       | 0792464560 | Rwandana   |
|    6 | hirwa      | eva        | f      | eastern  | kirehe    | runyombyi | hirwa@gmail.com       | 0783456789 | Rwandana   |
|    6 | benimana   | eularie    | f      | eastern  | kirehe    | runyombyi | hira@gmail.com        | 0783456779 | Rwandana   |
|    8 | benimana   | valante    | m      | eastern  | kirehe    | runyombyi | valent@gmail.com      | 0783456779 | Rwandana   |
|    9 | binamungu  | yve        | m      | western  | karongi   | rugarika  | t@gmail.com           | 0783456779 | Rwandana   |
|   10 | binamungu  | yvette     | f      | western  | karongi   | rugarika  | yvet@gmail.com        | 0733456779 | Rwandana   |
+------+------------+------------+--------+----------+-----------+-----------+-----------------------+------------+------------+
11 rows in set (0.00 sec)

mysql> select * from ngoma where province='western'or gender='f';
+------+------------+------------+--------+----------+-----------+-----------+-----------------------+------------+------------+
| ID   | first_name | last_name  | gender | province | district  | cell      | email_adress          | telephone  | ntionality |
+------+------------+------------+--------+----------+-----------+-----------+-----------------------+------------+------------+
|    1 | nkubiri    | emmanuel   | M      | western  | ngororero | mubuga    | nkubi@gmail.com       | 0784660040 | Rwandana   |
|    2 | niyera     | emmanuella | f      | eastern  | ngoma     | mubuga    | iyera@gmail.com       | 0784634040 | Rwandana   |
|    3 | manishimwe | athanasie  | f      | eastern  | kayonza   | rwinkwavu | athanasie12@gmail.com | 0724634040 | Rwandana   |
|    6 | hirwa      | eva        | f      | eastern  | kirehe    | runyombyi | hirwa@gmail.com       | 0783456789 | Rwandana   |
|    6 | benimana   | eularie    | f      | eastern  | kirehe    | runyombyi | hira@gmail.com        | 0783456779 | Rwandana   |
|    9 | binamungu  | yve        | m      | western  | karongi   | rugarika  | t@gmail.com           | 0783456779 | Rwandana   |
|   10 | binamungu  | yvette     | f      | western  | karongi   | rugarika  | yvet@gmail.com        | 0733456779 | Rwandana   |
+------+------------+------------+--------+----------+-----------+-----------+-----------------------+------------+------------+
7 rows in set (0.00 sec)

mysql>