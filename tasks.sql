SQL> SPOOL OFF
task 1  FROM SOFTWARE INDUSTRY

1. Show all employees who earn more than 60,000


SQL> SELECT * FROM employees WHERE salary>60000;

EMP_ID     EMP_NAME
---------- --------------------------------------------------
ROLE                     SALARY PROJECT_ID
-------------------- ---------- ----------
E101       Gopi
Developer                 65000 p01

E104       Jay
Manager                   90000 p03

2.Display all projects where status = 'Active'.


SQL> SELECT* FROM projects WHERE status='Active';

PROJECT_ID PROJECT_NAME                                       CLIENT
---------- -------------------------------------------------- ----------
    BUDGET STATUS
---------- ----------
P01        CRM System                                         Infosys
    500000 Active

3. LIST ALL EMPLOYEES WHOSE NAMES START WITH 'A'.



SQL> SELECT*FROM employees WHERE emp_name LIKE  'A%';

EMP_ID     EMP_NAME
---------- --------------------------------------------------
ROLE                     SALARY PROJECT_ID
-------------------- ---------- ----------
E102       Adarsh
Tester                    60000 p01

4. SHOW ALL EMPLOYEES,ORDERED BY SALARY DESCENDING.

SQL> SELECT * FROM employees  ORDER BY salary DESC;

EMP_ID     EMP_NAME
---------- --------------------------------------------------
ROLE                     SALARY PROJECT_ID
-------------------- ---------- ----------
E104       Jay
Manager                   90000 p03

E101       Gopi
Developer                 65000 p01

E102       Adarsh
Tester                    60000 p01


EMP_ID     EMP_NAME
---------- --------------------------------------------------
ROLE                     SALARY PROJECT_ID
-------------------- ---------- ----------
E103       Vijay
Analyst                   60000 p02

E105       Sai
Intern                    30000 p02


5.SHOW EACH EMPLOYEES PROJECT NAME USING A JOIN BETWEEN EMPLOEESAND PROJECTS

SQL> SELECT e.emp_name,p.project_name
  2  FROM employees e
  3  JOIN projects p
  4  ON UPPER(e.project_id)=UPPER(p.project_id);

EMP_NAME
--------------------------------------------------
PROJECT_NAME
--------------------------------------------------
Gopi
CRM System

Adarsh
CRM System

Vijay
Bank Portal


EMP_NAME
--------------------------------------------------
PROJECT_NAME
--------------------------------------------------
Jay
E-Commerce

Sai
Bank Portal

6.SHOW ALL TASKS NAMES WITH THE EMPLOYEES WHO WORKED ON THEM


SQL> SELECT e.emp_name,t.task_name
  2  FROM employees e
  3  JOIN tasks t
  4  ON e.emp_id=t.emp_id;

EMP_NAME
--------------------------------------------------
TASK_NAME
--------------------------------------------------
Gopi
UI Design

Adarsh
Testing Login

Vijay
Database Setup


EMP_NAME
--------------------------------------------------
TASK_NAME
--------------------------------------------------
Sai
Data Entry

Jay
Team Review

7.Find total salary spent per project.


SQL> SELECT p.project_name,p.project_id,p.budget,SUM(e.salary) AS total_salary_spent
  2  FROM employees e
  3  JOIN projects p
  4  ON UPPER(p.project_id)=UPPER(e.project_id)
  5  GROUP BY p.project_name,p.project_id,p.budget;

PROJECT_NAME                                       PROJECT_ID     BUDGET
-------------------------------------------------- ---------- ----------
TOTAL_SALARY_SPENT
------------------
CRM System                                         P01            500000
            125000

Bank Portal                                        P02            800000
             90000

E-Commerce                                         P03            900000
             90000

8. FIND NUMBEER OF EMPLOYEES WORKING ON EACH PROJECT 

 SELECT p.project_name,COUNT(e.emp_name)
  2  FROM projects p
  3  JOIN employees e
  4  ON UPPER(p.project_id)=UPPER(e.project_id)
  5  GROUP BY p.project_name;

PROJECT_NAME                                       COUNT(E.EMP_NAME)
-------------------------------------------------- -----------------
CRM System                                                         2
Bank Portal                                                        2
E-Commerce                                                         1

9.Show average salary of employees grouped by role, only where average > 50000

SQL> SELECT role,AVG(salary) AS avg_salary
  2  FROM employees
  3  GROUP BY role
  4  HAVING AVG(salary)>50000;

ROLE                 AVG_SALARY
-------------------- ----------
Developer                 65000
Tester                    60000
Analyst                   60000
Manager                   90000

10.Increase salary by 10% for all developers.


SQL> UPDATE employees
  2  SET salary = salary*1.10
  3  WHERE UPPER(role)='DEVELOPER';


11.Delete all employees who are interns.


SQL> DELETE FROM tasks
  2  WHERE emp_id IN(
  3  SELECT emp_id FROM employees WHERE UPPER(role)='INTERN'
  4  );


SQL> DELETE FROM employees
  2  WHERE UPPER (role)='INTERN';
