
-- create-audit-tables-sqlserver.sql
--
-- This SQL script creates all the tables and indexes that the
-- Management Server Audit database uses to store information of
-- administrator actions.
--

--USE Audit Database;

--------------------------------------------------------------------
-- Creates table t_login_logout_audit.
--------------------------------------------------------------------

CREATE TABLE t_login_logout_audit (              
                  username varchar(255) NOT NULL,          
                  ipaddress varchar(255) NOT NULL,         
                  operation varchar(255) NOT NULL,         
                  operation_result varchar(255) NOT NULL,  
                  description varchar(255) NOT NULL,       
                  operation_time datetime NOT NULL,        
                  operator varchar(255) NOT NULL,
                  PRIMARY KEY (username,operation_time)           
                );

CREATE INDEX operator
ON t_login_logout_audit(operator);

CREATE INDEX ipaddress
ON t_login_logout_audit(ipaddress);

CREATE INDEX operation
ON t_login_logout_audit(operation);


------------------------------------------------------------------------
-- Creates table t_user_details_audit.
------------------------------------------------------------------------

CREATE TABLE t_user_details_audit (         
                  username varchar(255) NOT NULL,     
                  operation varchar(255) NOT NULL,    
                  details text,              
                  operation_time datetime NOT NULL,   
                  operator varchar(255) NOT NULL,
                  PRIMARY KEY (username,operation_time)      
                );
                
CREATE INDEX operator
ON t_user_details_audit(operator);

CREATE INDEX operation
ON t_user_details_audit(operation);


------------------------------------------------------------------------
-- Creates table t_system_details_audit .
------------------------------------------------------------------------

CREATE TABLE t_system_details_audit  (       
                    operation varchar(255) NOT NULL,    
                    scope varchar(255) NOT NULL,        
                    details text  NOT NULL,              
                    operation_time datetime NOT NULL,   
                    operator varchar(255) NOT NULL      
                  );            
                
CREATE INDEX operation_time
ON t_system_details_audit(operation_time);

CREATE INDEX operator
ON t_system_details_audit(operator);                
                
CREATE INDEX operation
ON t_system_details_audit(operation);  
