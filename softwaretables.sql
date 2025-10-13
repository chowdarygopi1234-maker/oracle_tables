SQL> PROMPT CREATE TABLE employees(
CREATE TABLE employees(
SQL> PROMPT emp_id VARCHAR2(10),
emp_id VARCHAR2(10),
SQL> PROMPT emp_name VARCHAR2(50),
emp_name VARCHAR2(50),
SQL> PROMPT role VARCHAR2(50),
role VARCHAR2(50),
SQL> PROMPT salary NUMBER,
salary NUMBER,
SQL> PROMPT project_id VARCHAR2(10)
project_id VARCHAR2(10)
SQL> PROMPT );
)
SQL> SELECT 'INSERT INTO employees VALUES('''
  2  ||emp_id||''','''
  3  ||emp_name||''','''
  4  ||role||''','
  5  ||salary||','''
  6  ||project_id||''');'
  7  FROM employees;

'INSERTINTOEMPLOYEESVALUES('''||EMP_ID||''','''||EMP_NAME||''','''||ROLE||''','|
--------------------------------------------------------------------------------
INSERT INTO employees VALUES('E101','Gopi','Developer',65000,'p01');            
INSERT INTO employees VALUES('E102','Adarsh','Tester',60000,'p01');             
INSERT INTO employees VALUES('E103','Vijay','Analyst',60000,'p02');             
INSERT INTO employees VALUES('E104','Jay','Manager',90000,'p03');               
INSERT INTO employees VALUES('E105','Sai','Intern',30000,'p02');                

SQL> PROMPT CREATE TABLE projects(
CREATE TABLE projects(
SQL> PROMPT project_id VARCHAR2(10),
project_id VARCHAR2(10),
SQL> PROMPT project_name VARCHAR2(50),
project_name VARCHAR2(50),
SQL> PROMPT client VARCHAR2(50),
client VARCHAR2(50),
SQL> PROMPT budget NUMBER,
budget NUMBER,
SQL> PROMPT status VARCHAR2(20)
status VARCHAR2(20)
SQL> PROMPT );
)
SQL> SELECT 'INSERT INTO projects VALUES('''
  2  ||project_id||''','''
  3  ||project_name||''','''
  4  ||client||''','
  5  ||budget||','''
  6  ||status||''');'
  7  FROM projects;

'INSERTINTOPROJECTSVALUES('''||PROJECT_ID||''','''||PROJECT_NAME||''','''||CLIEN
--------------------------------------------------------------------------------
INSERT INTO projects VALUES('P01','CRM System','Infosys',500000,'Active');      
INSERT INTO projects VALUES('P02','Bank Portal','HDFC',800000,'Testing');       
INSERT INTO projects VALUES('P03','E-Commerce','AMAZON',900000,'Completed');    

SQL> PROMPT CREATE TABLE tasks(
CREATE TABLE tasks(
SQL> PROMPT task_id VARCHAR2(10),
task_id VARCHAR2(10),
SQL> PROMPT project_id VARCHAR2(10),
project_id VARCHAR2(10),
SQL> PROMPT emp_id VARCHAR2(10),
emp_id VARCHAR2(10),
SQL> PROMPT task_name VARCHAR2(50),
task_name VARCHAR2(50),
SQL> PROMPT hours NUMBER,
hours NUMBER,
SQL> PROMPT status VARCHAR2(20)
status VARCHAR2(20)
SQL> PROMPT );
)
SQL> SELECT ' INSERT INTO tasks VALUES('''
  2  ||task_id||''','''
  3  ||project_id||''','''
  4  ||emp_id||''','''
  5  ||task_name||''','
  6  ||hours||','''
  7  ||status||''');'
  8  FROM tasks;

'INSERTINTOTASKSVALUES('''||TASK_ID||''','''||PROJECT_ID||''','''||EMP_ID||''','
--------------------------------------------------------------------------------
 INSERT INTO tasks VALUES('T01','P01','E101','UI Design',15,'Done');            
 INSERT INTO tasks VALUES('T02','P01','E102','Testing Login',12,'In Progress'); 
 INSERT INTO tasks VALUES('T03','P02','E103','Database Setup',18,'Done');       
 INSERT INTO tasks VALUES('T04','P02','E105','Data Entry',10,'Pending');        
 INSERT INTO tasks VALUES('T05','P03','E104','Team Review',20,'Done');          

SQL> SPOOL OFF
