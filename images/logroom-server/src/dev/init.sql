CREATE TABLE IF NOT EXISTS `session`(
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` VARCHAR(64) NOT NULL,
  `created` datetime NOT NULL DEFAULT NOW(),
  `data` json NOT NULL,
  UNIQUE KEY `uuid`(`uuid`),
  PRIMARY KEY (`id`)
) ENGINE=TokuDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `journal`(
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(10) unsigned NOT NULL,
  `added` datetime NOT NULL DEFAULT NOW(),
  `log` json NOT NULL,
  KEY `session_id`(`session_id`),
  PRIMARY KEY (`id`)
) ENGINE=TokuDB DEFAULT CHARSET=utf8 PARTITION BY KEY() PARTITIONS 10;
