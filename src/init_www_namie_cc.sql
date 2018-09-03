drop database if exists cc_namie_normal;

create database cc_namie_normal default character set utf8;

use cc_namie_normal;

drop table if exists url;

create table url (
        id INT NOT NULL AUTO_INCREMENT,
        url TEXT NOT NULL,
        ct DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        ip VARCHAR(15),
        PRIMARY KEY (id)
    )ENGINE=INNODB DEFAULT CHARSET=utf8;
