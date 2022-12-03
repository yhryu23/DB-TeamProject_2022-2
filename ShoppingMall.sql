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

insert into customer values ('幅侩窍', '201827003', '123456789', '010-1234-5678', 'asdf123r@gmail.com', '990403');
insert into customer values ('炔霖康', '201827020', '987654321', '010-8765-4321', 'fdsa321h@naver.com', '990101');



create table itemdata (
	name varchar2(100),
	price int,
	shoesize varchar2(80),
	image varchar2(50),
	id varchar2(50),
	kind varchar2(20),
	primary key (id)
);

insert into itemdata values ('款悼拳001', 49900, '225,230,235,240,245,250,255,260', 'i1-001.jpg', 'i1-001', '款悼拳');
insert into itemdata values ('款悼拳002', 49900, '225,230,235,240,245,250,255,260', 'i1-002.jpg', 'i1-002', '款悼拳');
insert into itemdata values ('款悼拳003', 49900, '225,230,235,240,245,250,255,260', 'i1-003.jpg', 'i1-003', '款悼拳');
insert into itemdata values ('款悼拳004', 49900, '225,230,235,240,245,250,255,260', 'i1-004.jpg', 'i1-004', '款悼拳');
insert into itemdata values ('款悼拳005', 49900, '225,230,235,240,245,250,255,260', 'i1-005.jpg', 'i1-005', '款悼拳');
insert into itemdata values ('款悼拳006', 49900, '225,230,235,240,245,250,255,260', 'i1-006.jpg', 'i1-006', '款悼拳');
insert into itemdata values ('款悼拳007', 49900, '225,230,235,240,245,250,255,260', 'i1-007.jpg', 'i1-007', '款悼拳');
insert into itemdata values ('款悼拳008', 49900, '225,230,235,240,245,250,255,260', 'i1-008.jpg', 'i1-008', '款悼拳');
insert into itemdata values ('款悼拳009', 49900, '225,230,235,240,245,250,255,260', 'i1-009.jpg', 'i1-009', '款悼拳');
insert into itemdata values ('胶器明001', 49900, '225,230,235,240,245,250,255,260', 'i2-001.jpg', 'i2-001', '胶器明');
insert into itemdata values ('胶器明002', 49900, '225,230,235,240,245,250,255,260', 'i2-002.jpg', 'i2-002', '胶器明');
insert into itemdata values ('胶器明003', 49900, '225,230,235,240,245,250,255,260', 'i2-003.jpg', 'i2-003', '胶器明');
insert into itemdata values ('胶器明004', 49900, '225,230,235,240,245,250,255,260', 'i2-004.jpg', 'i2-004', '胶器明');
insert into itemdata values ('胶器明005', 49900, '225,230,235,240,245,250,255,260', 'i2-005.jpg', 'i2-005', '胶器明');
insert into itemdata values ('胶器明006', 49900, '225,230,235,240,245,250,255,260', 'i2-006.jpg', 'i2-006', '胶器明');
insert into itemdata values ('胶器明007', 49900, '225,230,235,240,245,250,255,260', 'i2-007.jpg', 'i2-007', '胶器明');
insert into itemdata values ('胶器明008', 49900, '225,230,235,240,245,250,255,260', 'i2-008.jpg', 'i2-008', '胶器明');
insert into itemdata values ('胶器明009', 49900, '225,230,235,240,245,250,255,260', 'i2-009.jpg', 'i2-009', '胶器明');
insert into itemdata values ('备滴001', 49900, '225,230,235,240,245,250,255,260', 'i3-001.jpg', 'i3-001', '备滴');
insert into itemdata values ('备滴002', 49900, '225,230,235,240,245,250,255,260', 'i3-002.jpg', 'i3-002', '备滴');
insert into itemdata values ('备滴003', 49900, '225,230,235,240,245,250,255,260', 'i3-003.jpg', 'i3-003', '备滴');
insert into itemdata values ('备滴004', 49900, '225,230,235,240,245,250,255,260', 'i3-004.jpg', 'i3-004', '备滴');
insert into itemdata values ('备滴005', 49900, '225,230,235,240,245,250,255,260', 'i3-005.jpg', 'i3-005', '备滴');
insert into itemdata values ('备滴006', 49900, '225,230,235,240,245,250,255,260', 'i3-006.jpg', 'i3-006', '备滴');
insert into itemdata values ('备滴007', 49900, '225,230,235,240,245,250,255,260', 'i3-007.jpg', 'i3-007', '备滴');
insert into itemdata values ('备滴008', 49900, '225,230,235,240,245,250,255,260', 'i3-008.jpg', 'i3-008', '备滴');
insert into itemdata values ('备滴009', 49900, '225,230,235,240,245,250,255,260', 'i3-009.jpg', 'i3-009', '备滴');
insert into itemdata values ('击甸001', 49900, '225,230,235,240,245,250,255,260', 'i4-001.jpg', 'i4-001', '击甸');
insert into itemdata values ('击甸002', 49900, '225,230,235,240,245,250,255,260', 'i4-002.jpg', 'i4-002', '击甸');
insert into itemdata values ('击甸003', 49900, '225,230,235,240,245,250,255,260', 'i4-003.jpg', 'i4-003', '击甸');
insert into itemdata values ('击甸004', 49900, '225,230,235,240,245,250,255,260', 'i4-004.jpg', 'i4-004', '击甸');
insert into itemdata values ('击甸005', 49900, '225,230,235,240,245,250,255,260', 'i4-005.jpg', 'i4-005', '击甸');
insert into itemdata values ('击甸006', 49900, '225,230,235,240,245,250,255,260', 'i4-006.jpg', 'i4-006', '击甸');
insert into itemdata values ('击甸007', 49900, '225,230,235,240,245,250,255,260', 'i4-007.jpg', 'i4-007', '击甸');
insert into itemdata values ('击甸008', 49900, '225,230,235,240,245,250,255,260', 'i4-008.jpg', 'i4-008', '击甸');
insert into itemdata values ('击甸009', 49900, '225,230,235,240,245,250,255,260', 'i4-009.jpg', 'i4-009', '击甸');
insert into itemdata values ('何明001', 49900, '225,230,235,240,245,250,255,260', 'i5-001.jpg', 'i5-001', '何明');
insert into itemdata values ('何明002', 49900, '225,230,235,240,245,250,255,260', 'i5-002.jpg', 'i5-002', '何明');
insert into itemdata values ('何明003', 49900, '225,230,235,240,245,250,255,260', 'i5-003.jpg', 'i5-003', '何明');
insert into itemdata values ('何明004', 49900, '225,230,235,240,245,250,255,260', 'i5-004.jpg', 'i5-004', '何明');
insert into itemdata values ('何明005', 49900, '225,230,235,240,245,250,255,260', 'i5-005.jpg', 'i5-005', '何明');
insert into itemdata values ('何明006', 49900, '225,230,235,240,245,250,255,260', 'i5-006.jpg', 'i5-006', '何明');
insert into itemdata values ('何明007', 49900, '225,230,235,240,245,250,255,260', 'i5-007.jpg', 'i5-007', '何明');
insert into itemdata values ('何明008', 49900, '225,230,235,240,245,250,255,260', 'i5-008.jpg', 'i5-008', '何明');
insert into itemdata values ('何明009', 49900, '225,230,235,240,245,250,255,260', 'i5-009.jpg', 'i5-009', '何明');

