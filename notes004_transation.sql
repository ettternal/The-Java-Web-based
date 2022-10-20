/*
事务
    数据库的事务是一种机制，一个操作序列，保函了一组数据库操作命令
		把这一组命令作为一个整体，要么同时成功，要么同时失败
		事物是一个不可分割的逻辑单元
		
事务的四大特征（A,C,I,D）
    原子性（atomicity）：事务是不可分割的最小操作单位，要门同时成功，要么同时失败
		一致性（consistency）：事物完成时必须所有事物保持一致
		隔离性（isolation）：多个 事物之间操作的可见性
		持久性（durability）；事物一旦提交或回滚，对数据库中的数据的改变就是永久的
*/

drop table if exists account;
create table account(
  id int primary key auto_increment,
	name varchar(20),
	money double(10,2)
	);
	
-- 添加数据
insert into account (name,money) values('张三',1000),('李四',1000);

select * from account;

-- 转账操作
-- 开启事物 
   begin;
-- 1.查询李四的余额
   
-- 2，李四金额-500
update account set money = money - 500 where name = '李四';

-- 3，张三金额+500
update account set money = money + 500 where name = '张三';


-- 提交事物
commit;

-- 回滚事务
rollback;


-- 查询事务的默认提交方式
select @@autocommit;-- (结果为1表示自动提交可以理解为在语句后默认加了commit语句，结果为0表示需要手动提交)

-- 修改事务手动提交
set @@autocommit = 0;







