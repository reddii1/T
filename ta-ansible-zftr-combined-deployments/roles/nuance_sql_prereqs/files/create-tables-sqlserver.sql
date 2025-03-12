
-- create-tables.sql
--
-- This SQL script creates all the tables and indexes that the
-- Management Server uses to store information concerning
-- calllogs, debug logs, configuration, etc.
--

-- USE mserver;

--------------------------------------------------------------------
-- Create the versions table.
--------------------------------------------------------------------

CREATE TABLE t_versions (
  version varchar(11) NOT NULL,
  install_time datetime NOT NULL,
  
  PRIMARY KEY (version)
);

--INSERT INTO t_versions VALUES ( 3, NOW() );

------------------------------------------------------------------------
-- Create the users table(s).
------------------------------------------------------------------------

CREATE TABLE t_users (
    username varchar (255) NOT NULL,
    password varchar (255) NOT NULL,
    consecutive_failed_logins int NOT NULL,
    last_login_attempt_time datetime NULL,
    last_successful_login_time datetime NULL,
    user_privileges text NOT NULL,
    real_first_name varchar (255) NOT NULL,
    real_last_name varchar (255) NOT NULL,
    email varchar (255) NOT NULL,
    phone varchar (255) NOT NULL,
    pager varchar (255) NOT NULL,
    misc text NOT NULL,
    password_changed_time datetime NULL,
    last_four_passwords text NULL,
    PRIMARY KEY (username)
);

CREATE TABLE t_users_audit (
    username varchar (255) NOT NULL,
    audit_time datetime NOT NULL,
    audit_info text NOT NULL
);

------------------------------------------------------------------------
-- Create the settings table.
------------------------------------------------------------------------

CREATE TABLE t_settings_user (
    id varchar (255) NOT NULL ,
    setting_key varchar (255) NOT NULL ,
    setting_value text NOT NULL
);

----------------------------------------------------------------------
-- Create the calendar table
--
-- The id column value is formed using concatenation of yyyymmddhh,
-- and it is accurate up to the hour.  This will fit into a signed
-- integer range.
----------------------------------------------------------------------
CREATE TABLE t_calendar (
       id int NOT NULL,
       year int NOT NULL,
       month int NOT NULL,
       day int NOT NULL,
       hour int NOT NULL,
       week_of_month int NOT NULL,
       week_of_year int NOT NULL,
       day_of_week int NOT NULL,
       year_of_week int NOT NULL,

       PRIMARY KEY (id)
);


------------------------------------------------------------------------
-- Create the calllogs tables.
------------------------------------------------------------------------

CREATE TABLE t_calllog_users (
    id int NOT NULL ,
    name varchar (64) NOT NULL,
    dir_name varchar(255),

    PRIMARY KEY (id)
) ;

--INSERT INTO t_calllog_users VALUES (1, "Nuance", "Nuance");

CREATE TABLE t_calllog_apps (
    id int NOT NULL ,
    user_id int NOT NULL ,
    name varchar (64) NOT NULL,
    dir_name varchar(255),

    PRIMARY KEY (id)
);

--INSERT INTO t_calllog_apps VALUES (1, 1, "Pizza Talk", "PizzaTalk");

CREATE TABLE t_calllog_calls (
    id int NOT NULL ,
    app_id int NOT NULL ,
    rel_path varchar (255) NOT NULL ,
    channel_id varchar (64) NOT NULL ,
    session_id varchar (36),
    log_type varchar (255) NOT NULL ,
    log_version varchar (255) NOT NULL ,
    host_name varchar (64) NOT NULL ,
    program_name varchar (255) NOT NULL ,
    package_name varchar (255) NOT NULL ,
    call_start int NOT NULL ,
    call_end int DEFAULT NULL,
    time_key int NOT NULL, 
    local_url varchar(255),
    remote_url varchar(255),
    tenant_id varchar(15) NOT NULL,
    group_id numeric(11,0) default 0,
    PRIMARY KEY (call_start, channel_id, app_id),
    
) ;
CREATE UNIQUE INDEX IX_ID_t_calllog_calls
  ON t_calllog_calls(id);

  CREATE INDEX IX1_t_calllog_calls
  ON t_calllog_calls(app_id);  
  
  CREATE INDEX IX2_t_calllog_calls
  ON t_calllog_calls(time_key);
  
  CREATE INDEX IX3_t_calllog_calls
  ON t_calllog_calls(session_id);
  
  CREATE INDEX IX4_t_calllog_calls
  ON t_calllog_calls(local_url);
  
  CREATE INDEX IX5_t_calllog_calls
  ON t_calllog_calls(remote_url);
  
  

