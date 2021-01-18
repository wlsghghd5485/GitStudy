drop database if exists testdb2;
create database testdb2;

use testdb2;

drop table if exists member;
create table member(
	name varchar(20) not null,
	id varchar(20) not null primary key,
	pw varchar(20) not null,
	age smallint(10) not null,
	email varchar(20) not null,
	addr varchar(100) not null
);

select * from member;







