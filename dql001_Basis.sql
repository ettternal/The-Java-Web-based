-- dql的基础查询 --目标： 1,查询 NAME， age两列 SELECT NAME
,
age 
FROM
	stu;
-- 2,查询所有的列的数据，列名的列表可以使用*代替，不要使用！ SELECT
* 
FROM
	stu;
	
	-- 查询地址信息
	select address from stu;
	
	-- 去除重复的记录，用distinct关键字
	select distinct address from stu;
	
	-- 查询姓名，数学的成绩，英语成绩可以用as来把原来的名称替换，as也可以省略
	select name,math as 数学成绩,english as 英语成绩 from stu;
	
	
	
	
	
	
	