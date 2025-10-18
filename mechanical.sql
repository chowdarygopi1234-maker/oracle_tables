
SQL> INSERT INTO machines(machine_id,machine_name,dept,status)
  2  VALUES('MCH01','Lathe','Cutting','Working');

1 row created.

SQL> INSERT INTO machines(machine_id,machine_name,dept,status)
  2  VALUES('MCH02','Drill Press','Assembly','Maintenance');

1 row created.

SQL> INSERT INTO machines(machine_id,machine_name,dept,status)
  2  VALUES('MCH03','CNC Mill','Fabrication','Working');

1 row created.

SQL> INSERT INTO operators (op_id,op_name,machine_id,shift,salary)
  2  VALUES('O01','Gopi','MCH01','Day',40000);

1 row created.

SQL> INSERT INTO operators (op_id,op_name,machine_id,shift,salary)
  2  VALUES('O02','Sai','MCH01','Night',38000);

1 row created.

SQL> INSERT INTO operators (op_id,op_name,machine_id,shift,salary)
  2  VALUES('O03','Vijay','MCH03','Day',42000);

1 row created.


SQL> INSERT INTO production(prod_id,machine_id,prod_date,units_produced,hours_run)
  2  VALUES('PR01','MCH01',TO_DATE('2025-10-01','YYYY-MM-DD'),500,8);

1 row created.

SQL> INSERT INTO production(prod_id,machine_id,prod_date,units_produced,hours_run)
  2  VALUES('PR02','MCH02',TO_DATE('2025-10-01','YYYY-MM-DD'),200,6);

1 row created.

SQL> INSERT INTO production(prod_id,machine_id,prod_date,units_produced,hours_run)
  2  VALUES('PR03','MCH03',TO_DATE('2025-10-02','YYYY-MM-DD'),600,9);

1 row created.
