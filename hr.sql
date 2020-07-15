--Ŀ���ִ°� or ���Ѱ��� �����
CREATE TABLE t_student(
    i_student number,           --PKƯ�� unique�� �ߺ� X , not null�� null�� ������ ���� (unique,not null)
                                --PK�� ������ �α���� �ڵ����� ��
    nm varchar(15) not null,    -- char�� varchar�� ���� : var�� ������ ũ�Ⱑ �����Ҵ�ȴ� 
    age number(3) not null,     -- ex)nm char(10):10����Ʈũ��( 1���� �ִ� 5�����ִ� �׻� 10��������)
    --mySQL�� int����            -- varchar2(10) : �ִ�� 10������ 1���� �ִ¸�ŭ�� ���� 1�������� 1�� 5�������� 5��
    primary key(i_student)      -- �ֹι�ȣ ���ڿ��� �����ϴ� ���� : �տ� 00�� �����־ (00�̵��� ���ڴ� �� ���ư�)
    --primary key�� ���߿� �����ϴ� ���
    -- ,�ϸ鼭 ���ڷ� �׳� �߽ᵵ�� ���������� �޸� ���̸�ȵ�
    --sql�� ������ ���̺��� �����ִ� (ctrl + enter)�� �ؾ߸� ���̺� �ö󰣴�
    --�׳� txt���Ϸ� �����ߴٰ� ���� �����ص���
);

--------------------------------INSERT---------------------------------------------------
INSERT INTO t_student --t_student���ٰ� ���� ����ְڴ�
(i_student, nm, age) --i_student,nm,age �������ٰ� ���� �ְڴ�
VALUES     -- �� ����
(3,'�����',22);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(4,'��ÿ�',23);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(5,'������',24);
---------------------------------------------------------------------------------------------------
--------------------------------------UPDATE-------------------------------------------------
UPDATE t_student -- ����
SET nm = '�赵��', --nm�� age�� ���� �Է��Ѱ����� ����(SET)�ϰڴ�
age = 21 -- age = age + 1�� ����
WHERE i_student = 2; --��ġ�� i_student�� ���� 2�ΰ�
--WHERE�� ���ǹ� i_student�� ���� 2�ΰ� �̰� ���ٸ� ��簪�� �� �ٲ�
--UPDATE�� DELETE�� ������ �����
---------------------------------------------------------------------------------------------------
----------------------------------------DELETE-------------------------------------------------
DELETE FROM t_student -- t_sudent���� ���� ���ڴ�(����)
WHERE i_student = 3; -- ��ġ�� i_student�� 3�ΰ�
--------------------------------------------------------------------------------------
---------------------------------------------------SELECT-----------------------------------------------
--SELECT*FROM t_student  -- �о���� - *�� ��� �÷� t_student���� ��簪�� �о�´�
SELECT i_student,nm,age as student_age --�̷��� ������ ���°� ��õ as student_age �����ָ� ����� ǥ���Ҷ� �÷����� �����ش�� ǥ������(����)
FROM t_student
WHERE (i_student <=3 AND age =21) OR i_student = 5 --(i_student�� ���� 3������ ���ڵ�)�� ������ AND (age���� 21�η��ڵ�)��  AND�� �Ѵ� true�϶� OR �Ǵ� i_student���� 5�� ���ڵ�
ORDER BY i_student,age,nm; --�������ָ� 1,2,3,4,5������ �ȴ� �ڿ� DESC�־��ָ� �������� ���� (�⺻�� ASC ��������)
                            -- ���� �տ������� i_student�� �ߺ��Ȱ� �ִٸ� age���������� �� �ߺ��̶�� nm������ ����
                            --ORDER BY�� �׻� ��������
                            
SELECT i_student,nm,age as student_age
FROM t_student
ORDER BY nm ASC, age DESC; --�̸��� ������������ �ϴٰ� �̸��� �ߺ��ȴٸ� ���̷� ��������

SELECT i_student,nm,age as student_age
FROM t_student
--WHERE nm = '��ÿ�' ���� ��ÿ��� �˻�
--WHERE nm LIKE '��%'  -- nm���� ���Ͼձ��ڰ� ���� ���
WHERE nm LIKE '%ȿ%' -- nm�� ȿ�� ���Ե� ���
--WHERE nm LIKE '%��' -- nm�� ���� �ޱ��ڰ� ���λ��

ORDER BY age DESC, nm DESC; --���� ���������ϴٰ� ���̰� ������ �̸� ��������
--ORDER�� �������ָ� �Ҷ����� �����̵�

SELECT 1 as dd,'����' as nm,i_student FROM t_student
--1�̶� ���� ǥ���ϴ°��� �÷����� dd / '����'��� ���� �������ִ� �÷����� nm / t_student���ִ� i_student�� ���� ������
-- t_student�� i_student�� 9���̱⋚���� 9���� ����
union all
SELECT 2 as dd,'ȣȣ' as nm,i_student FROM t_student;
--�̷��� ���������� ���

-------------------------------------------------------------------------------------------------------
----------------------------������ ���̺� ����----------------------------------------------------------

-- DELETE FROM t_student; ���̺����� ��ü ����

-- DELETE FROM t_student
-- WHERE i_student in (1,2,3); 1,2,3�� ������ ����

-- DELETE FROM t_student
-- WHERE o_student = 1 or i_student = 2 or i_student = 3; 1,2,3�� �����ͻ��� ���۸ս��� �� ����
---------------------------------------------------------------------------------------------------
----------------------------���ؼ� ������ INSERT-------------------------------------------------
INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(1,'���ϱ�',20);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(2,'�赵��',21);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(3,'�����',22);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(4,'��ÿ�',23);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(5,'������',24);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(6,'������',25);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(7,'������',26);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(8,'���缷',23);

INSERT INTO t_student 
(i_student, nm, age) 
VALUES   
(9,'��ȿ��',23);
-------------------------------------------------------------------------------------------
-------------------------------�̼�---------------------------------------------------------
--employees ���̺���
--��ȭ��ȣ(423�� ���Ե� ����� ��� ��������)
SELECT *
FROM employees
WHERE phone_number like '%423.%';


--���̺��� pk(primary key)�� �ʿ�
--pk - �ĺ��ϱ� ���� �� (���ڵ带 ����)
--   - pk�� ���� �ߺ��Ȱ��� ������� �ʴ´�
--   - �ظ��ϸ� ������(1,2,3,4...)�ִ°� ��õ
--pk(unique,not null) Ư¡
--unique = �ߺ�X
--not null = ���� ������ ���� null�� ���� �ʴ´�
--pk�ִ¼��� �� �α���� �ڵ����� ��
--
--t_student		varchar2	number     <----Ÿ��   (�ڹ��� Ÿ���̶� ����)
--pk(primary key)	name	age	<----Ÿ�Ը� (�ڹ��� �������̶� ����)
--	1	aaa	20   <-----������ ���ڵ�� �θ�
--	2	bbb	21	���ڵ�(����)���� pk�� �־����
--
--DB�� ��ҹ��� �Ȱ���, �Ұ�ȣ�� ��
--t_student ���� t i�� ����� ���ϱ����� �׳ɾ��°�

SELECT
UPPER(first_name) as first_name           -- UPPER �� ��� �빮�ڷ� ��Ÿ��
FROM EMPLOYEES
WHERE PHONE_NUMBER like '%.423.%';        -- ���ѹ� �÷��� �߰� 423�� ��Ÿ���ڴ� �� �� 


commit;
