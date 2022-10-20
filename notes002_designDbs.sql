/*
数据库设计（分析有哪些表，表里有哪些字段，表和表之间的关系）
简介，表关系（一对多，多对多，一对一），案例
              

软件研发步骤
    需求分析---->设计---------------->编码------->测试--------->安装部署
		产品经理     架构师开发工程师     开发工程师  测试工程师    运维工程师
		产品原型     软件结构             
		             数据库设计
								 设计接口
								 过程设计
	
数据库设计的步骤：
    根据业务系统的需求，结合使用的dbms，建造优秀的数据存储模型，建立数据库中表结构和表与表之间的关联过程
		
数据库设计的步骤：
    （1）需求分析
		（2）逻辑分析，用er图对数据库建模，不用考虑选用dbms
		（3）物理设计
		（4）维护设计（1，对新需求建表，2，优化表）
*/

-- 表关系一对多的实现方式：在多的一方设置外键指向一的一方的主键
-- 例如员工表中的外键指向部门表中的主键

-- 多对多的实现：需要借助中间表来实现   
-- 创建订单表
create table tb_order(
  id int primary key auto_increment,
	payment double(10,2),
	payment_type tinyint,
	status tinyint
	);
select * from tb_order;

-- 创建商品表
create table tb_goods(
  id int primary key auto_increment,
	title varchar(100),
	price double(10,2)
	);
select * from tb_goods;

-- 订单商品中间表
create table tb_order_goods(
  id int primary key auto_increment,
	order_id int,
	goods_id int,
	count int
	);
select * from tb_order_goods;

-- 添加外键，使得三张表建立联系，订单表和商品表满足多对多的关系
alter table tb_order_goods add constraint fk_order_id foreign key(order_id) references tb_order(id);
alter table tb_order_goods add constraint fk_goods_id foreign key(goods_id) references tb_goods(id);

-- 一对一的实现:把用户表拆分为二，如用户表和用户详情表，在任意一方加入外键关联另一个主键，并且设置唯一（unique）



-- 数据库设计案例

























