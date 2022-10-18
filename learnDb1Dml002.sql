desc stu;-- 查看表中的列信息

-- 删除原来的stu表
drop table if exists stu;

-- 创建stu表
create table stu(
 id int,
name varchar(20),
age int,
sex varchar(5),
address varchar(50),
math double,
english double(5,2),
hire_date date
);

select *
from stu;

-- 添加数据
insert into stu 
values 
(1,'马云',55,'男','杭州',66,78,'1995-09-01'),
(2,'马花疼','45','女','深圳',98,87,'1998-09-01'),
(3,'马斯克',55,'男','香港',56,77,'1999-09-02'),
(4,'柳白','20','女','湖南',76,75,'1997-09-05'),
(5,'柳青','20','男','湖南',86,null,'1997-09-05'),
(6,'刘德华','57','男','香港',99,99,'1998-09-01'),
(5,'张学右','22','女','香港',99,99,'1998-09-01'),
(7,'德玛西亚','18','男','南京',99,65,'1994-09-02');

-- 检查并修改数据
UPDATE stu 
set id = '8'
WHERE name = '德玛西亚';


