CREATE TABLE t_calllog_utts (
    id int NOT NULL ,
    call_id int NOT NULL ,
    recog_start_time int NOT NULL ,
    grammar text DEFAULT NULL ,
    barge_in varchar (1) DEFAULT NULL ,
    status varchar (64) DEFAULT NULL ,
    num_results smallint DEFAULT NULL ,
    dg_num_inserted smallint DEFAULT NULL ,
    utterance_filename varchar (255)  DEFAULT NULL ,
    state_duration float DEFAULT NULL ,
    latency float DEFAULT NULL ,
    begin_time float DEFAULT NULL ,
    ep_start_seconds float DEFAULT NULL ,
    ep_end_seconds float DEFAULT NULL,
    grammar_label varchar(198) DEFAULT NULL,
    PRIMARY KEY (id)
) ;


CREATE INDEX IX1_t_calllog_utts
  ON t_calllog_utts(call_id);
  
  CREATE INDEX IX2_t_calllog_utts
  ON t_calllog_utts(grammar_label);
  
  CREATE INDEX IX3_t_calllog_utts
  ON t_calllog_utts(status);




CREATE TABLE t_calllog_dginserted (
    utterance_id int NOT NULL ,
    dg_inserted_index smallint NOT NULL ,
    dg_inserted varchar (255) DEFAULT NULL
) ;

CREATE INDEX IX_t_calllog_dginserted
ON t_calllog_dginserted(utterance_id);



CREATE TABLE t_calllog_results (
    utterance_id int NOT NULL ,
    result_index smallint NOT NULL ,
    result varchar (255) DEFAULT NULL ,
    confidence smallint DEFAULT NULL ,
    probability float DEFAULT NULL ,
    num_nl_interpretations smallint DEFAULT NULL
) ;


 CREATE INDEX IX_t_calllog_results
  ON t_calllog_results(utterance_id, result_index);


CREATE TABLE t_calllog_nlinterps (
    utterance_id int NOT NULL ,
    result_index smallint NOT NULL ,
    nl_index smallint NOT NULL ,
    nl_interpretation varchar (255) DEFAULT NULL
);


 CREATE INDEX IX_t_calllog_nlinterps
  ON t_calllog_nlinterps(utterance_id, result_index, nl_index);

CREATE TABLE t_calllog_slotconfs (
    utterance_id int NOT NULL ,
    result_index smallint NOT NULL ,
    nl_index smallint NOT NULL ,
    seq_nr smallint NOT NULL ,
    slot_name varchar (255) NOT NULL ,
    slot_confidence smallint DEFAULT NULL
) ;

CREATE INDEX IX_t_calllog_slotconfs
  ON t_calllog_slotconfs(utterance_id, result_index, nl_index);


CREATE TABLE t_calllog_extended (
    utterance_id int ,
    seq_nr int NOT NULL ,
    log_key varchar (255) NOT NULL ,
    log_val text NOT NULL,
    call_id int 
) ;


  CREATE INDEX IX1_t_calllog_extended
  ON t_calllog_extended(utterance_id);
  
  CREATE INDEX IX2_t_calllog_extended
  ON t_calllog_extended(log_key);
  
  CREATE INDEX IX3_t_calllog_extended
  ON t_calllog_extended(call_id);


  
 




CREATE TABLE t_calllog_tasks (
    id int NOT NULL,
    utterance_id int ,
    app_id int NOT NULL,
    name varchar(64) NOT NULL,
    complete tinyint,
    reason varchar(180) ,
    time_key int,
    host_name varchar (64) NOT NULL ,
    tenant_id varchar(15) NOT NULL ,
    status varchar(45) ,
    result varchar(10) ,
    call_id int ,
    duration numeric(11,0) default NULL,
    group_id numeric(11,0) default 0,
    PRIMARY KEY (id)
);


 CREATE INDEX IX1_t_calllog_tasks
 ON t_calllog_tasks(host_name);

 CREATE INDEX IX2_t_calllog_tasks
 ON t_calllog_tasks(utterance_id);
  
 CREATE INDEX IX3_t_calllog_tasks
 ON t_calllog_tasks(time_key);
 
 CREATE INDEX IX4_t_calllog_tasks
 ON t_calllog_tasks(call_id);
 
 
	
------------------------------------------------------------------------
-- Create the bic call log tables.
------------------------------------------------------------------------
CREATE TABLE t_biclog (
     id numeric(9,0) IDENTITY(1,1) NOT NULL,
     host_id char(36) NOT NULL,
     company_dir varchar(64) NOT NULL,
     app_dir varchar(64) NOT NULL,
     rel_path varchar(255) NOT NULL,
     filename varchar(255) NOT NULL,
     timestamp datetime DEFAULT NULL,
     data varbinary(MAX) NOT NULL,     
     PRIMARY KEY (id),
     UNIQUE (rel_path, company_dir, app_dir)
     
);








