IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_EXEC_BUSKEY') drop index ACT_RU_EXECUTION.ACT_IDX_EXEC_BUSKEY;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_VARIABLE_TASK_ID') drop index ACT_RU_VARIABLE.ACT_IDX_VARIABLE_TASK_ID;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_EVENT_SUBSCR_CONFIG_') drop index ACT_RU_EVENT_SUBSCR.ACT_IDX_EVENT_SUBSCR_CONFIG_;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_INFO_PROCDEF') drop index ACT_PROCDEF_INFO.ACT_IDX_INFO_PROCDEF;

if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_GE_BYTEARRAY') alter table ACT_GE_BYTEARRAY drop constraint ACT_FK_BYTEARR_DEPL;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RE_PROCDEF') alter table ACT_RE_PROCDEF drop constraint ACT_UNIQ_PROCDEF;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_EXECUTION') alter table ACT_RU_EXECUTION drop constraint ACT_FK_EXE_PROCDEF;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_EXECUTION') alter table ACT_RU_EXECUTION drop constraint ACT_FK_EXE_PARENT;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_EXECUTION') alter table ACT_RU_EXECUTION drop constraint ACT_FK_EXE_SUPER;  
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_IDENTITYLINK') alter table ACT_RU_IDENTITYLINK drop constraint ACT_FK_TSKASS_TASK;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_IDENTITYLINK') alter table ACT_RU_IDENTITYLINK drop constraint ACT_FK_IDL_PROCINST;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_IDENTITYLINK') alter table ACT_RU_IDENTITYLINK drop constraint ACT_FK_ATHRZ_PROCEDEF;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_TASK') alter table ACT_RU_TASK drop constraint ACT_FK_TASK_EXE;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_TASK') alter table ACT_RU_TASK drop constraint ACT_FK_TASK_PROCINST;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_TASK') alter table ACT_RU_TASK drop constraint ACT_FK_TASK_PROCDEF;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_VARIABLE') alter table ACT_RU_VARIABLE drop constraint ACT_FK_VAR_EXE;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_VARIABLE') alter table ACT_RU_VARIABLE drop constraint ACT_FK_VAR_PROCINST;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_JOB') alter table ACT_RU_JOB drop constraint ACT_FK_JOB_EXECUTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_JOB') alter table ACT_RU_JOB drop constraint ACT_FK_JOB_PROCESS_INSTANCE;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_JOB') alter table ACT_RU_JOB drop constraint ACT_FK_JOB_PROC_DEF;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_TIMER_JOB') alter table ACT_RU_TIMER_JOB drop constraint ACT_FK_TIMER_JOB_EXECUTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_TIMER_JOB') alter table ACT_RU_TIMER_JOB drop constraint ACT_FK_TIMER_JOB_PROCESS_INSTANCE;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_TIMER_JOB') alter table ACT_RU_TIMER_JOB drop constraint ACT_FK_TIMER_JOB_PROC_DEF;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_SUSPENDED_JOB') alter table ACT_RU_SUSPENDED_JOB drop constraint ACT_FK_SUSPENDED_JOB_EXECUTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_SUSPENDED_JOB') alter table ACT_RU_SUSPENDED_JOB drop constraint ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_SUSPENDED_JOB') alter table ACT_RU_SUSPENDED_JOB drop constraint ACT_FK_SUSPENDED_JOB_PROC_DEF;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_DEADLETTER_JOB') alter table ACT_RU_DEADLETTER_JOB drop constraint ACT_FK_DEADLETTER_JOB_EXECUTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_DEADLETTER_JOB') alter table ACT_RU_DEADLETTER_JOB drop constraint ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_DEADLETTER_JOB') alter table ACT_RU_DEADLETTER_JOB drop constraint ACT_FK_DEADLETTER_JOB_PROC_DEF;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_EVENT_SUBSCR') alter table ACT_RU_EVENT_SUBSCR drop constraint ACT_FK_EVENT_EXEC;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RE_MODEL') alter table ACT_RE_MODEL drop constraint ACT_FK_MODEL_SOURCE;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RE_MODEL') alter table ACT_RE_MODEL drop constraint ACT_FK_MODEL_SOURCE_EXTRA;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RE_MODEL') alter table ACT_RE_MODEL drop constraint ACT_FK_MODEL_DEPLOYMENT;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_PROCDEF_INFO') alter table ACT_PROCDEF_INFO drop constraint ACT_FK_INFO_JSON_BA;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_PROCDEF_INFO') alter table ACT_PROCDEF_INFO drop constraint ACT_FK_INFO_PROCDEF;

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_ATHRZ_PROCEDEF') drop index ACT_RU_IDENTITYLINK.ACT_IDX_ATHRZ_PROCEDEF;

if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RE_PROCDEF') drop table ACT_RE_PROCDEF;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RE_DEPLOYMENT') drop table ACT_RE_DEPLOYMENT;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RE_MODEL') drop table ACT_RE_MODEL;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_EXECUTION') drop table ACT_RU_EXECUTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_EVENT_SUBSCR') drop table ACT_RU_EVENT_SUBSCR;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_EVT_LOG') drop table ACT_EVT_LOG;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_PROCDEF_INFO') drop table ACT_PROCDEF_INFO;