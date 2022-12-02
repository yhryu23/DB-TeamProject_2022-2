drop table master;
drop table customer;
drop table itemdata;



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

insert into customer values ('������', '201827003', '123456789', '010-1234-5678', 'asdf123r@gmail.com', '990403');
insert into customer values ('Ȳ�ؿ�', '201827020', '987654321', '010-8765-4321', null, null);



create table itemdata (
	name varchar2(100),
	price int,
	shoesize varchar2(80),
	image varchar2(50),
	id varchar2(50),
	kind varchar2(20),
	primary key (id)
);

insert into itemdata values ('����Ű�ȭ', 49900, '225,230,235,240,245,250,255,260', 'jo001.jpg', 'jo001', '����ȭ');