------------------------------------------------------------------------
-- Create the clapi log tables.
------------------------------------------------------------------------
CREATE TABLE t_clapi_files (
       id int NOT NULL,
       app_name varchar (64) NOT NULL,
       host_name varchar (64) NOT NULL,
       file_prefix varchar (255) NOT NULL,
       file_num int NOT NULL,
       file_offset int NOT NULL,
       file_ts datetime,
       clapi_version int NOT NULL,
       category varchar (16) NOT NULL,
       service_id varchar(36),

       PRIMARY KEY (id)
) ;


 CREATE INDEX IX1_t_clapi_files
  ON t_clapi_files(host_name, file_prefix);

   CREATE INDEX IX2_t_clapi_files
  ON t_clapi_files(host_name, file_prefix, file_num);

  CREATE INDEX IX3_t_clapi_files
  ON t_clapi_files(app_name, host_name, service_id);





--
-- type is the logging level, rather than storing a string, we store
-- an int with the following mapping (consistent with internal clapi
-- implementation):
--
--    NONE            0
--    CRITICAL_ALARM  1
--    MAJOR_ALARM     2
--    MINOR_ALARM     4
--    FATAL           8
--    ERROR           16
--    WARN            32
--    USER_ERROR      64
--    USER_WARN       128
--    STATUS          256
--    INFO            1024
--    D_INFO          4096
--    VD_INFO         16384
--
-- msg_timestamp is the message timestamp up to the seconds, the milliseconds
-- is captured in msg_timestamp_us field, which contains the real milliseconds
-- plus the fake microseconds used for sequencing purpose for messages with
-- the same milliseconds and timestamp.  For example, 222001 means 222
-- milliseconds and message 001.
-- 
CREATE TABLE t_clapi_msgs (
       file_id int NOT NULL,
       session_id varchar (36),
       type int NOT NULL,
       msg_id varchar (255),
       msg_timestamp datetime NOT NULL,
       msg_timestamp_us int NOT NULL,
       thread_id int,
       source varchar (64),
       internal_source varchar (255),
       msg_length int,
       msg text NOT NULL
);


 CREATE INDEX IX1_t_clapi_msgs
  ON t_clapi_msgs(file_id);

  CREATE INDEX IX2_t_clapi_msgs
  ON t_clapi_msgs(type);

  CREATE INDEX IX3_t_clapi_msgs
  ON t_clapi_msgs(msg_timestamp, msg_timestamp_us);

  CREATE INDEX IX4_t_clapi_msgs
  ON t_clapi_msgs(session_id);





------------------------------------------------------------------------
-- Create the alarms tables.
------------------------------------------------------------------------
CREATE TABLE t_alarms (
       id int NOT NULL,
       service_id varchar(36),
       clapi_version int NOT NULL,
       session_id varchar (255),
       category varchar (16) NOT NULL,
       type int NOT NULL,
       msg_id varchar (255),
       msg_timestamp datetime NOT NULL,
       msg_timestamp_us int NOT NULL,
       host_name varchar (64) NOT NULL,
       app_name varchar (64) NOT NULL,
       thread_id int,
       source varchar (64),
       internal_source varchar (255),
       msg_length int,
       msg text NOT NULL,

       PRIMARY KEY (id)
) ;



  CREATE INDEX IX1_t_alarms
  ON t_alarms(service_id);

  CREATE INDEX IX2_t_alarms
  ON t_alarms(session_id);

  CREATE INDEX IX3_t_alarms
  ON t_alarms(type);

  CREATE INDEX IX4_t_alarms
  ON t_alarms(host_name);
   
  CREATE INDEX IX5_t_alarms
  ON t_alarms(app_name);

  CREATE INDEX IX6_t_alarms
  ON t_alarms(msg_timestamp, msg_timestamp_us);





------------------------------------------------------------------------
-- Create the configuration tables.
------------------------------------------------------------------------
CREATE TABLE t_clusters (
  id varchar(100) NOT NULL default '',
  name varchar(100) NOT NULL default '',
  role varchar(255) ,
  parent_id varchar(100) default '',
  PRIMARY KEY (id)
) ;  

CREATE TABLE t_hosts (
  name varchar(255) NOT NULL default '',
  role varchar(255),
  host_name varchar(255) default '',
  id varchar(255) NOT NULL default '',
  cluster_id varchar(100) default NULL,
  resource_name varchar(255) default NULL,
  PRIMARY KEY (id)
);

