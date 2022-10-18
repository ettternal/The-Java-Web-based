/*
排序查询,关键字prder by
ASC:升序排序（默认）
desc：降序排序
*/

-- 1,查询学生信息，按照年龄升序排序
select * from stu ORDER BY age asc;

-- 2,查询学生信息，按照数学成绩降序排序
select * from stu ORDER BY math DESC;

-- 3,查询学生信息，按照数学成绩降序排序,如果数学成绩一样再按照英语成绩升序排列
select * from stu ORDER BY math DESC ,english asc;
















