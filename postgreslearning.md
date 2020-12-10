### 创建role
create role xxx;
CREATE ROLE zjy LOGIN;

###增加各种权限
create tables hello(
  key   int primary not null,
  name1 text not null,
  name2 int  not null,
  name3 char(50) ,
  name4 real
)

### 选择所有的数据 
select * from xxx;

### 插入数据到表xxx中
insert into xxx (key,name1,name2,name3,name4) values (1,"harry",1,1,"what",1.0);
