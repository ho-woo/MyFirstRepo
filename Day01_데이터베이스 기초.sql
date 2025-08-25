SHOW USER;

CREATE TABLE STUDENT_TBL (
    NO NUMBER,
    NAME VARCHAR2(12),
    AGE NUMBER
);

-- 테이블 데이터 조회 쿼리문(명령어)
SELECT * FROM STUDENT_TBL;

-- 테이블 스키마 확인 쿼리문
DESC STUDENT_TBL;

-- 테이블에 데이터 추가(삽입) 쿼리문
INSERT INTO student_tbl(NO, NAME, AGE) VALUES(1, '일용자', 33);

-- 테이블에 데이터 삭제 쿼리문
DELETE FROM student_tbl;

-- 테이블에 데이터 수정 쿼리문
UPDATE student_tbl
SET NAME = '이용자';

-- 데이터 조회 쿼리문
SELECT * FROM student_tbl;

-- ROLLBACK, 최종 커밋 시점으로 돌아감.
ROLLBACK;
-- COMMITM, 트랜잭션 종료 후 최종 저장
COMMIT;