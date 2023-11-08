
--임시회원
insert into tblUserInfo
		values ('test1', '1234', '김수진', '1992-03-02', '남', 'sujin@naver.com', '010-9335-6987', default, 1);

insert into tblAdminInfo
		values ('admin', '1234', 'sujin@naver.com', '010-9335-6987');


    
select * from tblUserInfo;
select * from tblAdminInfo;

select * from tblUserInfo where id = 'test1' and pw = '1234';

commit;


