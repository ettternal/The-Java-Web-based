-- 条件查询（where）关键字
-- 1，查询年纪大于20的信息
select * from stu  where age > 20;

-- 2，查询年纪大于等于20周岁的信息
select * from stu where age >= 20;

-- 3 ,查询年纪大于等于20岁并且小于等于30岁,使用&&或AND
select * from stu where age >= 20 && age <= 30;
select * from stu where age >= 20 AND age <= 30;
SELECT * from stu where age between 20 and 30;

-- 4查询入学日起在1998-09-01到1999-09-01的信息
select * from stu where hire_date between '1998-09-01' and '1999-09-01' ;

-- 5查询年龄等于18岁的学员信息
select * from stu where age = 18;

-- 6查询年龄不等于18岁的学员信息
select * from stu where age != 18;
select * from stu where age <> 18;

-- 7，查询年龄为18，20，22的信息
select * from stu where age = 18 or age = 20 or age = 22;
select * from stu where age IN (18,20,22);

-- 8查询英语成绩为null的学员信息
-- 注意：null的比较不可以直接使用= ！=应该使用is和is not
select * from stu where english is null;

-- like 模糊查询
-- 1，查询姓马的信息
select * from stu where name  like '马%';

-- 2,查询第二个字是花的信息
select * from stu where name like '_花%';

-- 3,查询名字中有德字的学院
select * from stu where name like '%德%';








