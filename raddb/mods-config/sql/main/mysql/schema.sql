###########################################################################
# $Id$                 #
#                                                                         #
#  schema.sql                       rlm_sql - FreeRADIUS SQL Module       #
#                                                                         #
#     Database schema for MySQL rlm_sql module                            #
#                                                                         #
#     To load:                                                            #
#         mysql -uroot -prootpass radius < schema.sql                     #
#                                                                         #
#                                   Mike Machado <mike@innercite.com>     #
###########################################################################
#
# Table structure for table 'radacct'
#

CREATE TABLE IF NOT EXISTS radacct (
  radacctid bigint(21) NOT NULL auto_increment,
  acctsessionid varchar(64) NOT NULL default '',
  acctuniqueid varchar(32) NOT NULL default '',
  username varchar(64) NOT NULL default '',
  realm varchar(64) default '',
  nasipaddress varchar(15) NOT NULL default '',
  nasportid varchar(32) default NULL,
  nasporttype varchar(32) default NULL,
  acctstarttime datetime NULL default NULL,
  acctupdatetime datetime NULL default NULL,
  acctstoptime datetime NULL default NULL,
  acctinterval int(12) default NULL,
  acctsessiontime int(12) unsigned default NULL,
  acctauthentic varchar(32) default NULL,
  connectinfo_start varchar(50) default NULL,
  connectinfo_stop varchar(50) default NULL,
  acctinputoctets bigint(20) default NULL,
  acctoutputoctets bigint(20) default NULL,
  calledstationid varchar(50) NOT NULL default '',
  callingstationid varchar(50) NOT NULL default '',
  acctterminatecause varchar(32) NOT NULL default '',
  servicetype varchar(32) default NULL,
  framedprotocol varchar(32) default NULL,
  framedipaddress varchar(15) NOT NULL default '',
  framedipv6address varchar(45) NOT NULL default '',
  framedipv6prefix varchar(45) NOT NULL default '',
  framedinterfaceid varchar(44) NOT NULL default '',
  delegatedipv6prefix varchar(45) NOT NULL default '',

  netabortcause bigint(20) DEFAULT NULL,
  netalerttime varchar(64) NOT NULL DEFAULT '',
  netbwdflowindstaddr varchar(64) NOT NULL DEFAULT '',
  netbwdflowindstport bigint(20) DEFAULT NULL,
  netbwdflowinsrcaddr varchar(64) NOT NULL DEFAULT '',
  netbwdflowinsrcport bigint(20) DEFAULT NULL,
  netbwdflowoutdstaddr varchar(64) NOT NULL DEFAULT '',
  netbwdflowoutdstport bigint(20) DEFAULT NULL,
  netbwdflowoutsrcaddr varchar(64) NOT NULL DEFAULT '',
  netbwdflowoutsrcport bigint(20) DEFAULT NULL,
  netbwdoctets bigint(20) DEFAULT NULL,
  netbwdpackets bigint(20) DEFAULT NULL,
  netbwdrtpavgjitter bigint(20) DEFAULT NULL,
  netbwdrtpavglatency bigint(20) DEFAULT NULL,
  netbwdrtpmaxjitter bigint(20) DEFAULT NULL,
  netbwdrtpmaxlatency bigint(20) DEFAULT NULL,
  netbwdrtppacketslost bigint(20) DEFAULT NULL,
  netcallduration bigint(20) DEFAULT NULL,
  netcallorigin bigint(20) DEFAULT NULL,
  netcalltype bigint(20) DEFAULT NULL,
  netcallednumber varchar(64) NOT NULL DEFAULT '',
  netcallingname varchar(64) NOT NULL DEFAULT '',
  netcallingnumber varchar(64) NOT NULL DEFAULT '',
  netconnecttime varchar(64) NOT NULL DEFAULT '',
  netdisconnectcause bigint(20) DEFAULT NULL,
  netdisconnectinitiator bigint(20) DEFAULT NULL,
  netdisconnecttime varchar(64) NOT NULL DEFAULT '',
  netegresschannelid varchar(64) NOT NULL DEFAULT '',
  netegresschannelnumber bigint(20) DEFAULT NULL,
  netegressfinalroutingnum varchar(64) NOT NULL DEFAULT '',
  netegresslocaladdr varchar(64) NOT NULL DEFAULT '',
  netegressnetinterfaceid bigint(20) DEFAULT NULL,
  netegressremoteaddr varchar(64) NOT NULL DEFAULT '',
  netegresssignalinggroup bigint(20) DEFAULT NULL,
  netegresssignalingportnum bigint(20) DEFAULT NULL,
  netfirmwareversion varchar(64) NOT NULL DEFAULT '',
  netfwdflowindstaddr varchar(64) NOT NULL DEFAULT '',
  netfwdflowindstport bigint(20) DEFAULT NULL,
  netfwdflowinsrcaddr varchar(64) NOT NULL DEFAULT '',
  netfwdflowinsrcport bigint(20) DEFAULT NULL,
  netfwdflowmediatype varchar(64) NOT NULL DEFAULT '',
  netfwdflowoutdstaddr varchar(64) NOT NULL DEFAULT '',
  netfwdflowoutdstport bigint(20) DEFAULT NULL,
  netfwdflowoutsrcaddr varchar(64) NOT NULL DEFAULT '',
  netfwdflowoutsrcport bigint(20) DEFAULT NULL,
  netfwdflowptime bigint(20) DEFAULT NULL,
  netfwdoctets bigint(20) DEFAULT NULL,
  netfwdpackets bigint(20) DEFAULT NULL,
  netfwdrtpavgjitter bigint(20) DEFAULT NULL,
  netfwdrtpavglatency bigint(20) DEFAULT NULL,
  netfwdrtpmaxjitter bigint(20) DEFAULT NULL,
  netfwdrtpmaxlatency bigint(20) DEFAULT NULL,
  netfwdrtppacketslost bigint(20) DEFAULT NULL,
  netgwid varchar(64) NOT NULL DEFAULT '',
  netinboundseizetime varchar(64) NOT NULL DEFAULT '',
  netingresschannelid varchar(64) NOT NULL DEFAULT '',
  netingresschannelnumber bigint(20) DEFAULT NULL,
  netingresslocaladdr varchar(64) NOT NULL DEFAULT '',
  netingressnetinterfaceid bigint(20) DEFAULT NULL,
  netingressremoteaddr varchar(64) NOT NULL DEFAULT '',
  netingresssignalinggroup bigint(20) DEFAULT NULL,
  netingresssignalingportnum bigint(20) DEFAULT NULL,
  netlocaltimezone varchar(64) NOT NULL DEFAULT '',
  netlogtime varchar(64) NOT NULL DEFAULT '',
  netoutboundseizetime varchar(64) NOT NULL DEFAULT '',
  netpassertedid varchar(64) NOT NULL DEFAULT '',
  netppreferredid varchar(64) NOT NULL DEFAULT '',
  netpostdialdelay bigint(20) DEFAULT NULL,
  netprimaryroutingnumber varchar(64) NOT NULL DEFAULT '',
  netredirectipaddress varchar(64) NOT NULL DEFAULT '',
  netredirectnumber varchar(64) NOT NULL DEFAULT '',
  netrefercalltransferid varchar(64) NOT NULL DEFAULT '',
  netreplacedheader varchar(64) NOT NULL DEFAULT '',
  netroutingtablenumber bigint(20) DEFAULT NULL,
  netsipdiversion varchar(64) NOT NULL DEFAULT '',
  netsessionegresscallid bigint(20) DEFAULT NULL,
  netsessionegressrealm varchar(64) NOT NULL DEFAULT '',
  netsessionforkedcallid varchar(64) NOT NULL DEFAULT '',
  netsessiongenericid bigint(20) DEFAULT NULL,
  netsessioningresscallid bigint(20) DEFAULT NULL,
  netsessioningressrealm varchar(64) NOT NULL DEFAULT '',
  netsetuptime varchar(64) NOT NULL DEFAULT '',
  nettimeandday varchar(64) NOT NULL DEFAULT '',
  nettransporttype bigint(20) DEFAULT NULL,

  PRIMARY KEY (radacctid),
  UNIQUE KEY acctuniqueid (acctuniqueid),
  KEY username (username),
  KEY framedipaddress (framedipaddress),
  KEY framedipv6address (framedipv6address),
  KEY framedipv6prefix (framedipv6prefix),
  KEY framedinterfaceid (framedinterfaceid),
  KEY delegatedipv6prefix (delegatedipv6prefix),
  KEY acctsessionid (acctsessionid),
  KEY acctsessiontime (acctsessiontime),
  KEY acctstarttime (acctstarttime),
  KEY acctinterval (acctinterval),
  KEY acctstoptime (acctstoptime),
  KEY nasipaddress (nasipaddress)
) ENGINE = INNODB;

