SQL> SELECT*FROM civil_projects;

PROJ_ID    PROJECT_NAME                                                         
---------- --------------------------------------------------                   
CITY                                               COST_MILLION                 
-------------------------------------------------- ------------                 
STATUS                                                                          
--------------------                                                            
CP01       Bridge                                                               
Mumbai                                                       40                 
Ongoing                                                                         
                                                                                
CP02       Mall                                                                 
Delhi                                                        25                 
Completed                                                                       

PROJ_ID    PROJECT_NAME                                                         
---------- --------------------------------------------------                   
CITY                                               COST_MILLION                 
-------------------------------------------------- ------------                 
STATUS                                                                          
--------------------                                                            
                                                                                
CP03       Apartment                                                            
Pune                                                         35                 
Ongoing                                                                         
                                                                                

SQL> SELECT*FROM engineers;

ENG_ID     ENG_NAME             PROJ_ID    SPECIALIZATION           SALARY      
---------- -------------------- ---------- -------------------- ----------      
EN01       Adarsh               CP01       Structural                85000      
EN02       Gopi                 CP01       Civil Design              80000      
EN03       Sai                  CP02       Planning                  75000      
EN04       Raju                 CP03       Site Supervisor           70000      

SQL> SELECT*FROM materials;

MAT_ID     PROJ_ID    MAT_NAME               QUANTITY COST_PER_UNIT             
---------- ---------- -------------------- ---------- -------------             
M01        CP01       Cement                      500           350             
M02        CP02       Steel                       300           500             
M03        CP03       Brics                     10000             6             
M04        CP01       Sand                        200           200             

SQL> SPOOL OFF



> CREATE TABLE civil_projects(
  2  proj_id VARCHAR2(10) PRIMARY KEY,
  3  project_name VARCHAR2(50),
  4  city VARCHAR2(50),
  5  cost_million NUMBER (10),
  6  status VARCHAR2(20)
  7  );

Table created.

SQL> CREATE TABLE engineers(
  2  eng_id VARCHAR2(10) PRIMARY KEY,
  3  eng_name VARCHAR2(20),
  4  proj_id VARCHAR2(10),
  5  specialization VARCHAR2(20),
  6  salary NUMBER(10),
  7  CONSTRAINT fk_engineer_proj FOREIGN KEY (proj_id) REFERENCES civil_projects(proj_id)
  8  );

Table created.

SQL> CREATE TABLE materials(
  2  mat_id VARCHAR2(10) PRIMARY KEY,
  3  proj_id VARCHAR2(10),
  4  mat_name VARCHAR2(20),
  5  quantity NUMBER(10),
  6  cost_per_unit NUMBER(10),
  7  CONSTRAINT fk_materials_proj FORIEGN KEY (proj_id) REFERENCES civil_projects(proj_id)
  8  );
CONSTRAINT fk_materials_proj FORIEGN KEY (proj_id) REFERENCES civil_projects(proj_id)
                                         *
ERROR at line 7:
ORA-00907: missing right parenthesis


SQL> CREATE TABLE materials(
  2  mat_id VARCHAR2(10) PRIMARY KEY,
  3  proj_id VARCHAR2(10),
  4  mat_name VARCHAR2(20),
  5  quantity NUMBER(10),
  6  cost_per_unit NUMBER(10),
  7  CONSTRAINT fk_materials_proj FOREIGN KEY (proj_id) REFERENCES civil_projects(proj_id)
  8  );

Table created.

SQL> INSERT INRO civil_projects(proj_id,project_name,city,cost_million,status)
  2  VALUES('CP01','Bridge','Mumbai',40,'Ongoing');
INSERT INRO civil_projects(proj_id,project_name,city,cost_million,status)
       *
ERROR at line 1:
ORA-00925: missing INTO keyword


SQL> INSERT INTO civil_projects(proj_id,project_name,city,cost_million,status)
  2  VALUES('CP01','Bridge','Mumbai',40,'Ongoing');

1 row created.

SQL> INSERT INTO civil_projects(proj_id,project_name,city,cost_million,status)
  2  VALUES('CP02','Mall','Delhi',25,'Completed');

1 row created.

SQL> INSERT INTO civil_projects(proj_id,project_name,city,cost_million,status)
  2  VALUES('CP03','Apartment','Pune',35,'Ongoing');

1 row created.

SQL> INSERT INTO engineers(eng_id,eng_name,proj_id,specialization,salary)
  2  VALUES('EN01','Adarsh','CP01','Structural',85000);

1 row created.

SQL> INSERT INTO engineers(eng_id,eng_name,proj_id,specialization,salary)
  2  VALUES('EN02','Gopi','CP01','Civil Design',80000);

1 row created.

SQL> INSERT INTO engineers(eng_id,eng_name,proj_id,specialization,salary)
  2  VALUES('EN03','Sai','CP02','Planning',75000);

1 row created.

SQL> INSERT INTO engineers(eng_id,eng_name,proj_id,specialization,salary)
  2  VALUES('EN03','Raju','CP03','Site Supervisor',70000);
INSERT INTO engineers(eng_id,eng_name,proj_id,specialization,salary)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008329) violated


SQL> INSERT INTO engineers(eng_id,eng_name,proj_id,specialization,salary)
  2  VALUES('EN04','Raju','CP03','Site Supervisor',70000);

1 row created.

SQL> INSERT INTO materials(mat_id,proj_id,mat_name,quantity,cost_per_unit)
  2  VALUES('M01','CP01','Cement',500,350);

1 row created.

SQL> INSERT INTO materials(mat_id,proj_id,mat_name,quantity,cost_per_unit)
  2  VALUES('M02','CP02','Steel',300,500);

1 row created.

SQL> INSERT INTO materials(mat_id,proj_id,mat_name,quantity,cost_per_unit)
  2  VALUES('M03','CP03','Brics',10000,6);

1 row created.

SQL> INSERT INTO materials(mat_id,proj_id,mat_name,quantity,cost_per_unit)
  2  VALUES('M04','CP01','Sand',200,200);

1 row created.

