create database if not exists cc_namie_normal default character set utf8;

use cc_namie_normal;

create table if not exists url (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `url` TEXT NOT NULL,
        `ip` varchar(128) CHARACTER SET utf8 NOT NULL,
        `ua` varchar(255) CHARACTER SET utf8 DEFAULT '',
        `ct` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `ut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    )ENGINE=INNODB DEFAULT CHARSET=utf8;