#
# Table structure for table 'radcheck'
#

CREATE TABLE IF NOT EXISTS radcheck (
  id int(11) unsigned NOT NULL auto_increment,
  username varchar(64) NOT NULL default '',
  attribute varchar(64)  NOT NULL default '',
  op char(2) NOT NULL DEFAULT '==',
  value varchar(253) NOT NULL default '',
  PRIMARY KEY  (id),
  KEY username (username(32))
);

#
# Table structure for table 'radgroupcheck'
#

CREATE TABLE IF NOT EXISTS radgroupcheck (
  id int(11) unsigned NOT NULL auto_increment,
  groupname varchar(64) NOT NULL default '',
  attribute varchar(64)  NOT NULL default '',
  op char(2) NOT NULL DEFAULT '==',
  value varchar(253)  NOT NULL default '',
  PRIMARY KEY  (id),
  KEY groupname (groupname(32))
);

#
# Table structure for table 'radgroupreply'
#

CREATE TABLE IF NOT EXISTS radgroupreply (
  id int(11) unsigned NOT NULL auto_increment,
  groupname varchar(64) NOT NULL default '',
  attribute varchar(64)  NOT NULL default '',
  op char(2) NOT NULL DEFAULT '=',
  value varchar(253)  NOT NULL default '',
  PRIMARY KEY  (id),
  KEY groupname (groupname(32))
);

