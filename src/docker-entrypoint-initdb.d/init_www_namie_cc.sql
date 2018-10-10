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

create table url_0 like url;
create table url_1 like url;
create table url_2 like url;
create table url_3 like url;
create table url_4 like url;
create table url_5 like url;
create table url_6 like url;
create table url_7 like url;
create table url_8 like url;
create table url_9 like url;
