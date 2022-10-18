-- 分页查询
-- 1，从0开始查询三条数据
select * from stu limit 0,3;

-- 2,每页显示3条数据，查询第一页数据
select * from stu limit 0,3;

-- 3,每页显示3条数据，查询第二页数据
select * from stu limit 3,3;

-- 4,每页显示3条数据，查询第三页数据
select * from stu limit 6,3;

-- 起始索引 = （当前查询页码 — 1） * 每页显示的条数








