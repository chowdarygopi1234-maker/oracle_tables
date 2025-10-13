SQL> SELECT 'INSERT INTO farmers VALUES('''
  2  ||farmer_id||''','''
  3  ||farmer_name||''','
  4  ||age||','''
  5  ||village||''');'
  6  FROM farmers;

'INSERTINTOFARMERSVALUES('''||FARMER_ID||''','''||FARMER_NAME||''','||AGE||','''
--------------------------------------------------------------------------------
INSERT INTO farmers VALUES('F01','Ramesh',45,'GreenValley');                    
INSERT INTO farmers VALUES('F02','Lakshmi',38,'SunTown');                       
INSERT INTO farmers VALUES('F03','Gopi',30,'RiverSide');                        
INSERT INTO farmers VALUES('F04','Kavita',50,'HillTop');                        

SQL> SELECT ' INSERT INTO fields VALUES('''
  2  ||field_id||''','''
  3  ||farmer_id||''','
  4  ||area_acrres||','''
  5  ||soil_type||''','''
  6  ||irrigation||''');'
  7  FROM fields;
||area_acrres||','''
  *
ERROR at line 4:
ORA-00904: "AREA_ACRRES": invalid identifier 


SQL> SELECT ' INSERT INTO fields VALUES('''
  2  ||field_id||''','''
  3  ||farmer_id||''','
  4  ||area_acres||','''
  5  ||soil_type||''','''
  6  ||irrigation||''');'
  7  FROM fields;

'INSERTINTOFIELDSVALUES('''||FIELD_ID||''','''||FARMER_ID||''','||AREA_ACRES||',
--------------------------------------------------------------------------------
 INSERT INTO fields VALUES('FL01','F01',5,'Loamy','Yes');                       
 INSERT INTO fields VALUES('FL02','F02',8,'Clay','No');                         
 INSERT INTO fields VALUES('FL03','F03',4,'Sandy','Yes');                       
 INSERT INTO fields VALUES('FL04','F04',10,'Loamy','Yes');                      

SQL> SELECT' INSERT INTO crops VALUES('''
  2  ||crop_id||''','''
  3  ||field_id||''','''
  4  ||crop_name||''','''
  5  ||season||''','
  6  ||yield_tonnes||');'
  7  FROM crops;

'INSERTINTOCROPSVALUES('''||CROP_ID||''','''||FIELD_ID||''','''||CROP_NAME||''',
--------------------------------------------------------------------------------
 INSERT INTO crops VALUES('C01','FL01','Rice','Kharif',15);                     
 INSERT INTO crops VALUES('C02','FL02','Wheat','Rabi',20);                      
 INSERT INTO crops VALUES('C03','FL03','Maize','Summer',10);                    
 INSERT INTO crops VALUES('C04','FL04','Sugarcane','Annual',30);                

SQL> SPOOL OFF;
