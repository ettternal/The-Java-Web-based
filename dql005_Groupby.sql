-- 分组函数
-- 1，查询男女同学各自的平均分
select sex,avg(math) from stu group by sex;

-- 2，查询男女同学各自的平均分，以及各自的人数
select sex,avg(math),count(*) from stu group by sex;

-- 3，查询男女同学各自的平均分，以及各自的人数,成绩低于70的不参与分组
select sex,avg(math),count(*) from stu where math > 70 group by sex;

-- 4，查询男女同学各自的平均分，以及各自的人数,成绩低于70的不参与分组,分组之后的人数大于2个
select sex,avg(math),count(*) from stu where math >70 group by sex having count(*) > 2;
















