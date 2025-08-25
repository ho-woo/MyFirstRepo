SHOW USER;
SHOW USER;
-- �ּ�

-- DBA (�����ͺ��̽� ������)
-- �� ���� ���� �� ��, ������, ���� ����
-- �������� ��� ������ ������ �̿��ؼ� ������� ��й�ȣ�� �����ؼ� ���
-- DBA�� ������ ������ �� ����ϴ� ���� ����� ���� ���� ������ system������ �ο��Ǿ� ����.
-- �׷��� system�������θ� ������ ������ �� ����.

-- �������� �������� ����Ͽ� ���� ����, ������ ����� �� �ִ� ���Ѻο� ���������� ���Ѻο�
-- Oracle DBMS ����
-- 11XE -> 18c

-- 1. �������� ������
CREATE USER C##OLAUSER01 IDENTIFIED BY OLAUSER01; -- User C##OLAUSER01��(��) �����Ǿ����ϴ�.
DROP USER C##OLAUSER01; -- User C##OLAUSER01��(��) �����Ǿ����ϴ�.
-- C##�� ���� ������ ������ �� �ֵ��� �ϴ� ��ɾ�
ALTER SESSION SET "_ORACLE_SCRIPT" = true; -- Session��(��) ����Ǿ����ϴ�.
CREATE USER OLAUSER01 IDENTIFIED BY OLAUSER01; -- User OLAUSER01��(��) �����Ǿ����ϴ�.

-- 2. ���ӱ���, ���ҽ�(���̺� ��) ���� ���� �ο�

-- 2.1 ���ӱ��� �ο�
-- ����: ���� -�׽�Ʈ ����: ORA-01045: ����� OLAUSER01�� CREATE SESSION ������ ���������� ����; �α׿��� �����Ǿ����ϴ�
GRANT CONNECT TO OLAUSER01; -- Grant��(��) �����߽��ϴ�.

-- 2.2 ���ҽ� ���Ѻο�
-- ORA-01031: ������ ������մϴ�
GRANT RESOURCE TO OLAUSER01; --Grant��(��) �����߽��ϴ�.


-- 2.3 �Ҵ緮 ���� �ο�(18c)
-- ���� �Ҵ緮�� ���� ������ �����Ƿ� ���� �ο� ��ɾ� ����
-- SQL ����: ORA-01950: ���̺����̽� 'USERS'�� ���� ������ �����ϴ�. 01950. 00000 -  "no privileges on tablespace '%s'"
ALTER USER OLAUSER01 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;


-- ������ KH, ��й�ȣ KH�� ������ �����Ͽ� ���� �� ���̺� �����ϰ�
-- ���� �߰��� �� �ֵ��� ��������
ALTER SESSION SET "_ORACLE_SCRIPT" = true;
CREATE USER KH IDENTIFIED BY KH;
GRANT CONNECT TO KH;
GRANT RESOURCE TO KH;
ALTER USER KH DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;