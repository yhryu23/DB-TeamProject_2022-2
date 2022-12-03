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
	customer_name varchar2(50),
	customer_id varchar2(20),
	customer_pw varchar2(20),
	customer_tel varchar2(15),
	customer_email varchar2(40),
	customer_birthday varchar2(6),
	primary key (customer_id)
);

insert into customer values ('류용하', '201827003', '123456789', '010-1234-5678', 'asdf123r@gmail.com', '990403');
insert into customer values ('황준영', '201827020', '987654321', '010-8765-4321', 'fdsa321h@naver.com', '990101');



create table itemdata (
	name varchar2(100),
	price int,
	shoesize varchar2(80),
	image varchar2(50),
	id varchar2(50),
	kind varchar2(20),
	primary key (id)
);

insert into itemdata values ('나이키 운동화', 49900, '225,230,235,240,245,250,255,260', 'i1-001.jpg', 'i1-001', '운동화');
insert into itemdata values ('나이키 운동화', 49900, '225,230,235,240,245,250,255,260', 'i1-002.jpg', 'i1-002', '운동화');
insert into itemdata values ('나이키 운동화', 49900, '225,230,235,240,245,250,255,260', 'i1-003.jpg', 'i1-003', '운동화');
insert into itemdata values ('나이키 운동화', 49900, '225,230,235,240,245,250,255,260', 'i1-004.jpg', 'i1-004', '운동화');
insert into itemdata values ('나이키 운동화', 49900, '225,230,235,240,245,250,255,260', 'i1-005.jpg', 'i1-005', '운동화');
insert into itemdata values ('나이키 운동화', 49900, '225,230,235,240,245,250,255,260', 'i1-006.jpg', 'i1-006', '운동화');
insert into itemdata values ('나이키 운동화', 49900, '225,230,235,240,245,250,255,260', 'i1-007.jpg', 'i1-007', '운동화');
insert into itemdata values ('나이키 운동화', 49900, '225,230,235,240,245,250,255,260', 'i1-008.jpg', 'i1-008', '운동화');
insert into itemdata values ('나이키 운동화', 49900, '225,230,235,240,245,250,255,260', 'i1-009.jpg', 'i1-009', '운동화');
insert into itemdata values ('나이키 스포츠', 49900, '225,230,235,240,245,250,255,260', 'i2-001.jpg', 'i2-001', '스포츠');
insert into itemdata values ('나이키 스포츠', 49900, '225,230,235,240,245,250,255,260', 'i2-002.jpg', 'i2-002', '스포츠');
insert into itemdata values ('나이키 스포츠', 49900, '225,230,235,240,245,250,255,260', 'i2-003.jpg', 'i2-003', '스포츠');
insert into itemdata values ('나이키 스포츠', 49900, '225,230,235,240,245,250,255,260', 'i2-004.jpg', 'i2-004', '스포츠');
insert into itemdata values ('나이키 스포츠', 49900, '225,230,235,240,245,250,255,260', 'i2-005.jpg', 'i2-005', '스포츠');
insert into itemdata values ('나이키 스포츠', 49900, '225,230,235,240,245,250,255,260', 'i2-006.jpg', 'i2-006', '스포츠');
insert into itemdata values ('나이키 스포츠', 49900, '225,230,235,240,245,250,255,260', 'i2-007.jpg', 'i2-007', '스포츠');
insert into itemdata values ('나이키 스포츠', 49900, '225,230,235,240,245,250,255,260', 'i2-008.jpg', 'i2-008', '스포츠');
insert into itemdata values ('나이키 스포츠', 49900, '225,230,235,240,245,250,255,260', 'i2-009.jpg', 'i2-009', '스포츠');
insert into itemdata values ('나이키 구두', 49900, '225,230,235,240,245,250,255,260', 'i3-001.jpg', 'i3-001', '구두');
insert into itemdata values ('나이키 구두', 49900, '225,230,235,240,245,250,255,260', 'i3-002.jpg', 'i3-002', '구두');
insert into itemdata values ('나이키 구두', 49900, '225,230,235,240,245,250,255,260', 'i3-003.jpg', 'i3-003', '구두');
insert into itemdata values ('나이키 구두', 49900, '225,230,235,240,245,250,255,260', 'i3-004.jpg', 'i3-004', '구두');
insert into itemdata values ('나이키 구두', 49900, '225,230,235,240,245,250,255,260', 'i3-005.jpg', 'i3-005', '구두');
insert into itemdata values ('나이키 구두', 49900, '225,230,235,240,245,250,255,260', 'i3-006.jpg', 'i3-006', '구두');
insert into itemdata values ('나이키 구두', 49900, '225,230,235,240,245,250,255,260', 'i3-007.jpg', 'i3-007', '구두');
insert into itemdata values ('나이키 구두', 49900, '225,230,235,240,245,250,255,260', 'i3-008.jpg', 'i3-008', '구두');
insert into itemdata values ('나이키 구두', 49900, '225,230,235,240,245,250,255,260', 'i3-009.jpg', 'i3-009', '구두');
insert into itemdata values ('나이키 샌들', 49900, '225,230,235,240,245,250,255,260', 'i4-001.jpg', 'i4-001', '샌들');
insert into itemdata values ('나이키 샌들', 49900, '225,230,235,240,245,250,255,260', 'i4-002.jpg', 'i4-002', '샌들');
insert into itemdata values ('나이키 샌들', 49900, '225,230,235,240,245,250,255,260', 'i4-003.jpg', 'i4-003', '샌들');
insert into itemdata values ('나이키 샌들', 49900, '225,230,235,240,245,250,255,260', 'i4-004.jpg', 'i4-004', '샌들');
insert into itemdata values ('나이키 샌들', 49900, '225,230,235,240,245,250,255,260', 'i4-005.jpg', 'i4-005', '샌들');
insert into itemdata values ('나이키 샌들', 49900, '225,230,235,240,245,250,255,260', 'i4-006.jpg', 'i4-006', '샌들');
insert into itemdata values ('나이키 샌들', 49900, '225,230,235,240,245,250,255,260', 'i4-007.jpg', 'i4-007', '샌들');
insert into itemdata values ('나이키 샌들', 49900, '225,230,235,240,245,250,255,260', 'i4-008.jpg', 'i4-008', '샌들');
insert into itemdata values ('나이키 샌들', 49900, '225,230,235,240,245,250,255,260', 'i4-009.jpg', 'i4-009', '샌들');
insert into itemdata values ('나이키 부츠', 49900, '225,230,235,240,245,250,255,260', 'i5-001.jpg', 'i5-001', '부츠');
insert into itemdata values ('나이키 부츠', 49900, '225,230,235,240,245,250,255,260', 'i5-002.jpg', 'i5-002', '부츠');
insert into itemdata values ('나이키 부츠', 49900, '225,230,235,240,245,250,255,260', 'i5-003.jpg', 'i5-003', '부츠');
insert into itemdata values ('나이키 부츠', 49900, '225,230,235,240,245,250,255,260', 'i5-004.jpg', 'i5-004', '부츠');
insert into itemdata values ('나이키 부츠', 49900, '225,230,235,240,245,250,255,260', 'i5-005.jpg', 'i5-005', '부츠');
insert into itemdata values ('나이키 부츠', 49900, '225,230,235,240,245,250,255,260', 'i5-006.jpg', 'i5-006', '부츠');
insert into itemdata values ('나이키 부츠', 49900, '225,230,235,240,245,250,255,260', 'i5-007.jpg', 'i5-007', '부츠');
insert into itemdata values ('나이키 부츠', 49900, '225,230,235,240,245,250,255,260', 'i5-008.jpg', 'i5-008', '부츠');
insert into itemdata values ('나이키 부츠', 49900, '225,230,235,240,245,250,255,260', 'i5-009.jpg', 'i5-009', '부츠');

