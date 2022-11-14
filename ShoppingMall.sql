drop table master;
drop table customer;
-- drop table goods;



create table master (
	master_id varchar2(12),
	master_pwd varchar2(20),
	primary key (master_id)
);

insert into master values ('jspbook', '112233');



create table customer (
	customer_name varchar2(20),
	customer_id varchar2(20),
	customer_pw varchar2(20),
	customer_tel varchar2(15),
	customer_email varchar2(40),
	customer_birthday varchar2(6),
	primary key (customer_id)
);

insert into customer values ('류용하', '201827003', '123456789', '010-1234-5678', 'asdf123r@gmail.com', '990403');
insert into customer values ('황준영', '201827020', '987654321', '010-8765-4321', null, null);



/*
create table goods (
	good_id varchar2(10),
	good_name varchar2(50),
	good_price int,
	good_kind varchar2(30),
	good_size varchar2(80),
	good_image varchar2(50),
	primary key (good_id)
);

insert into goods values ('jo001', '나이키 운동화', 49900, '조깅화', '225,230,235,240,245,250,255,260', 'good4.jpg');
insert into goods values ('jo002', '뉴발란스 운동화', 28000, '조깅화','225,230,235,240,245,250,255,260,265,270', 'good1.jpg');
*/