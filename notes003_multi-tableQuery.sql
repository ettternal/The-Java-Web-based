/*
多表查询:从多张表查询
    链接查询
		    内连接：相当于查询a，b的交集（语法有两种表示方式）
				        显示内连接；select 字段列表 from 表一，表二 where 条件；
								隐式内连接：select 字段列表 from 表一 inner jion 表二 on 条件；
				外连接：
				    左外连接：查询a表的数据和交集部分的数据
						右外连接；查询b表的数据和交集部分的数据
		子查询：查询中嵌套查询	
		      单行单列：作为条件值，使用> < != =等进行条件判断
						 select 字段列表 from 表 where 字段名 = （子查询）;
					多行单列：作为条件，使用in等关键字进行条件判断
				     select 字段名称 from 表 where 字段名 in （子查询）	
					多行多列：作为虚拟表
			       select 字段名称 from （子查询）where 条件;		
    

    select * from emp,dept;
		这样查询会产生笛卡尔积，有a，b两个集合取a，b的所有组合情况
		
		select * from emp,dept where emp.dept_id = dept.did;

*/

drop table if exists emp;
drop table if exists dept;

# 创建部门表
create table dept(
  did int primary key auto_increment,
	dname varchar(20)
	);
#创建员工表
create table emp(
  id int primary key auto_increment,
	name varchar(10),
	gender char(10), -- 性别
	salary double,  -- 薪水
	join_date date,  -- 入职日期
	dep_id int,
	foreign key (dep_id) references dept(did)  -- 外键，关联部门表
	);
-- 添加部门数据
insert into dept (dname) values('研发部'),('市场部'),('财务部'),('销售部');
-- 添加员工数据
insert into emp(name,gender,salary,join_date,dep_id) values
  ('孙悟空','男',7200,'2013-02-24',1),
	('猪八戒','男',3600,'2010-02-24',2),
	('唐僧','男',9000,'2008-08-08',2),
	('白骨精','女',5000,'2015-10-07',3),
	('蜘蛛精','女',4500,'2011-03-14',1),
  ('小白龙','男',2500,'2011-02-14',null);
	
select * from dept;
select * from emp;

-- 隐式内连接
select * from emp , dept where emp.dep_id = dept.did; 

-- 查询emp的name，gender，和dept表的dname
select emp.name,emp.gender,dept.dname from emp,dept where emp.dep_id = dept.did; 

-- 给表取别名
SELECT
	t1.NAME,
	t1.gender,
	t2.dname 
FROM
	emp t1,
	dept t2 
WHERE
	t1.dep_id = t2.did;
	
-- 显示内连接
select * from emp inner join dept on emp.dep_id = dept.did;
select * from emp  join dept on emp.dep_id = dept.did;  -- inner 可以省略不写

	
-- 外连接查询	
   -- 左外连接
	    -- 查询emp表的所有数据和对应部门信息
	 select * from emp left join dept on emp.dep_id = dept.did;
	 -- 右外连接
	    -- 查询dept表的所有数据和对应的员工信息
	 select * from emp right join dept on emp.dep_id = dept.did;



-- 子查询
  -- 单行单列
	   -- 查询比猪八戒工资高的员工
	   select * from emp where salary > (select salary from emp where name = '猪八戒');
  -- 单行多列
	   -- 查询财务部和市场部所有员工的信息
		    -- 先查询财务部在查询市场部
				select did from dept where dname = '财务部' or dname = '市场部';
				select * from emp where dep_id in (select did from dept where dname = '财务部' or dname = '市场部');
  -- 多行多列
	   -- 查询入职日期是'2001-11-11'之后的员工信息和部门信息
		    -- 先查询入职日期是'2001-11-11'之后的员工信息
				select * from emp where join_date > '2011-11-11';
				select * from (select * from emp where join_date > '2011-11-11') t1,dept where t1.dep_id = dept.did;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
