create table tblAddress (
    seq number primary key,
    name varchar2(30) not null,
    age number not null,
    gender char(1) not null,
    address varchar2(300) not null,
    regdate date default sysdate not null
);

create sequence seqAddress;

insert into tblAddress (seq, name, age, gender, address, regdate)
    values (seqAddress.nextVal, 'ȫ�浿', 20, 'm', '����� ������ ���ﵿ', default);
    
select * from tbladdress;

drop table tblAddress;

commit;