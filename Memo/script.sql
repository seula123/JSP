-- Memo > script.sql
drop table tblMemo;
create table tblMemo (
    seq number primary key,                 -- ��ȣ(PK)
    name varchar2(30) not null,             -- �̸�
    pw varchar2(30) not null,               -- �޸� ��ȣ
    memo varchar2(2000) not null,           -- �޸�
    regdate date default sysdate not null   -- ��¥
);

create sequence seqMemo;

-- �޸� ����
insert into tblMemo (seq, name, pw, memo, regdate)
    values (seqMemo.nextval, 'ȫ�浿', '1111', '�޸��Դϴ�.', default);

-- �޸� ���
select * from tblMemo order by seq desc;

-- �޸� �б�
select * from tblMemo where seq = 1;

-- �޸� ����
update tblMemo set memo = '���� ����' where seq = 1;

-- �޸� ����
delete from tblMemo where seq = 1;
re
alter table tblMemo
    modify (

commit;

select * from tblMemo;

insert into tblMemo (seq, name, pw, memo, regdate) values (seqMemo.nextval, 'aaa', 'aaa', 'aaa', default);




create table tblCat(
    seq number primary key,
    catid varchar2(50) not null,
    x number not null,
    y number not null
);

insert into tblCat values (1, 'cat1',0,0);
insert into tblCat values (2, 'cat2',0,0);
insert into tblCat values (3, 'cat3',0,0);
insert into tblCat values (4, 'cat4',0,0);
insert into tblCat values (5, 'cat5',0,0);

commit;