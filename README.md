OracleScripts
=============
A set of scripts for working with Oracle DBMS

1) rman Enable archiving
   Scripts for creating a full database backup include:
  - automatic creation of backup with the ability to restore or create standby;
  - adding to cron;
  - copying to the test server;
  - automatic test recovery.

2) Creating standby
   Scripts to automatically create a standby server.

3) Monitoring active sessions.
   You can see the current database activity in sqlplus

4) Base status monitoring
   Checking some parameters of the DBMS, I add to cron,
   periodically letters about the state of the database and errors that have occurred.

5) work
   A set of useful scripts for daily administration:

Alphabetically
------------

bctop.sql Top Sessions on Modified File Blocks

cs_drall.sql creates a script to delete all objects in the current schema.

dtop.sql general statistics on reading data
dmllocks.sql DML lock
ddllocks.sql DDL locks
dbtop.sql Top Sessions on Modified File Blocks
dctop.sql Top sessions for modified file blocks (consistent)

exrate.sql Shows Execution rate

fspace.sql shows free space in the database
fstop.sql file statistics (io) linked to sids
fstop.sql IO on files with SIDs
ftop.sql file statistics (io)
fullscan.sql Top recent full scan tables

gcompile.sql creates a script to compile disabilities
gp_asc.sql downloads the specified packages from the database
gver.sql shows the version of the CBOSS package by name

hitrate.sql cache hit

index.sql Indices of the specified table with a list of fields

kill.sql Kills session

lntop.sql statistics on latche request (name, quantity)
lstop.sql statistics for Latche request (led, count)
ltop.sql statistics for Latche request (name, led, qty)
lock.sql mutual session locking
lhq.sql Queue for Latches
lmtop.sql Incremental statistics on latch children miss / sec

mtop.sql statistics on cpu / memory

object.sql Detailing by object

ptop.sql Incremental statistics on parse / sec

ratop.sql Top sessions by generated redo entries (for titan)
rstop.sql statistics for redo (you must specify the number of statistics)
rtop.sql statistics for redo (entries, size)

sherr.sql shows compile errors of the current schema
swait.sql Waiting for session
sqltop.sql Top Sessions by IO (according to v $ sql)
sessions.sql Shows how many active and inactive sessions

testsize.sql gives the actual size of the object
tsizeo.sql largest schema objects
tsizet.sql largest tablespace objects

who.sql who in the database
whoami.sql who i am and where
whodo.sql what sid does
whoin.sql who in the specified scheme
whoinj.sql what jobs work
whoinrbs.sql shows the status of rollback segments
whois.sql who is this sid
whopid.sql what pid at sid
whosid.sql what pid
whoinbh.sql Sessions changing buffer buffer blocks protected by the specified latch children
waits.sql Shows Top Event waits
wrate.sql Shows event waits rate
whom.sql sessions from the specified machine


------------------------------------------
To destination
------------


 Overall performance

WAITS Shows Top Event waits
SESSIONS Shows the ratio of active and inactive sessions
EXRATE Shows Execution rate
WRATE Shows event waits rate
MTOP Top sessions sorted by used memory and CPU
 
 Storage

FSPACE shows free space in the database
TESTSIZE gives the actual size of the object (up to highwatermark)
TSIZEO Largest Schema Objects
TSIZET largest tablespace objects

 Input Output

DTOP top sessions for reading data (sorting by logical, physical reading or changing blocks)
FSTOP file statistics (io) associated with SID
FTOP file statistics (io)
FULLSCAN Top recent full scan tables
SQLTOP Top Sessions on IO (according to v $ sql)
RATOP Top Sessions by generated redo entries

 Latches

LTOP statistics for Latche’s request (title, led, qty)
LHQ queue for latches
LSTOP statistics for Latche’s request (led, qty)
LNTOP statistics on request latchey (name, number)
LMTOP misses missal statistics for latch children

 Sessions

WHO list of sessions in the database
WHOAMI in which base and pattern my session
WHODO what the session does (SQL)
Whoin what sessions in the specified pattern
Whoinj what remote jobs work
WHOINRBS shows the state of rollback segments
WHOUSETBS Who uses the given tablespace
WHOKEEPRBS Who keeps rollback segment (sorted by logon_time)
WHOIS session details
WHOPID displays the SPID for a given SID
WHOSID displays the SID for a given SPID.
WHOM sessions from the specified machine
WHOLOCK Gives a session that locks table rows (by a given select)
SWAIT Waiting session
SLOCK Interlock sessions (a detailed list of sessions with locked objects)
LOCKS Locks (tree view)
DMLLOCKS DML lock
DDLLOCKS DDL Blocking
KILL Kills Session (by SID and SERIAL)
CS_KILL_JOBS Creates a script for deleting sessions of remote tasks download
CS_KILL_OBJLOCKER Creates a script for deleting sessions that lock the specified download object
CS_KILLSESS Creates a script to delete sessions from the specified machine download
WHOWAIT List of sessions awaiting for events

 Schema Objects

OBJECT Detailing by object
INDEX Table indexes with fields
GCOMPILE Creates a script to compile invalid objects.
SHERR Produces compilation errors on the current schema.
CUSER Creates a Scheme, Issues Grants Required to Work for CBOSS
CS_DROP_DBLINK Creates a script for deletion database links
CS_DRALL Creates a script to delete all objects in the current schema.
FNAME Gives file name by number
GP_ASC Creates a script to create a package (just unlocked!)
GVER Shows CBOSS Package Version
SET_DATE_FORMAT Sets the date format to dd-mm-yyyy hh24: mi: ss
