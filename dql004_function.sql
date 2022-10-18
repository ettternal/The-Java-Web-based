-- 聚合函数(null值不参与聚合函数的运算）
-- 1，统计班级一共有多少学生
select count(id) from stu;--count 统计的列名不能为空一般选主键，推荐用*
select * from stu;

-- 2,查询数学成绩的最高分
select max(math) from stu;

-- 3，查询数学成绩的最低分
select min(math) from stu;

-- 4,查询数学成绩的总分 
select sum(math) from stu;

-- 5,查询数学成绩的平均分
select avg(math) from stu;

-- 6,查询英语成绩的最低分
select min(english) from stu;