#
# Table structure for table 'radreply'
#

CREATE TABLE IF NOT EXISTS radreply (
  id int(11) unsigned NOT NULL auto_increment,
  username varchar(64) NOT NULL default '',
  attribute varchar(64) NOT NULL default '',
  op char(2) NOT NULL DEFAULT '=',
  value varchar(253) NOT NULL default '',
  PRIMARY KEY  (id),
  KEY username (username(32))
);


#
# Table structure for table 'radusergroup'
#

CREATE TABLE IF NOT EXISTS radusergroup (
  id int(11) unsigned NOT NULL auto_increment,
  username varchar(64) NOT NULL default '',
  groupname varchar(64) NOT NULL default '',
  priority int(11) NOT NULL default '1',
  PRIMARY KEY  (id),
  KEY username (username(32))
);

#
# Table structure for table 'radpostauth'
#
CREATE TABLE IF NOT EXISTS radpostauth (
  id int(11) NOT NULL auto_increment,
  username varchar(64) NOT NULL default '',
  pass varchar(64) NOT NULL default '',
  reply varchar(32) NOT NULL default '',
  authdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (id),
  KEY username (username(32))
) ENGINE = INNODB;

#
# Table structure for table 'nas'
#
CREATE TABLE IF NOT EXISTS nas (
  id int(10) NOT NULL auto_increment,
  nasname varchar(128) NOT NULL,
  shortname varchar(32),
  type varchar(30) DEFAULT 'other',
  ports int(5),
  secret varchar(60) DEFAULT 'secret' NOT NULL,
  server varchar(64),
  community varchar(50),
  description varchar(200) DEFAULT 'RADIUS Client',
  PRIMARY KEY (id),
  KEY nasname (nasname)
);
