/*
约束：作用于表中列的规则，用于限制加入列表的数据
       保证数据的正确性，有效性和完整性
			 
数据库设计

多表查询

事物 

*/


/**
约束
1，约束的分类
   （1）非空约束（not null），保证数据中的值不能为空
	 （2）唯一约束（UNIQUE)，保证各列数据各不相同
	 （3）主键约束(PRIMARY KEY)，一行数据的唯一标识，要求非空且唯一
	 （4）检查约束(CHECK)，保证列中的值满足一定的条件(mysql数据库不支持)
	 （5）默认约束(DEFAULT)，保存数据时，未指定则用默认值
	 （6）外键约束(FOREIGN KEY)，用来让两个表的数据进行链接，保证数据的一致性和完整性
 
2,添加约束方法
  （1）直接在列的数据类型后面添加，如下所示
	（2）在所有列定义结束以后机创建完表后添加/删除
	     添加/删除非空约束
			 alter table 表名 modify 字段名 数据类型 not null;
			 alter table 表名 modify 字段名 数据类型;
			 添加/删除唯一约束
	     alter table 表名 modify 字段名 数据类型 unique;
			 alter table 表名 drop index 字段名;
			 添加/删除主键约束
			 alter table 表名 add PRIMARY key(字段名）;
			 alter table 表名 drop primary key;
			 添加/删除默认约束
			 alter table 表名 alter 列名 set default 默认值;
			 alter table 表名 alter 列名 drop default;
			
3，外键约束
   (1)两种添加外键的方式
	    创建表时添加
			constraint 外键名 foriegn key (从表外键) references（主表主键）
			注意：创建完外键之后要先建立主表，才能创建从表
			创建完表后添加
			alter table emp add constraint fk_emp_dept foreign key（dep_id) references  dept(id);
	（2）删除外键
	    alter table emp drop foreign key fk_emp_dept;

			 
 */
 
 drop table if exists emp;
 drop table if exists dept;
 -- 创建员工表
 create table emp(
 id int primary key auto_increment,                 -- id 员工信息的唯一标识，自增长
 ename varchar(50) not null unique,  -- 员工姓名非空且唯一
 joindate date not null,             -- 入职日期，非空
 salary double(7,2) not null,        -- 工资，非空
 bonus double(7,2) default 0         -- 奖金，如果没有默认为0
 );
 
 -- 从表中添加数据
 insert into emp values(1,'张三','1999-11-11',8800,5000);
 -- 演示主键约束，非空且唯一
 --  (1)演示主键不能为空
insert into emp(id,ename,joindate,salary,bonus) values(1,'张三','1999-11-11',8800,5000);  -- 此语句报错，因为主键不能为空
 -- （2）演示主键不可以重复，唯一性
insert into emp(id,ename,joindate,salary,bonus) values(null,'李四','1999-11-11',8800,5000);     -- 此语句报错，因为主键不能重复
 -- （3）演示主键自增长 auto_increment,当列是数字类型，并且唯一约束
 
 -- 创建部门表
 create table dept(
   id int primary key auto_increment,
	 dep_name varchar(20),
	 addr varchar(20)
	 );
 -- 创建员工表
 create table emp(
   id int primary key auto_increment,
	 name varchar(20),
	 age int,
	 dep_id int
	 -- 在员工表中添加外键 dep_id 关联 dept表的主键，员工表为从表，部门表为主表
	 -- constraint fk_emp_dept foreign key (dep_id) references dept(id)
	  
	 );
-- 创建完表后添加外键
alter table emp add constraint fk_emp_dept foreign key(dep_id) references  dept(id);
-- 删除外键
alter table emp drop foreign key fk_emp_dept;
	 
-- 添加两个部门
insert into dept(dep_name,addr) values('研发部','广州'),('销售部','深圳');
-- 添加员工
insert into emp(name,age,dep_id) values('张三',20,1),('李四',20,1),('王五',20,1),('赵六',20,2),('孙七',22,2),('周八',18,2);

select * from emp;
select * from dept;
























