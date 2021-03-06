#!/bin/bash

###########################################
#
# Here all variables for all scripts
#
###########################################

###############################
## need to change after switch
###############################
export PRIMARY_HOST=xxx
export STANDBY_HOST=xxx
export OBSERVER_HOST=xxx
export PRIMARY_UNIQ_DB_NAME=xxx
export STANDBY_UNIQ_DB_NAME=xxx


###############################
## general vars
###############################
export ALL_SCRIPTS_PATH=`pwd -P`

export date_format="%d%m%y-%H%M%S"
export begin_date=`date +$date_format`

export ORACLE_SID=xxx
export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/oracle/product/11.2.0/dbhome_1  
export LD_LIBRARY_PATH=$ORACLE_HOME/lib
export NLS_LANG=AMERICAN_AMERICA.AL32UTF8
export NLS_DATE_FORMAT="HH24:MI:SS DD.MM.YYYY"
export PATH=$PATH:$ORACLE_HOME/bin:/bin:/usr/bin
export LOCAL_HOST_NAME=`hostname`


###############################
## proc for output to screen and logs
###############################
show_hosts_db_names() {
echo "PRIMARY HOST NAME : $PRIMARY_HOST";
echo "STANDBY HOST NAME : $STANDBY_HOST";
echo "OBSERVER HOST NAME: $OBSERVER_HOST";
echo "\$ORACLE_SID       : $ORACLE_SID"; 
echo "PRIMARY DB NAME   : $PRIMARY_UNIQ_DB_NAME";
echo "STANDBY DB NAME   : $STANDBY_UNIQ_DB_NAME";
}


###############################
## for 01_ssh_conf.sh
###############################
RSA_FILE_NAME=id_rsa
DSA_FILE_NAME=id_dsa
SSH_KEY_DIR=".ssh"
PUB_KEYS_FILE="authorized_keys"


###############################
## for 02_cr_dirs.sh
###############################
export MKDIR_DB_PATH1="/data/oradata/xxx";
export MKDIR_DB_PATH2="/data1/oradata/xxx";
export MKDIR_DB_PATH3="/data2/oradata/xxx";
export MKDIR_FRA_PATH="/data2/fast_recovery_area";
export MKDIR_HOTBACKUP_PATH="/data2/fast_recovery_area/backupset";
export MKDIR_ARCH_LOGS_PATH="/data/oradata/deptrans/archivelogs";
export MKDIR_PFILE_PATH="$ORACLE_BASE/admin/$ORACLE_SID/pfile";
export MKDIR_AUDIT_PATH="$ORACLE_BASE/admin/$ORACLE_SID/adump";
export MKDIR_LIST="$MKDIR_DB_PATH1 $MKDIR_DB_PATH2 $MKDIR_DB_PATH3 $MKDIR_ARCH_LOGS_PATH $MKDIR_FRA_PATH $MKDIR_PFILE_PATH $MKDIR_AUDIT_PATH $MKDIR_HOTBACKUP_PATH";
export MKDIR_LIST_HOTBACK_HOST="/data/backupset";


##################################
## for 05_hotbackup_primary.sh
## for 05_hotbackup_standby.sh
## for 05_backup_archlogs_primary.sh
##################################
if [ $LOCAL_HOST_NAME == $PRIMARY_HOST ]; then
        export REMOTE_HOST_NAME=$STANDBY_HOST;
	export HOTBACKUP_DIR_PREFIX="hotbackup_primary";
	export ARCHLOGS_BACKUP_DIR_PREFIX="archlogs_backup_primary";
	export BACKUP_FILE_PREFIX="primary";

elif [ $LOCAL_HOST_NAME == $STANDBY_HOST ]; then
        export REMOTE_HOST_NAME=$PRIMARY_HOST;
	export HOTBACKUP_DIR_PREFIX="hotbackup_standby";
	export ARCHLOGS_BACKUP_DIR_PREFIX="archlogs_backup_standby";
	export BACKUP_FILE_PREFIX="standby";

fi

export HOTBACKUP_PATH="$MKDIR_HOTBACKUP_PATH"/"$begin_date"_"$HOTBACKUP_DIR_PREFIX";
export HOTBACKUP_LOG="$HOTBACKUP_PATH"/"$HOTBACKUP_DIR_PREFIX"_"$begin_date".log
export ARCHLOGS_BACKUP_PATH="$MKDIR_HOTBACKUP_PATH"/"$begin_date"_"$ARCHLOGS_BACKUP_DIR_PREFIX";
export ARCHLOGS_BACKUP_LOG="$ARCHLOGS_BACKUP_PATH"/"$ARCHLOGS_BACKUP_DIR_PREFIX"_"$begin_date".log


# for backup all config files
export LISTENER_ORA=$ORACLE_HOME/network/admin/listener.ora
export TNSNAMES_ORA=$ORACLE_HOME/network/admin/tnsnames.ora
export SQLNET_ORA=$ORACLE_HOME/network/admin/sqlnet.ora
export PFILE_ORA=$ORACLE_HOME/dbs/init$ORACLE_SID.ora
export SPFILE_ORA=$ORACLE_HOME/dbs/spfile$ORACLE_SID.ora

export BACKUP_HOST_NAME="xxx";
export BACKUP_HOST_HOTBACKUP_PATH=/data/backupset;
export BACKUP_HOST_ARCHLOGS_BACKUP_PATH=/data/backupset;

##################################
## for 08_add_standby_logs.sh
##################################
export STANDBY_LOG_FILE_PATH=/data/oradata/deptrans/  # ! mast ended /

##################################
## for 09_cr_orapdw_primary.sh
##################################
export ENTRIES_NUMBER=5
export SYS_PWD="NULL"

##################################
## for 12_cr_broker_cfg_primary.sh
##################################
export BROKER_CR_CONF_LOG=$ORACLE_HOME/dbs/broker_primary_cr_$ORACLE_SID_$begin_date.log
export SYS_PWD="NULL"
export BROKER_START_WAIT_SECONDS=60
export SWITCH_TRHESHOLD_SECONDS=45
export STANDBY_ARCHLOGS_LOCATION=$MKDIR_ARCH_LOGS_PATH
export PRIMARY_DB_ALIAS=$PRIMARY_UNIQ_DB_NAME
export STANDBY_DB_ALIAS=$STANDBY_UNIQ_DB_NAME


##################################
## for 13_start_observer_bg.sh
##################################
export OBSERVER_START_LOG=$ORACLE_HOME/dbs/observer_start_$begin_date.log
export SYS_PWD="NULL"


##################################
## for service check
##################################
export SERVICE_NAME=OAS


##################################
## for test data create
##################################
export TST_USR_NAME=xxx
export TST_USR_PWD=xxx
export TST_TABLE_NAME=xxx
export DB_ROLE="NULL"
export DB_OPEN_MODE="NULL"