CREATE TABLE t_service_depend (
  instance_id varchar(100) NOT NULL default '',
  depend_id varchar(100) NOT NULL default ''
);

CREATE TABLE t_service_instances (
  id varchar(100) NOT NULL default '',
  host_id varchar(100) NOT NULL default '',
  type_id varchar(100) NOT NULL default '',
  name varchar(200) NOT NULL default '',
  startup_id numeric(1,0) NOT NULL default '0',
  seq_id numeric(9,0) NOT NULL default '0',
  start_order numeric(9,0) NOT NULL default '0',
  argv text NOT NULL,
  public_id varchar(100) NOT NULL default '', 
  mask numeric(9,0) NOT NULL default '0',
  parameter varchar(255) NOT NULL default '',
  state int NOT NULL default '0',
  vpid numeric(7,0) default '-1',
  PRIMARY KEY  (id)
);

 CREATE UNIQUE INDEX IX_t_service_instances
  ON t_service_instances(host_id, public_id);
  

CREATE TABLE t_service_types (
  id varchar(100) NOT NULL default '',
  name varchar(100) NOT NULL default '',
  image_prefix varchar(100) NOT NULL default 'vws_interpretter',
  mendatory tinyint NOT NULL default '0',
  last_instance numeric(11,0) NOT NULL default '0',
  argv text NOT NULL,
  description text NOT NULL,
  resource_manager char(5)  NULL,
  PRIMARY KEY  (id)
);

------------------------------------------------------------------------
-- Create the service properties tables.
------------------------------------------------------------------------

CREATE TABLE t_properties (
  id varchar(36) NOT NULL default '',
  scope_id varchar(36) NOT NULL default '',
  type_id varchar(36) NOT NULL default '',
  group_id varchar(36) NOT NULL default '',
  param_id varchar(36) NOT NULL default '0',
  value text NOT NULL,
  last_modified_user varchar(255) NOT NULL default '',
  last_modified_time datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (id)
);

CREATE TABLE t_property_groups (
  id varchar(36) NOT NULL default '',
  type_id varchar(36) NOT NULL default '',
  name varchar(64) NOT NULL default '',
  prefix varchar(64) NOT NULL default '',
  PRIMARY KEY  (id,type_id)
);

CREATE TABLE t_property_instances (
  property_id varchar(36) NOT NULL default '',
  instance_name varchar(100) NOT NULL default ''
) ;


CREATE TABLE t_property_params (
  id varchar(36) NOT NULL default '',
  name varchar(4000) NOT NULL , 
  type varchar(10) CHECK(type in ('int','float','bool','string')) NOT NULL default 'string',
  access_mask numeric(11) NOT NULL default '0',
  default_value text,
  minimum_value float,
  maximum_value float,
  description text,
  PRIMARY KEY  (id)
);


CREATE TABLE t_property_tabs (
  id varchar(36) NOT NULL default '',
  type_id varchar(36) NOT NULL default '',
  alternate varchar(100) NOT NULL default '',
  base_uri varchar(255) default NULL,
  PRIMARY KEY (id,type_id)
) ;

CREATE TABLE t_property_scopes (
  id varchar(36) NOT NULL default '',
  object_type numeric(4,0) NOT NULL default '0',
  object_id varchar(100) NOT NULL default '',
  parent_id varchar(36) default ''
);

-- Here we pre-populate the Nuance Network entry in the scope table.

INSERT INTO t_property_scopes ( id, object_type, object_id, parent_id )
       VALUES ( 'network', 0, 'Nuance Network', NULL );

------------------------------------------------------------------------
-- Create table for polling of performance counter
------------------------------------------------------------------------

-- node - node name
-- service-id - the service id of the process
-- timestamp - time at polling
-- name - counter name
-- type - counter type
-- value - counter value as string

CREATE TABLE t_polling_entries (
       node varchar(100) NOT NULL,
       service_id varchar(36) NOT NULL,
       timestamp datetime NOT NULL,
       name varchar(255) NOT NULL,
       type varchar(32) NOT NULL,
       value varchar(64),

       PRIMARY KEY (node, service_id, timestamp, name) 
);

CREATE TABLE t_polling_config (
       node varchar(100) NOT NULL,
       service_id varchar(36) NOT NULL,
       name varchar(255) NOT NULL,
       poll_interval int,

       PRIMARY KEY (node, service_id, name) 
) ;

insert into t_polling_config values('0.0.0.0', '*', '*', 0);


