-- This table contains an index with a column that specifies a length.  This
-- feature is not currently supported by ETL table management.
CREATE TABLE ${DESTINATION_SCHEMA}.`shredded_job_slurm` (
  `shredded_job_slurm_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned NOT NULL,
  `job_array_index` int(10) NOT NULL DEFAULT '-1',
  `job_id_raw` int(10) unsigned DEFAULT NULL,
  `job_name` tinytext NOT NULL,
  `cluster_name` tinytext NOT NULL,
  `partition_name` tinytext NOT NULL,
  `qos_name` tinytext DEFAULT NULL,
  `user_name` tinytext NOT NULL,
  `uid_number` int(10) unsigned DEFAULT NULL,
  `group_name` tinytext NOT NULL,
  `gid_number` int(10) unsigned DEFAULT NULL,
  `account_name` tinytext NOT NULL,
  `submit_time` int(10) unsigned NOT NULL,
  `eligible_time` int(10) unsigned DEFAULT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `elapsed` int(10) unsigned NOT NULL,
  `exit_code` varchar(32) NOT NULL,
  `state` varchar(32) DEFAULT NULL,
  `nnodes` int(10) unsigned NOT NULL,
  `ncpus` int(10) unsigned NOT NULL,
  `ngpus` int(10) unsigned NOT NULL DEFAULT '0',
  `req_cpus` int(10) unsigned DEFAULT NULL,
  `req_mem` varchar(32) DEFAULT NULL,
  `req_tres` text NOT NULL,
  `alloc_tres` text NOT NULL,
  `timelimit` int(10) unsigned DEFAULT NULL,
  `node_list` mediumtext NOT NULL,
  PRIMARY KEY (`shredded_job_slurm_id`),
  UNIQUE KEY `job` (`cluster_name`(20),`job_id`,`job_array_index`,`submit_time`,`end_time`)
) ENGINE=InnoDB//
