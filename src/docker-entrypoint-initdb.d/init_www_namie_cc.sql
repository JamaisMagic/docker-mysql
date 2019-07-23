create database if not exists www_picoluna_com default character set utf8;
create database if not exists www_namie_cc default character set utf8;
create database if not exists explorer_picoluna_com default character set utf8;

create table if not exists www_namie_cc.url (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `url` TEXT NOT NULL,
        `ip` varchar(128) CHARACTER SET utf8 NOT NULL,
        `ua` varchar(255) CHARACTER SET utf8 DEFAULT '',
        `ct` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `ut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    )ENGINE=INNODB DEFAULT CHARSET=utf8;

create table if not exists www_picoluna_com.web_push (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `endpoint` varchar(512) CHARACTER SET utf8 NOT NULL,
        `subscription` json NOT NULL,
        `ua` varchar(255) CHARACTER SET utf8 DEFAULT '',
        `ct` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `ut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`),
        UNIQUE KEY (`endpoint`)
    )ENGINE=INNODB DEFAULT CHARSET=utf8;

create table if not exists www_picoluna_com.web_push_user (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `uid` varchar(255)  CHARACTER SET utf8 DEFAULT '',
        `endpoint` varchar(512) CHARACTER SET utf8 NOT NULL,
        `subscription` json NOT NULL,
        `ua` varchar(255) CHARACTER SET utf8 DEFAULT '',
        `ct` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `ut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`),
        KEY (`uid`),
        KEY (`endpoint`),
        CONSTRAINT uid_endpoint UNIQUE (`uid`, `endpoint`)
    )ENGINE=INNODB DEFAULT CHARSET=utf8;

create table if not exists explorer_picoluna_com.asset_holders (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `address` varchar(128) CHARACTER SET utf8 NOT NULL,
        `quantity` decimal(22,8) DEFAULT 0,
        `percentage` decimal(5,4) DEFAULT 0,
        `tag` varchar(128) CHARACTER SET utf8 DEFAULT '',
        `ct` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `ut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`),
        KEY (`address`)
    )ENGINE=INNODB DEFAULT CHARSET=utf8;

create table www_namie_cc.url_0 like www_namie_cc.url;
create table www_namie_cc.url_1 like www_namie_cc.url;
create table www_namie_cc.url_2 like www_namie_cc.url;
create table www_namie_cc.url_3 like www_namie_cc.url;
create table www_namie_cc.url_4 like www_namie_cc.url;
create table www_namie_cc.url_5 like www_namie_cc.url;
create table www_namie_cc.url_6 like www_namie_cc.url;
create table www_namie_cc.url_7 like www_namie_cc.url;
create table www_namie_cc.url_8 like www_namie_cc.url;
create table www_namie_cc.url_9 like www_namie_cc.url;

create table www_picoluna_com.web_push_0 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_1 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_2 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_3 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_4 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_5 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_6 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_7 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_8 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_9 like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_a like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_b like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_c like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_d like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_e like www_picoluna_com.web_push;
create table www_picoluna_com.web_push_f like www_picoluna_com.web_push;