------------------------------------------------------------------------
-- Create the table to keep track of the FTA requests
------------------------------------------------------------------------
CREATE TABLE t_fta_requests (
  id varchar(64) NOT NULL,
  start_time datetime NOT NULL,
  end_time datetime,
  num_files_recv int NOT NULL DEFAULT 0,
  num_files_left int ,
  num_mb_recv  bigint DEFAULT 0 NOT NULL,
  num_b_recv bigint DEFAULT 0 NOT NULL,
  status varchar(64) NOT NULL,
  host varchar(64) NOT NULL,
  dir varchar(255) NOT NULL,
  type varchar(32) NOT NULL,
  [user] varchar(64) NOT NULL,
  app varchar(64) NOT NULL,
  service_id varchar(64) default NULL,
  mints datetime,
  maxts datetime,
  includes varchar(255),
  excludes varchar(255),
  rel_path varchar(255),
  task_id int NOT NULL,
  num_improper_files int NOT NULL DEFAULT 0,

  PRIMARY KEY (id)
);


CREATE INDEX IX1_t_fta_requests
  ON t_fta_requests(status);

  CREATE INDEX IX2_t_fta_requests
  ON t_fta_requests(start_time);

  CREATE INDEX IX3_t_fta_requests
  ON t_fta_requests(task_id);




------------------------------------------------------------------------
-- Create the scheduler tables.
------------------------------------------------------------------------
CREATE TABLE t_scheduled_task (
    id              int     NOT NULL,
    parent_id       int     NOT NULL,
    type            varchar(255) NOT NULL,
    status          int  NOT NULL,
    status_detail   varchar(511) NOT NULL,
    scheduled_time  datetime NOT NULL,
    finished_time   datetime,
    parameter       TEXT ,
    recurrence_type int NOT NULL,
    subject         varchar(511),

    PRIMARY KEY (id)
);


CREATE TABLE t_task_recurrence(
    id              int    NOT NULL,
    start_time      datetime,
    end_time        datetime,
    rec_interval    BIGINT,

    PRIMARY KEY (id)
);

CREATE TABLE t_ids (
    name varchar (64) NOT NULL,
    current_id  int NOT NULL,

    PRIMARY KEY (name)
);

INSERT INTO t_ids VALUES ('CallLogImporterUserId', 2); 
INSERT INTO t_ids VALUES ('CallLogImporterAppId', 2);
INSERT INTO t_ids VALUES ('LogMergeGroupId',1);

------------------------------------------------------------------------
-- Create the task result tables.
------------------------------------------------------------------------
-- Since there is a BLOB type in this table maybe it could be optimized
-- with the "AVG_ROW_LENGTH=nnn" option.

CREATE TABLE t_task_result (
    task_id int NOT NULL ,
    report_name varchar(64) NOT NULL ,
    executed_date varchar(64) NOT NULL ,     
    binary_result varbinary(MAX) NOT NULL,
         
    PRIMARY KEY (task_id)
);

--------------------------------------------------------------------
-- Call volume report summary tables
--------------------------------------------------------------------

-- Meta table to keep track of what has been aggregated for each
-- aggregation type.
-- It keeps tracks of the row id that has already been transformed.
-- this is a shared table by different type of transformation.  Each identfied
-- by unique name.

CREATE TABLE t_trans_meta (
    name varchar(255) NOT NULL,
    max_id bigint NOT NULL,
    reset_time datetime NOT NULL default '0000-00-00 00:00:00',

    PRIMARY KEY(name)
) ;

-- Hourly call volume and duration summary

CREATE TABLE t_calllog_calls_hour (
    app_id int NOT NULL,
    local_url varchar(255) NOT NULL ,
    time_key int NOT NULL,
    volume int NOT NULL,
    duration float NOT NULL,
    host_name varchar(64) NOT NULL,
    tenant_id varchar(15) NOT NULL,
    group_id numeric(11,0) NOT NULL,
    PRIMARY KEY (app_id, local_url, host_name, time_key, tenant_id, group_id),
    
) ;



 CREATE INDEX IX_t_calllog_calls_hour
  ON t_calllog_calls_hour(time_key);

--------------------------------------------------------------------
-- Task completion report summary tables
--------------------------------------------------------------------

-- Hourly task completion summary
CREATE TABLE t_calllog_tasks_hour (
    app_id int NOT NULL,
    name varchar(64)  NOT NULL,
    time_key int NOT NULL,
    attempted int,
    success int,
    failed int,
    host_name varchar (64) NOT NULL ,
    tenant_id varchar(15) NOT NULL ,
    completed numeric(11,0) default NULL,
    duration numeric(11,0) default NULL,
    max_duration numeric(11,0) default NULL,
    group_id numeric(11,0) NOT NULL,
    PRIMARY KEY (app_id, name, time_key, host_name, tenant_id, group_id)
) ;

