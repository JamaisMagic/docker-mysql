create database if not exists cc_namie_normal default character set utf8;

use cc_namie_normal;

create table if not exists url (
        id INT NOT NULL AUTO_INCREMENT,
        url TEXT NOT NULL,
        ct DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        ip VARCHAR(15),
        PRIMARY KEY (id)
    )ENGINE=INNODB DEFAULT CHARSET=utf8;

commit;
