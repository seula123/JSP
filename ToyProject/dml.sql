
-- ToyProject > dml.sql

-- ȸ��
insert into tblUser (id, pw, name, email, lv, pic, intro, ing)
    values ('hong', '1111', 'ȫ�浿', 'hong@gmail.com'
        , '1', default,  '�ڹٸ� �����ϴ� �л��Դϴ�.', default);
        
select * from tblUser;

update tblUser set ing = 'y';

commit;



insert into tblBoard (seq, subject, content, regdate, readcount, id)
    values (seqBoard.nextVal, '�Խ����Դϴ�.', '�����Դϴ�.', default, default, 'hong');

select * from tblBoard;

delete from tblBoard where seq in (2, 3);

commit;


select * from vwBoard;

update tblBoard set regdate = regdate - 1 where seq <= 6;

commit;