CREATE INDEX IX1_t_calllog_tasks_hour
  ON t_calllog_tasks_hour(name);

 CREATE INDEX IX2_t_calllog_tasks_hour
  ON t_calllog_tasks_hour(time_key);

-- Hourly task reason summary

CREATE TABLE t_calllog_tasks_reason_hour (
    app_id int NOT NULL,
    name varchar(64) NOT NULL,
    reason varchar(180) NOT NULL,
    time_key int NOT NULL,
    total int,
    host_name varchar (64) NOT NULL ,
    tenant_id varchar(15) NOT NULL ,
    status varchar(45) NOT NULL DEFAULT '' ,
    result varchar(10) ,
    group_id numeric(11,0) NOT NULL,
    PRIMARY KEY( app_id, name, reason, time_key, host_name, status ,tenant_id, result, group_id)
    
) ;

 CREATE INDEX IX1_t_calllog_tasks_reason
 ON t_calllog_tasks_reason_hour(name);

 CREATE INDEX IX2_t_calllog_tasks_reason
 ON t_calllog_tasks_reason_hour(time_key);


-- Hourly hot spot and voice site hit
CREATE TABLE t_calllog_hits_hour (
    app_id int NOT NULL,
    local_url varchar(128) NOT NULL,
    grammar_label varchar(198) NOT NULL,
    status varchar (64) NOT NULL,
    time_key int NOT NULL,
    total int,
    host_name varchar(64) NOT NULL,
    tenant_id varchar(15) NOT NULL,
    group_id numeric(11,0) NOT NULL,
    PRIMARY KEY  (app_id,local_url,grammar_label,status,time_key,host_name,tenant_id, group_id)
) ;

 CREATE INDEX IX1_t_calllog_hits_hour
 ON t_calllog_hits_hour(app_id, grammar_label, status, time_key, host_name);

 CREATE INDEX IX2_t_calllog_hits_hour
 ON t_calllog_hits_hour(grammar_label);

 CREATE INDEX IX3_t_calllog_hits_hour
 ON t_calllog_hits_hour(time_key);


-- insert the initial values for aggregation time
INSERT INTO t_trans_meta values('nuance.oam.dw.CallVolumeHourlyAggregator', 0, CURRENT_TIMESTAMP);
INSERT INTO t_trans_meta values('nuance.oam.dw.TaskReasonHourlyAggregator', 0, CURRENT_TIMESTAMP);
INSERT INTO t_trans_meta values('nuance.oam.dw.TaskReportHourlyAggregator', 0, CURRENT_TIMESTAMP);
INSERT INTO t_trans_meta values('nuance.oam.dw.HitsHourlyAggregator', 0, CURRENT_TIMESTAMP);

-- table to hold the system properties changed by the User
CREATE TABLE t_system_property (
  property_name  varchar(64) NOT NULL default'',
  property_value TEXT NOT NULL default '',
  PRIMARY KEY (property_name)
) ;

insert into t_system_property values('loggingLevel','STATUS_MSG');


IF OBJECT_ID('t_alert_email_config','U') IS NOT NULL
DROP TABLE t_alert_email_config


CREATE TABLE t_alert_email_config (
  smtpservername varchar(40),
  username varchar(40),
  password varchar(50),
  smtpport varchar(8),
  validation_key varchar(300),
  enabled varchar(10)
) ;

INSERT INTO t_alert_email_config
(smtpservername,username,password,smtpport,validation_key,enabled) VALUES
(null,null,null,null,null,'false');



IF OBJECT_ID('t_alert_recipient','U') IS NOT NULL
DROP TABLE t_alert_recipient

CREATE TABLE t_alert_recipient (
  handler_name varchar(20) NOT NULL,
  handler_type varchar(50) NOT NULL,
  parameter_name varchar(200),
  parameter_data TEXT,
PRIMARY KEY  (handler_name)
);

INSERT INTO t_alert_recipient
(handler_name,handler_type,parameter_name,parameter_data) VALUES
('httpHandler','nuance.oam.impl.alerting.HttpHandler',null,null);
INSERT INTO t_alert_recipient
(handler_name,handler_type,parameter_name,parameter_data) VALUES
('emailAlarmHandler','nuance.oam.impl.alerting.EmailHandler',null,null);
INSERT INTO t_alert_recipient
(handler_name,handler_type,parameter_name,parameter_data) VALUES
('emailReportHandler','nuance.oam.impl.alerting.EmailHandler',null,null);




