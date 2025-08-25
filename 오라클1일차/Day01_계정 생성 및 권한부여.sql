SHOW USER;
SHOW USER;
-- 주석

-- DBA (데이터베이스 관리자)
-- ㄴ 계정 생성 후 고객, 개발자, 현업 배포
-- 개발자의 경우 생성된 개정을 이용해서 계정명과 비밀번호로 접속해서 사용
-- DBA가 계정을 생성할 때 사용하는 권한 사용자 계정 생성 권한은 system계정에 부여되어 있음.
-- 그래서 system계정으로만 계정을 생성할 수 있음.

-- 계정생성 쿼리문을 사용하여 계정 생성, 계정이 사용할 수 있는 권한부여 쿼리문으로 권한부여
-- Oracle DBMS 무료
-- 11XE -> 18c

-- 1. 계정생성 쿼리문
CREATE USER C##OLAUSER01 IDENTIFIED BY OLAUSER01; -- User C##OLAUSER01이(가) 생성되었습니다.
DROP USER C##OLAUSER01; -- User C##OLAUSER01이(가) 삭제되었습니다.
-- C##을 빼고 계정을 생성할 수 있도록 하는 명령어
ALTER SESSION SET "_ORACLE_SCRIPT" = true; -- Session이(가) 변경되었습니다.
CREATE USER OLAUSER01 IDENTIFIED BY OLAUSER01; -- User OLAUSER01이(가) 생성되었습니다.

-- 2. 접속권한, 리소스(테이블 등) 생성 권한 부여

-- 2.1 접속권한 부여
-- 상태: 실패 -테스트 실패: ORA-01045: 사용자 OLAUSER01는 CREATE SESSION 권한을 가지고있지 않음; 로그온이 거절되었습니다
GRANT CONNECT TO OLAUSER01; -- Grant을(를) 성공했습니다.

-- 2.2 리소스 권한부여
-- ORA-01031: 권한이 불충분합니다
GRANT RESOURCE TO OLAUSER01; --Grant을(를) 성공했습니다.


-- 2.3 할당량 권한 부여(18c)
-- 계정 할당량에 대한 권한이 없으므로 권한 부여 명령어 실행
-- SQL 오류: ORA-01950: 테이블스페이스 'USERS'에 대한 권한이 없습니다. 01950. 00000 -  "no privileges on tablespace '%s'"
ALTER USER OLAUSER01 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;


-- 계정명 KH, 비밀번호 KH인 계정을 생성하여 접속 및 테이블 생성하고
-- 값을 추가할 수 있도록 만들어보세요
ALTER SESSION SET "_ORACLE_SCRIPT" = true;
CREATE USER KH IDENTIFIED BY KH;
GRANT CONNECT TO KH;
GRANT RESOURCE TO KH;
ALTER USER KH DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;