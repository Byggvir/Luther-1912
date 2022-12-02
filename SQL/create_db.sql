--
--
--

create database if not exists bible;
use bible;

drop table if exists books;

create table if not exists books (
      bnumber INT(11)
    , bname   CHAR(255)
    , primary key (bnumber)
    , index (bname)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 
;


drop table if exists verses;

create table if not exists verses (
      bnumber INT(11)
    , cnumber INT(11)
    , vnumber INT(11)
    , verse TEXT(1024)
    , primary key (bnumber,cnumber,vnumber)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 
;

drop table if exists wordlist;

create table if not exists wordlist (
      word CHAR(255)
    , wcount BIGINT(20)
    , primary key (word)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 
;

LOCK TABLES `books` WRITE;

LOAD DATA LOCAL 
INFILE '/tmp/biblebooks.csv'      
INTO TABLE `books`
FIELDS TERMINATED BY ';'
IGNORE 1 ROWS;

LOCK TABLES `verses` WRITE;
LOAD DATA LOCAL 
INFILE '/tmp/verses.csv'      
INTO TABLE `verses`
FIELDS TERMINATED BY '\t'
IGNORE 1 ROWS;

LOCK TABLES `wordlist` WRITE;
LOAD DATA LOCAL 
INFILE '/tmp/wordlist.csv'      
INTO TABLE `wordlist`
FIELDS TERMINATED BY ';'
IGNORE 0 ROWS;


UNLOCK TABLES;