IF OBJECT_ID('t_alert_recipient_filter','U') IS NOT NULL
DROP TABLE t_alert_recipient_filter

CREATE TABLE t_alert_recipient_filter (
  handler_name varchar(20) NOT NULL,
  recipient varchar(100),
  filter_name varchar(20) ,
  filter_type varchar(50) ,
  filter_parameter_name varchar(50) ,
  filter_parameter_value varchar(100),
PRIMARY KEY  (handler_name,recipient)
);

--------------------------------------------------------------------
-- Create the AutomaticCallLogExport table.
--------------------------------------------------------------------

CREATE TABLE t_automatic_export (
  automatic_export_key  varchar(255) NOT NULL,
  automatic_export_value  varchar(255) NOT NULL,
PRIMARY KEY  (automatic_export_key)
) ;

--------------------------------------------------------------------
--Create t_call_data
--------------------------------------------------------------------
	CREATE TABLE t_call_data
(
     SESSION_ID                                 VARCHAR(64) not null,
     PARENT_SESSION_ID                          VARCHAR(64),
     START_TIME                                 DATETIME not null,
     DURATION                                   INT not null,
     CALLED_PARTY                               VARCHAR(128),
     CALLING_PARTY                              VARCHAR(128),
     ORIGINAL_CALLING_PARTY                     VARCHAR(128),
     INITIAL_URL                                VARCHAR(1024),
     CALL_TYPE                                  VARCHAR(16),
     CALL_RESULT                                VARCHAR(16),
     ORGANIZATION_ID                            VARCHAR(32),
     APPLICATION_ID                             VARCHAR(32),
     VBS_LOG_PATH                               VARCHAR(256),
     CALL_LOG_PATH                              VARCHAR(256),
     TSS_HOST                                   VARCHAR(64),
     TSS_LOG_PATH                               VARCHAR(256),
     MEDIA_GW_CHANNEL_NO                        VARCHAR(8),
     TEST_CALL_IND                              VARCHAR(1),
     UTTERANCE_CAPTURE_ENABLED                  VARCHAR(1),
     CAPTURED_UTTERANCE_COUNT                   INT,
     END_TIME                                   DATETIME,
     INSERTED_TIME                              DATETIME,
     CONNECTTIME                                INT,
     DISCODE                                    VARCHAR(32),
     SIP_CALLID                                 VARCHAR(128),
     SIP_DOMAIN                                 VARCHAR(128),
     NUM_MIS_REC                                INT,
     NUM_ERROR                                  INT,
     OUTBOUND_REQID                             INT,
     BASIC_WCR_ENABLED                          VARCHAR(1),
     EXTENDED_WCR_ENABLED                       VARCHAR(1),
     WCR_ENCRYPTED                              VARCHAR(1),
     NSS_HOST                                   VARCHAR(64),
     WCR_BILLABLE                               VARCHAR(1) DEFAULT 'F',
     AB_TESTING                                 VARCHAR(32),
     PLATFORM_VERSION                           VARCHAR(32),
     WAS_HOST                                   VARCHAR(64),
     WAS_LOG_FILE                               VARCHAR(256),
     CONNECTED_TIME                             DATETIME,
     DISCONNECTED_TIME                          DATETIME,
     PRIMARY KEY  (SESSION_ID)
) ;

--------------------------------------------------------------------
-- LogMerge Tables
--------------------------------------------------------------------

-- Logmerge configuration master table
CREATE TABLE  t_logmerge_group_master (
  group_id numeric(11,0) IDENTITY(1,1) NOT NULL,
  group_name varchar(64) NOT NULL default '',
  ignore_last_step_marker char(2) default NULL,
  PRIMARY KEY  (group_id)
);

-- Logmerge configuration table
CREATE TABLE  t_logmerge_group_config (
  group_id numeric(11,0) NOT NULL default '0',
  host_id varchar(64) NOT NULL default '',
  dir_path varchar(255) NOT NULL default '',
  type varchar(64) NOT NULL default '',
  PRIMARY KEY  (group_id,host_id,dir_path,type)
) ;



-- Logmerge data collection task details
CREATE TABLE t_logmerge_task_details(  
  task_id numeric(11) NOT NULL,             
  status varchar(24) NOT NULL,          
  group_id numeric(11,0) NOT NULL,            
  start_time datetime default NULL,     
  finish_time datetime default NULL,    
  PRIMARY KEY  (task_id)
) ;

CREATE INDEX IX_t_logmerge_task_details
  ON t_logmerge_task_details(status); 

-- Details of session id from callLog fragment

