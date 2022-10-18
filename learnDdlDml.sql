-- 查询语句，查询表中的所有数据
SELECT
	* 
FROM
	stu;-- DML 对表中数据进行增（ INSERT），删（DELETE），改（UPDATE）操作 
-- 1，给指定的列添加
INSERT INTO stu ( id, NAME )
VALUES
	( 1, 'jack' );-- 2,给全部列添加数据
INSERT INTO stu
VALUES
	( 2, 'bob', '男', '2001-01-7', 98.9, 'ajdi19858490', '98189397874', 2 );-- 3,批量添加
INSERT INTO stu ( id, NAME, sex, birthday, score, email, tel, STATUS )
VALUES
	( 2, 'bob', '男', '2001-01-7', 98.9, 'ajdi19858490', '98189397874', 2 ),(
		3,
		'bath',
		'女',
		'2001-01-7',
		98.9,
		'ajdi19858490',
		'98189397874',
		2 
	);-- 修改数据表
updata DESC stu;
UPDATE stu 
SET sex = '女' 
WHERE
	NAME = '张三';
UPDATE stu 
SET id = '2' 
WHERE
	NAME = '里斯';-- 将张三的生日改为 2002-6-07，分数改为99.99 --注意如果没有加 WHERE条件，就会把表中所有数据修改
UPDATE stu 
SET birthday = '2002-6--9',
score = 99.99 
WHERE
	NAME = '张三';
UPDATE stu 
SET id = '1' 
WHERE
	NAME = '里斯';-- 删除表中数据 --需求：删除张三的数据 --注意：如果在删除的时候不加 WHERE条件，那么会删除表中的所有数据
DELETE 
FROM
	stu 
WHERE
	NAME = '张三';
DELETE 
FROM
	stu;-- 删除表中所有的数据
DELETE 
FROM
	stu;
DELETE 
FROM
	stu 
WHERE
	NAME = 'bob';