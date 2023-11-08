create user jr identified by java1234;

grant connect, resource, dba to jr;


-------------------------------------------

--로그인 테이블

CREATE TABLE tblUserInfo (
	id VARCHAR2(100), /* ID */
	pw VARCHAR2(50), /* PW */
	name VARCHAR2(50), /* 이름 */
	birthDate DATE, /* 생년월일 */
	sex VARCHAR(10), /* 성별 */
	eMail VARCHAR2(50), /* 이메일 */
	phoneNum VARCHAR(30), /* 전화번호 */
	joinDate DATE default SYSDATE, /* 가입일자 */
	userStatus NUMBER, /* 회원상태 */
    
    CONSTRAINT tblUserInfo_id_pk PRIMARY KEY(id),
    CONSTRAINT tblUserInfo_Status_ck check(userStatus in (1, 2))
);

drop table tblUserInfo;

CREATE TABLE tblAdminInfo (
	adminInfoId VARCHAR2(30), /* 관리자 ID */
	adminInfoPw VARCHAR2(30), /* 관리자 PW */
	adminInfoMail VARCHAR2(50), /* 관리자 email */
	adminInfoPN VARCHAR2(30), /* 관리자 전화번호 */
    
    CONSTRAINT tblAdminInfo_id_pk PRIMARY KEY(adminInfoId)
);