CREATE TABLE  t_log_fragment_header (
  session_id varchar(64) NOT NULL default '',
  group_id numeric(11,0) default NULL,
  status varchar(32) default NULL,
  arrival_time datetime NOT NULL default '0000-00-00 00:00:00',
  stratergy varchar(64) default NULL,
  last_step tinyint NOT NULL default '0',
  task_id numeric(11,0) default NULL,
  exported_flag tinyint default '0',
  merged_taskId numeric(11,0) default 0,
  PRIMARY KEY  (session_id)
);

CREATE INDEX IX_t_log_fragment_header
  ON t_log_fragment_header(merged_taskId);

-- Details of stepId's belonging to sessionId
CREATE TABLE t_log_fragment_sink (                             
  session_id varchar(64) NOT NULL default '',                  
  step_id Decimal(5,2) NOT NULL default '0.00',                  
  log_fragment_filename varchar(255) NOT NULL,         
  log_fragment varbinary(MAX) default NULL,            
  service_type varchar(10) NOT NULL default '',                
  host_id varchar(64) NOT NULL default '' ,
  xtra_step_flag tinyint default '0',                          
  primary key(  session_id,step_id, service_type)
) ; 



-- Logmerge execution time
CREATE TABLE t_logmerge_result (
  group_id numeric(11,0) NOT NULL default '0',                          
  executed_time datetime NOT NULL default '0000-00-00 00:00:00',  
  task_id numeric(11,0) NOT NULL ,
  exported_flag int default 0
);

-- Contains exception message if there is an exception while merging session
CREATE TABLE  t_logmerge_error_msg (
  session_id varchar(64) NOT NULL default '',
  message varchar(255) default NULL,
  alarm_type varchar(64) default NULL,
  PRIMARY KEY  (session_id)
);

--This table holds the utterance wav files temporarily and the max utterence size would be 63 kb 
-- i.e, `utterence_content` varbinary(64512) which is aprox 7 sec of audio

CREATE TABLE t_logmerge_utterence_sink (                                                  
  filename varchar(200) NOT NULL,                                                         
  relative_path varchar(200) DEFAULT NULL,                                                
  utterence_content varbinary(MAX) NOT NULL,                                            
  arrival_time datetime NOT NULL ,  
  task_id numeric(11,0) DEFAULT '0',                                                   
  PRIMARY KEY (filename)                                                                
); 

CREATE INDEX IX_t_logmerge_utterence_sink
  ON t_logmerge_utterence_sink(task_id); 

-- This table holda data related to each call  and is populated by TSS.
-- The information from this table is retrived only when a web service call 
-- is made to fetch the details of a call[path].
IF OBJECT_ID('t_call_data','U') IS NOT NULL
DROP TABLE t_call_data

CREATE TABLE t_call_data
(
     SESSION_ID varchar(64) NOT NULL,
     PARENT_SESSION_ID varchar(64),
     START_TIME datetime NOT NULL,
     DURATION int NOT NULL,
     CALLED_PARTY varchar(128),
     CALLING_PARTY varchar(128),
     ORIGINAL_CALLING_PARTY varchar(128),
     INITIAL_URL varchar(1024),
     CALL_TYPE varchar(16),
     CALL_RESULT varchar(16),
     ORGANIZATION_ID varchar(32),
     APPLICATION_ID varchar(32),
     VBS_LOG_PATH varchar(256),
     CALL_LOG_PATH varchar(256),
     TSS_HOST varchar(64),
     TSS_LOG_PATH varchar(256),
     MEDIA_GW_CHANNEL_NO varchar(8),
     TEST_CALL_IND varchar(1),
     UTTERANCE_CAPTURE_ENABLED varchar(1),
     CAPTURED_UTTERANCE_COUNT int,
     END_TIME datetime,
     INSERTED_TIME datetime,
     CONNECTTIME int,
     DISCODE varchar(32),
     SIP_CALLID varchar(128),
     SIP_DOMAIN varchar(128),
     NUM_MIS_REC int,
     NUM_ERROR int,
     OUTBOUND_REQID int,
     BASIC_WCR_ENABLED varchar(1),
     EXTENDED_WCR_ENABLED varchar(1),
     WCR_ENCRYPTED varchar(1),
     NSS_HOST varchar(64),
     WCR_BILLABLE varchar(1) DEFAULT 'F',
     AB_TESTING varchar(32),
     PLATFORM_VERSION varchar(32),
     WAS_HOST varchar(64),
     WAS_LOG_FILE varchar(256),
     CONNECTED_TIME datetime,
     DISCONNECTED_TIME datetime,
     PRIMARY KEY (SESSION_ID)
);

INSERT INTO t_versions VALUES ( '5.5.7', GETDATE() );
