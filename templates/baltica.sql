--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.358.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 11.11.2015 17:21:08
-- Версия сервера: 5.6.21
-- Версия клиента: 4.1
--


-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Установка базы данных по умолчанию
--
USE baltica;

--
-- Описание для таблицы dle_admin_logs
--
DROP TABLE IF EXISTS dle_admin_logs;
CREATE TABLE dle_admin_logs (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(40) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  action INT(11) NOT NULL DEFAULT 0,
  extras TEXT NOT NULL,
  PRIMARY KEY (id),
  INDEX date (date)
)
ENGINE = MYISAM
AUTO_INCREMENT = 87
AVG_ROW_LENGTH = 49
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_admin_sections
--
DROP TABLE IF EXISTS dle_admin_sections;
CREATE TABLE dle_admin_sections (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL DEFAULT '',
  title VARCHAR(255) NOT NULL DEFAULT '',
  descr VARCHAR(255) NOT NULL DEFAULT '',
  icon VARCHAR(255) NOT NULL DEFAULT '',
  allow_groups VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  UNIQUE INDEX name (name)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_banned
--
DROP TABLE IF EXISTS dle_banned;
CREATE TABLE dle_banned (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  users_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  descr TEXT NOT NULL,
  date VARCHAR(15) NOT NULL DEFAULT '',
  days SMALLINT(4) NOT NULL DEFAULT 0,
  ip VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX user_id (users_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_banners
--
DROP TABLE IF EXISTS dle_banners;
CREATE TABLE dle_banners (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  banner_tag VARCHAR(40) NOT NULL DEFAULT '',
  descr VARCHAR(200) NOT NULL DEFAULT '',
  code TEXT NOT NULL,
  approve TINYINT(1) NOT NULL DEFAULT 0,
  short_place TINYINT(1) NOT NULL DEFAULT 0,
  bstick TINYINT(1) NOT NULL DEFAULT 0,
  main TINYINT(1) NOT NULL DEFAULT 0,
  category VARCHAR(255) NOT NULL DEFAULT '',
  grouplevel VARCHAR(100) NOT NULL DEFAULT 'all',
  start VARCHAR(15) NOT NULL DEFAULT '',
  end VARCHAR(15) NOT NULL DEFAULT '',
  fpage TINYINT(1) NOT NULL DEFAULT 0,
  innews TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 1562
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_category
--
DROP TABLE IF EXISTS dle_category;
CREATE TABLE dle_category (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  parentid MEDIUMINT(8) NOT NULL DEFAULT 0,
  posi MEDIUMINT(8) NOT NULL DEFAULT 1,
  name VARCHAR(50) NOT NULL DEFAULT '',
  alt_name VARCHAR(50) NOT NULL DEFAULT '',
  icon VARCHAR(200) NOT NULL DEFAULT '',
  skin VARCHAR(50) NOT NULL DEFAULT '',
  descr VARCHAR(200) NOT NULL DEFAULT '',
  keywords TEXT NOT NULL,
  news_sort VARCHAR(10) NOT NULL DEFAULT '',
  news_msort VARCHAR(4) NOT NULL DEFAULT '',
  news_number SMALLINT(5) NOT NULL DEFAULT 0,
  short_tpl VARCHAR(40) NOT NULL DEFAULT '',
  full_tpl VARCHAR(40) NOT NULL DEFAULT '',
  metatitle VARCHAR(255) NOT NULL DEFAULT '',
  show_sub TINYINT(1) NOT NULL DEFAULT 0,
  allow_rss TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 48
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_comment_rating_log
--
DROP TABLE IF EXISTS dle_comment_rating_log;
CREATE TABLE dle_comment_rating_log (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  c_id INT(11) NOT NULL DEFAULT 0,
  member VARCHAR(40) NOT NULL DEFAULT '',
  ip VARCHAR(40) NOT NULL DEFAULT '',
  rating TINYINT(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX c_id (c_id),
  INDEX ip (ip),
  INDEX member (member)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_comments
--
DROP TABLE IF EXISTS dle_comments;
CREATE TABLE dle_comments (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  post_id INT(11) NOT NULL DEFAULT 0,
  user_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  date DATETIME NOT NULL DEFAULT '2000-01-01 00:00:00',
  autor VARCHAR(40) NOT NULL DEFAULT '',
  email VARCHAR(40) NOT NULL DEFAULT '',
  text TEXT NOT NULL,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  is_register TINYINT(1) NOT NULL DEFAULT 0,
  approve TINYINT(1) NOT NULL DEFAULT 1,
  rating INT(11) NOT NULL DEFAULT 0,
  vote_num INT(11) NOT NULL DEFAULT 0,
  parent INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX approve (approve),
  INDEX parent (parent),
  INDEX post_id (post_id),
  FULLTEXT INDEX text (text),
  INDEX user_id (user_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_complaint
--
DROP TABLE IF EXISTS dle_complaint;
CREATE TABLE dle_complaint (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  p_id INT(11) NOT NULL DEFAULT 0,
  c_id INT(11) NOT NULL DEFAULT 0,
  n_id INT(11) NOT NULL DEFAULT 0,
  text TEXT NOT NULL,
  `from` VARCHAR(40) NOT NULL DEFAULT '',
  `to` VARCHAR(255) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX c_id (c_id),
  INDEX n_id (n_id),
  INDEX p_id (p_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_email
--
DROP TABLE IF EXISTS dle_email;
CREATE TABLE dle_email (
  id TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL DEFAULT '',
  template TEXT NOT NULL,
  use_html TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 960
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_files
--
DROP TABLE IF EXISTS dle_files;
CREATE TABLE dle_files (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  news_id INT(10) NOT NULL DEFAULT 0,
  name VARCHAR(250) NOT NULL DEFAULT '',
  onserver VARCHAR(250) NOT NULL DEFAULT '',
  author VARCHAR(40) NOT NULL DEFAULT '',
  date VARCHAR(15) NOT NULL DEFAULT '',
  dcount MEDIUMINT(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_flood
--
DROP TABLE IF EXISTS dle_flood;
CREATE TABLE dle_flood (
  f_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  id VARCHAR(20) NOT NULL DEFAULT '',
  flag TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (f_id),
  INDEX flag (flag),
  INDEX id (id),
  INDEX ip (ip)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_ignore_list
--
DROP TABLE IF EXISTS dle_ignore_list;
CREATE TABLE dle_ignore_list (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  user INT(11) NOT NULL DEFAULT 0,
  user_from VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX user (user),
  INDEX user_from (user_from)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_images
--
DROP TABLE IF EXISTS dle_images;
CREATE TABLE dle_images (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  images TEXT NOT NULL,
  news_id INT(10) NOT NULL DEFAULT 0,
  author VARCHAR(40) NOT NULL DEFAULT '',
  date VARCHAR(15) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX author (author),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_links
--
DROP TABLE IF EXISTS dle_links;
CREATE TABLE dle_links (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  word VARCHAR(255) NOT NULL DEFAULT '',
  link VARCHAR(255) NOT NULL DEFAULT '',
  only_one TINYINT(1) NOT NULL DEFAULT 0,
  replacearea TINYINT(1) NOT NULL DEFAULT 1,
  rcount TINYINT(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_login_log
--
DROP TABLE IF EXISTS dle_login_log;
CREATE TABLE dle_login_log (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  count SMALLINT(6) NOT NULL DEFAULT 0,
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX date (date),
  UNIQUE INDEX ip (ip)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_logs
--
DROP TABLE IF EXISTS dle_logs;
CREATE TABLE dle_logs (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  news_id INT(10) NOT NULL DEFAULT 0,
  member VARCHAR(40) NOT NULL DEFAULT '',
  ip VARCHAR(40) NOT NULL DEFAULT '',
  rating TINYINT(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX ip (ip),
  INDEX member (member),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_lostdb
--
DROP TABLE IF EXISTS dle_lostdb;
CREATE TABLE dle_lostdb (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  lostname MEDIUMINT(8) NOT NULL DEFAULT 0,
  lostid VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX lostid (lostid)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_mail_log
--
DROP TABLE IF EXISTS dle_mail_log;
CREATE TABLE dle_mail_log (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT(11) NOT NULL DEFAULT 0,
  mail VARCHAR(50) NOT NULL DEFAULT '',
  hash VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX hash (hash)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_notice
--
DROP TABLE IF EXISTS dle_notice;
CREATE TABLE dle_notice (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  user_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  notice TEXT NOT NULL,
  PRIMARY KEY (id),
  INDEX user_id (user_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_pm
--
DROP TABLE IF EXISTS dle_pm;
CREATE TABLE dle_pm (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  subj VARCHAR(255) NOT NULL DEFAULT '',
  text TEXT NOT NULL,
  user MEDIUMINT(8) NOT NULL DEFAULT 0,
  user_from VARCHAR(40) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  pm_read TINYINT(1) NOT NULL DEFAULT 0,
  folder VARCHAR(10) NOT NULL DEFAULT '',
  reply TINYINT(1) NOT NULL DEFAULT 0,
  sendid INT(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX folder (folder),
  INDEX pm_read (pm_read),
  INDEX user (user),
  INDEX user_from (user_from)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_poll
--
DROP TABLE IF EXISTS dle_poll;
CREATE TABLE dle_poll (
  id MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  news_id INT(10) UNSIGNED NOT NULL DEFAULT 0,
  title VARCHAR(200) NOT NULL DEFAULT '',
  frage VARCHAR(200) NOT NULL DEFAULT '',
  body TEXT NOT NULL,
  votes MEDIUMINT(8) NOT NULL DEFAULT 0,
  multiple TINYINT(1) NOT NULL DEFAULT 0,
  answer TEXT NOT NULL,
  PRIMARY KEY (id),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_poll_log
--
DROP TABLE IF EXISTS dle_poll_log;
CREATE TABLE dle_poll_log (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  news_id INT(10) UNSIGNED NOT NULL DEFAULT 0,
  member VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX news_id (news_id, member)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_post
--
DROP TABLE IF EXISTS dle_post;
CREATE TABLE dle_post (
  id INT(11) NOT NULL AUTO_INCREMENT,
  autor VARCHAR(40) NOT NULL DEFAULT '',
  date DATETIME NOT NULL DEFAULT '2000-01-01 00:00:00',
  short_story TEXT NOT NULL,
  full_story TEXT NOT NULL,
  xfields TEXT NOT NULL,
  title VARCHAR(255) NOT NULL DEFAULT '',
  descr VARCHAR(200) NOT NULL DEFAULT '',
  keywords TEXT NOT NULL,
  category VARCHAR(200) NOT NULL DEFAULT '0',
  alt_name VARCHAR(200) NOT NULL DEFAULT '',
  comm_num MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
  allow_comm TINYINT(1) NOT NULL DEFAULT 1,
  allow_main TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
  approve TINYINT(1) NOT NULL DEFAULT 0,
  fixed TINYINT(1) NOT NULL DEFAULT 0,
  allow_br TINYINT(1) NOT NULL DEFAULT 1,
  symbol VARCHAR(3) NOT NULL DEFAULT '',
  tags VARCHAR(255) NOT NULL DEFAULT '',
  metatitle VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX allow_main (allow_main),
  INDEX alt_name (alt_name),
  INDEX approve (approve),
  INDEX autor (autor),
  INDEX category (category),
  INDEX comm_num (comm_num),
  INDEX date (date),
  INDEX fixed (fixed),
  FULLTEXT INDEX short_story (short_story, full_story, xfields, title),
  INDEX symbol (symbol),
  INDEX tags (tags(250))
)
ENGINE = MYISAM
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 6144
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_post_extras
--
DROP TABLE IF EXISTS dle_post_extras;
CREATE TABLE dle_post_extras (
  eid INT(11) NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  news_read INT(11) NOT NULL DEFAULT 0,
  allow_rate TINYINT(1) NOT NULL DEFAULT 1,
  rating INT(11) NOT NULL DEFAULT 0,
  vote_num INT(11) NOT NULL DEFAULT 0,
  votes TINYINT(1) NOT NULL DEFAULT 0,
  view_edit TINYINT(1) NOT NULL DEFAULT 0,
  disable_index TINYINT(1) NOT NULL DEFAULT 0,
  related_ids VARCHAR(255) NOT NULL DEFAULT '',
  access VARCHAR(150) NOT NULL DEFAULT '',
  editdate INT(11) NOT NULL DEFAULT 0,
  editor VARCHAR(40) NOT NULL DEFAULT '',
  reason VARCHAR(255) NOT NULL DEFAULT '',
  user_id INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (eid),
  INDEX news_id (news_id),
  INDEX user_id (user_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 64
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_post_log
--
DROP TABLE IF EXISTS dle_post_log;
CREATE TABLE dle_post_log (
  id INT(11) NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  expires VARCHAR(15) NOT NULL DEFAULT '',
  action TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX expires (expires),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_question
--
DROP TABLE IF EXISTS dle_question;
CREATE TABLE dle_question (
  id INT(11) NOT NULL AUTO_INCREMENT,
  question VARCHAR(255) NOT NULL DEFAULT '',
  answer TEXT NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_read_log
--
DROP TABLE IF EXISTS dle_read_log;
CREATE TABLE dle_read_log (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX ip (ip),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_rss
--
DROP TABLE IF EXISTS dle_rss;
CREATE TABLE dle_rss (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  url VARCHAR(255) NOT NULL DEFAULT '',
  description TEXT NOT NULL,
  allow_main TINYINT(1) NOT NULL DEFAULT 0,
  allow_rating TINYINT(1) NOT NULL DEFAULT 0,
  allow_comm TINYINT(1) NOT NULL DEFAULT 0,
  text_type TINYINT(1) NOT NULL DEFAULT 0,
  date TINYINT(1) NOT NULL DEFAULT 0,
  search TEXT NOT NULL,
  max_news TINYINT(3) NOT NULL DEFAULT 0,
  cookie TEXT NOT NULL,
  category SMALLINT(5) NOT NULL DEFAULT 0,
  lastdate INT(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 184
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_rssinform
--
DROP TABLE IF EXISTS dle_rssinform;
CREATE TABLE dle_rssinform (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  tag VARCHAR(40) NOT NULL DEFAULT '',
  descr VARCHAR(255) NOT NULL DEFAULT '',
  category VARCHAR(200) NOT NULL DEFAULT '',
  url VARCHAR(255) NOT NULL DEFAULT '',
  template VARCHAR(40) NOT NULL DEFAULT '',
  news_max SMALLINT(5) NOT NULL DEFAULT 0,
  tmax SMALLINT(5) NOT NULL DEFAULT 0,
  dmax SMALLINT(5) NOT NULL DEFAULT 0,
  approve TINYINT(1) NOT NULL DEFAULT 1,
  rss_date_format VARCHAR(20) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 104
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_sendlog
--
DROP TABLE IF EXISTS dle_sendlog;
CREATE TABLE dle_sendlog (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  user VARCHAR(40) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  flag TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX date (date),
  INDEX flag (flag),
  INDEX user (user)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_social_login
--
DROP TABLE IF EXISTS dle_social_login;
CREATE TABLE dle_social_login (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sid VARCHAR(40) NOT NULL DEFAULT '',
  uid INT(11) NOT NULL DEFAULT 0,
  password VARCHAR(32) NOT NULL DEFAULT '',
  provider VARCHAR(15) NOT NULL DEFAULT '',
  wait TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX sid (sid)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_spam_log
--
DROP TABLE IF EXISTS dle_spam_log;
CREATE TABLE dle_spam_log (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  is_spammer TINYINT(1) NOT NULL DEFAULT 0,
  email VARCHAR(50) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX ip (ip),
  INDEX is_spammer (is_spammer)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_static
--
DROP TABLE IF EXISTS dle_static;
CREATE TABLE dle_static (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL DEFAULT '',
  descr VARCHAR(255) NOT NULL DEFAULT '',
  template TEXT NOT NULL,
  allow_br TINYINT(1) NOT NULL DEFAULT 0,
  allow_template TINYINT(1) NOT NULL DEFAULT 0,
  grouplevel VARCHAR(100) NOT NULL DEFAULT 'all',
  tpl VARCHAR(40) NOT NULL DEFAULT '',
  metadescr VARCHAR(200) NOT NULL DEFAULT '',
  metakeys TEXT NOT NULL,
  views MEDIUMINT(8) NOT NULL DEFAULT 0,
  template_folder VARCHAR(50) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  metatitle VARCHAR(255) NOT NULL DEFAULT '',
  allow_count TINYINT(1) NOT NULL DEFAULT 1,
  sitemap TINYINT(1) NOT NULL DEFAULT 1,
  disable_index TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX name (name),
  FULLTEXT INDEX template (template)
)
ENGINE = MYISAM
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 2836
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_static_files
--
DROP TABLE IF EXISTS dle_static_files;
CREATE TABLE dle_static_files (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  static_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  author VARCHAR(40) NOT NULL DEFAULT '',
  date VARCHAR(50) NOT NULL DEFAULT '',
  name VARCHAR(255) NOT NULL DEFAULT '',
  onserver VARCHAR(255) NOT NULL DEFAULT '',
  dcount MEDIUMINT(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX author (author),
  INDEX onserver (onserver(250)),
  INDEX static_id (static_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 64
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_subscribe
--
DROP TABLE IF EXISTS dle_subscribe;
CREATE TABLE dle_subscribe (
  id INT(11) NOT NULL AUTO_INCREMENT,
  user_id INT(11) NOT NULL DEFAULT 0,
  name VARCHAR(40) NOT NULL DEFAULT '',
  email VARCHAR(50) NOT NULL DEFAULT '',
  news_id INT(11) NOT NULL DEFAULT 0,
  hash VARCHAR(32) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX news_id (news_id),
  INDEX user_id (user_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_tags
--
DROP TABLE IF EXISTS dle_tags;
CREATE TABLE dle_tags (
  id INT(11) NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  tag VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX news_id (news_id),
  INDEX tag (tag)
)
ENGINE = MYISAM
AUTO_INCREMENT = 6
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_usergroups
--
DROP TABLE IF EXISTS dle_usergroups;
CREATE TABLE dle_usergroups (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  group_name VARCHAR(32) NOT NULL DEFAULT '',
  allow_cats TEXT NOT NULL,
  allow_adds TINYINT(1) NOT NULL DEFAULT 1,
  cat_add TEXT NOT NULL,
  allow_admin TINYINT(1) NOT NULL DEFAULT 0,
  allow_addc TINYINT(1) NOT NULL DEFAULT 0,
  allow_editc TINYINT(1) NOT NULL DEFAULT 0,
  allow_delc TINYINT(1) NOT NULL DEFAULT 0,
  edit_allc TINYINT(1) NOT NULL DEFAULT 0,
  del_allc TINYINT(1) NOT NULL DEFAULT 0,
  moderation TINYINT(1) NOT NULL DEFAULT 0,
  allow_all_edit TINYINT(1) NOT NULL DEFAULT 0,
  allow_edit TINYINT(1) NOT NULL DEFAULT 0,
  allow_pm TINYINT(1) NOT NULL DEFAULT 0,
  max_pm SMALLINT(5) NOT NULL DEFAULT 0,
  max_foto VARCHAR(10) NOT NULL DEFAULT '',
  allow_files TINYINT(1) NOT NULL DEFAULT 0,
  allow_hide TINYINT(1) NOT NULL DEFAULT 1,
  allow_short TINYINT(1) NOT NULL DEFAULT 0,
  time_limit TINYINT(1) NOT NULL DEFAULT 0,
  rid SMALLINT(5) NOT NULL DEFAULT 0,
  allow_fixed TINYINT(1) NOT NULL DEFAULT 0,
  allow_feed TINYINT(1) NOT NULL DEFAULT 1,
  allow_search TINYINT(1) NOT NULL DEFAULT 1,
  allow_poll TINYINT(1) NOT NULL DEFAULT 1,
  allow_main TINYINT(1) NOT NULL DEFAULT 1,
  captcha TINYINT(1) NOT NULL DEFAULT 0,
  icon VARCHAR(200) NOT NULL DEFAULT '',
  allow_modc TINYINT(1) NOT NULL DEFAULT 0,
  allow_rating TINYINT(1) NOT NULL DEFAULT 1,
  allow_offline TINYINT(1) NOT NULL DEFAULT 0,
  allow_image_upload TINYINT(1) NOT NULL DEFAULT 0,
  allow_file_upload TINYINT(1) NOT NULL DEFAULT 0,
  allow_signature TINYINT(1) NOT NULL DEFAULT 0,
  allow_url TINYINT(1) NOT NULL DEFAULT 1,
  news_sec_code TINYINT(1) NOT NULL DEFAULT 1,
  allow_image TINYINT(1) NOT NULL DEFAULT 0,
  max_signature SMALLINT(6) NOT NULL DEFAULT 0,
  max_info SMALLINT(6) NOT NULL DEFAULT 0,
  admin_addnews TINYINT(1) NOT NULL DEFAULT 0,
  admin_editnews TINYINT(1) NOT NULL DEFAULT 0,
  admin_comments TINYINT(1) NOT NULL DEFAULT 0,
  admin_categories TINYINT(1) NOT NULL DEFAULT 0,
  admin_editusers TINYINT(1) NOT NULL DEFAULT 0,
  admin_wordfilter TINYINT(1) NOT NULL DEFAULT 0,
  admin_xfields TINYINT(1) NOT NULL DEFAULT 0,
  admin_userfields TINYINT(1) NOT NULL DEFAULT 0,
  admin_static TINYINT(1) NOT NULL DEFAULT 0,
  admin_editvote TINYINT(1) NOT NULL DEFAULT 0,
  admin_newsletter TINYINT(1) NOT NULL DEFAULT 0,
  admin_blockip TINYINT(1) NOT NULL DEFAULT 0,
  admin_banners TINYINT(1) NOT NULL DEFAULT 0,
  admin_rss TINYINT(1) NOT NULL DEFAULT 0,
  admin_iptools TINYINT(1) NOT NULL DEFAULT 0,
  admin_rssinform TINYINT(1) NOT NULL DEFAULT 0,
  admin_googlemap TINYINT(1) NOT NULL DEFAULT 0,
  allow_html TINYINT(1) NOT NULL DEFAULT 1,
  group_prefix TEXT NOT NULL,
  group_suffix TEXT NOT NULL,
  allow_subscribe TINYINT(1) NOT NULL DEFAULT 0,
  allow_image_size TINYINT(1) NOT NULL DEFAULT 0,
  cat_allow_addnews TEXT NOT NULL,
  flood_news SMALLINT(6) NOT NULL DEFAULT 0,
  max_day_news SMALLINT(6) NOT NULL DEFAULT 0,
  force_leech TINYINT(1) NOT NULL DEFAULT 0,
  edit_limit SMALLINT(6) NOT NULL DEFAULT 0,
  captcha_pm TINYINT(1) NOT NULL DEFAULT 0,
  max_pm_day SMALLINT(6) NOT NULL DEFAULT 0,
  max_mail_day SMALLINT(6) NOT NULL DEFAULT 0,
  admin_tagscloud TINYINT(1) NOT NULL DEFAULT 0,
  allow_vote TINYINT(1) NOT NULL DEFAULT 0,
  admin_complaint TINYINT(1) NOT NULL DEFAULT 0,
  news_question TINYINT(1) NOT NULL DEFAULT 0,
  comments_question TINYINT(1) NOT NULL DEFAULT 0,
  max_comment_day SMALLINT(6) NOT NULL DEFAULT 0,
  max_images SMALLINT(6) NOT NULL DEFAULT 0,
  max_files SMALLINT(6) NOT NULL DEFAULT 0,
  disable_news_captcha SMALLINT(6) NOT NULL DEFAULT 0,
  disable_comments_captcha SMALLINT(6) NOT NULL DEFAULT 0,
  pm_question TINYINT(1) NOT NULL DEFAULT 0,
  captcha_feedback TINYINT(1) NOT NULL DEFAULT 1,
  feedback_question TINYINT(1) NOT NULL DEFAULT 0,
  files_type VARCHAR(255) NOT NULL DEFAULT '',
  max_file_size MEDIUMINT(9) NOT NULL DEFAULT 0,
  files_max_speed SMALLINT(6) NOT NULL DEFAULT 0,
  allow_lostpassword TINYINT(1) NOT NULL DEFAULT 1,
  spamfilter TINYINT(1) NOT NULL DEFAULT 2,
  allow_comments_rating TINYINT(1) NOT NULL DEFAULT 1,
  max_edit_days TINYINT(1) NOT NULL DEFAULT 0,
  spampmfilter TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 155
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_users
--
DROP TABLE IF EXISTS dle_users;
CREATE TABLE dle_users (
  email VARCHAR(50) NOT NULL DEFAULT '',
  password VARCHAR(32) NOT NULL DEFAULT '',
  name VARCHAR(40) NOT NULL DEFAULT '',
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  news_num MEDIUMINT(8) NOT NULL DEFAULT 0,
  comm_num MEDIUMINT(8) NOT NULL DEFAULT 0,
  user_group SMALLINT(5) NOT NULL DEFAULT 4,
  lastdate VARCHAR(20) DEFAULT NULL,
  reg_date VARCHAR(20) DEFAULT NULL,
  banned VARCHAR(5) NOT NULL DEFAULT '',
  allow_mail TINYINT(1) NOT NULL DEFAULT 1,
  info TEXT NOT NULL,
  signature TEXT NOT NULL,
  foto VARCHAR(255) NOT NULL DEFAULT '',
  fullname VARCHAR(100) NOT NULL DEFAULT '',
  land VARCHAR(100) NOT NULL DEFAULT '',
  favorites TEXT NOT NULL,
  pm_all SMALLINT(5) NOT NULL DEFAULT 0,
  pm_unread SMALLINT(5) NOT NULL DEFAULT 0,
  time_limit VARCHAR(20) NOT NULL DEFAULT '',
  xfields TEXT NOT NULL,
  allowed_ip VARCHAR(255) NOT NULL DEFAULT '',
  hash VARCHAR(32) NOT NULL DEFAULT '',
  logged_ip VARCHAR(40) NOT NULL DEFAULT '',
  restricted TINYINT(1) NOT NULL DEFAULT 0,
  restricted_days SMALLINT(4) NOT NULL DEFAULT 0,
  restricted_date VARCHAR(15) NOT NULL DEFAULT '',
  timezone VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY (user_id),
  UNIQUE INDEX email (email),
  UNIQUE INDEX name (name)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 136
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_views
--
DROP TABLE IF EXISTS dle_views;
CREATE TABLE dle_views (
  id INT(11) NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_vote
--
DROP TABLE IF EXISTS dle_vote;
CREATE TABLE dle_vote (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  category TEXT NOT NULL,
  vote_num MEDIUMINT(8) NOT NULL DEFAULT 0,
  date VARCHAR(25) NOT NULL DEFAULT '0',
  title VARCHAR(200) NOT NULL DEFAULT '',
  body TEXT NOT NULL,
  approve TINYINT(1) NOT NULL DEFAULT 1,
  start VARCHAR(15) NOT NULL DEFAULT '',
  end VARCHAR(15) NOT NULL DEFAULT '',
  grouplevel VARCHAR(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (id),
  INDEX approve (approve)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 276
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

--
-- Описание для таблицы dle_vote_result
--
DROP TABLE IF EXISTS dle_vote_result;
CREATE TABLE dle_vote_result (
  id INT(10) NOT NULL AUTO_INCREMENT,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  name VARCHAR(40) NOT NULL DEFAULT '',
  vote_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  answer TINYINT(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX answer (answer),
  INDEX ip (ip),
  INDEX name (name),
  INDEX vote_id (vote_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

-- 
-- Вывод данных для таблицы dle_admin_logs
--
INSERT INTO dle_admin_logs VALUES
(1, 'gordondalos', 1447153100, '::1', 86, 'http://localhost/baltica_dle/index.php?'),
(2, 'gordondalos', 1447153209, '::1', 66, 'Default'),
(3, 'gordondalos', 1447162678, '::1', 70, 'gordondalos/main.tpl'),
(4, 'gordondalos', 1447168065, '::1', 59, 'o-kompanii'),
(5, 'gordondalos', 1447168445, '::1', 1, 'Что следует помнить, приобретая автозапчасти'),
(6, 'gordondalos', 1447168868, '::1', 25, 'Что следует помнить, приобретая автозапчасти'),
(7, 'gordondalos', 1447168931, '::1', 26, 'Добро пожаловать'),
(8, 'gordondalos', 1447168931, '::1', 26, 'Приобретение и оплата скрипта'),
(9, 'gordondalos', 1447168931, '::1', 26, 'Осуществление технической поддержки скрипта'),
(10, 'gordondalos', 1447171619, '::1', 25, 'Что следует помнить, приобретая автозапчасти'),
(11, 'gordondalos', 1447171858, '::1', 25, 'Что следует помнить, приобретая автозапчасти'),
(12, 'gordondalos', 1447171941, '::1', 60, 'o-kompanii'),
(13, 'gordondalos', 1447171993, '::1', 60, 'o-kompanii'),
(14, 'gordondalos', 1447173565, '::1', 60, 'o-kompanii'),
(15, 'gordondalos', 1447174211, '::1', 59, 'katalog-produkcii'),
(16, 'gordondalos', 1447174484, '::1', 60, 'katalog-produkcii'),
(17, 'gordondalos', 1447174842, '::1', 60, 'katalog-produkcii'),
(18, 'gordondalos', 1447174885, '::1', 60, 'katalog-produkcii'),
(19, 'gordondalos', 1447175199, '::1', 59, 'vakansii'),
(20, 'gordondalos', 1447175342, '::1', 60, 'vakansii'),
(21, 'gordondalos', 1447175494, '::1', 59, 'kontakty'),
(22, 'gordondalos', 1447175585, '::1', 36, '1447175610_map2.png'),
(23, 'gordondalos', 1447175597, '::1', 60, 'kontakty'),
(24, 'gordondalos', 1447175628, '::1', 60, 'kontakty'),
(25, 'gordondalos', 1447175647, '::1', 60, 'kontakty'),
(26, 'gordondalos', 1447227142, '::1', 60, 'kontakty'),
(27, 'gordondalos', 1447227217, '::1', 60, 'kontakty'),
(28, 'gordondalos', 1447227263, '::1', 60, 'kontakty'),
(29, 'gordondalos', 1447227300, '::1', 60, 'kontakty'),
(30, 'gordondalos', 1447227300, '::1', 60, 'kontakty'),
(31, 'gordondalos', 1447227355, '::1', 60, 'kontakty'),
(32, 'gordondalos', 1447227355, '::1', 60, 'kontakty'),
(33, 'gordondalos', 1447229194, '::1', 60, 'katalog-produkcii'),
(34, 'gordondalos', 1447229241, '::1', 60, 'katalog-produkcii'),
(35, 'gordondalos', 1447229974, '::1', 37, 'boxsmall.jpg'),
(36, 'gordondalos', 1447230045, '::1', 36, 'slide1.png'),
(37, 'gordondalos', 1447230045, '::1', 36, 'slide2.png'),
(38, 'gordondalos', 1447230045, '::1', 36, 'slide3.png'),
(39, 'gordondalos', 1447230045, '::1', 36, 'slide4.png'),
(40, 'gordondalos', 1447230045, '::1', 36, 'slide5.png'),
(41, 'gordondalos', 1447230045, '::1', 36, 'slide6.png'),
(42, 'gordondalos', 1447230045, '::1', 36, 'slide7.png'),
(43, 'gordondalos', 1447230045, '::1', 36, 'slide8.png'),
(44, 'gordondalos', 1447231899, '::1', 4, 'svidetelstvo1'),
(45, 'gordondalos', 1447231990, '::1', 8, '1'),
(46, 'gordondalos', 1447231998, '::1', 8, '1'),
(47, 'gordondalos', 1447232004, '::1', 8, '1'),
(48, 'gordondalos', 1447232004, '::1', 8, '1'),
(49, 'gordondalos', 1447232005, '::1', 8, '1'),
(50, 'gordondalos', 1447232007, '::1', 8, '1'),
(51, 'gordondalos', 1447232007, '::1', 8, '1'),
(52, 'gordondalos', 1447232008, '::1', 8, '1'),
(53, 'gordondalos', 1447232009, '::1', 8, '1'),
(54, 'gordondalos', 1447232011, '::1', 8, '1'),
(55, 'gordondalos', 1447232012, '::1', 8, '1'),
(56, 'gordondalos', 1447232012, '::1', 8, '1'),
(57, 'gordondalos', 1447232014, '::1', 8, '1'),
(58, 'gordondalos', 1447232014, '::1', 8, '1'),
(59, 'gordondalos', 1447232016, '::1', 8, '1'),
(60, 'gordondalos', 1447232060, '::1', 5, 'svidetelstvo1'),
(61, 'gordondalos', 1447232096, '::1', 5, 'svidetelstvo1'),
(62, 'gordondalos', 1447234335, '::1', 4, 'sidebar2'),
(63, 'gordondalos', 1447234425, '::1', 5, 'sidebar2'),
(64, 'gordondalos', 1447234484, '::1', 5, 'sidebar2'),
(65, 'gordondalos', 1447234508, '::1', 5, 'sidebar2'),
(66, 'gordondalos', 1447234705, '::1', 4, 'info'),
(67, 'gordondalos', 1447234769, '::1', 5, 'info'),
(68, 'gordondalos', 1447234788, '::1', 5, 'info'),
(69, 'gordondalos', 1447234893, '::1', 5, 'info'),
(70, 'gordondalos', 1447234946, '::1', 5, 'svidetelstvo1'),
(71, 'gordondalos', 1447234994, '::1', 5, 'info'),
(72, 'gordondalos', 1447235034, '::1', 5, 'info'),
(73, 'gordondalos', 1447235091, '::1', 5, 'info'),
(74, 'gordondalos', 1447235113, '::1', 5, 'info'),
(75, 'gordondalos', 1447235141, '::1', 5, 'info'),
(76, 'gordondalos', 1447235303, '::1', 60, 'katalog-produkcii'),
(77, 'gordondalos', 1447235340, '::1', 60, 'katalog-produkcii'),
(78, 'gordondalos', 1447235573, '::1', 60, 'katalog-produkcii'),
(79, 'gordondalos', 1447235626, '::1', 60, 'katalog-produkcii'),
(80, 'gordondalos', 1447236193, '::1', 60, 'katalog-produkcii'),
(81, 'gordondalos', 1447236238, '::1', 60, 'katalog-produkcii'),
(82, 'gordondalos', 1447236299, '::1', 60, 'katalog-produkcii'),
(83, 'gordondalos', 1447236324, '::1', 60, 'katalog-produkcii'),
(84, 'gordondalos', 1447236362, '::1', 60, 'katalog-produkcii'),
(85, 'gordondalos', 1447236463, '::1', 60, 'o-kompanii'),
(86, 'gordondalos', 1447236488, '::1', 60, 'o-kompanii');

-- 
-- Вывод данных для таблицы dle_admin_sections
--

-- Таблица baltica.dle_admin_sections не содержит данных

-- 
-- Вывод данных для таблицы dle_banned
--

-- Таблица baltica.dle_banned не содержит данных

-- 
-- Вывод данных для таблицы dle_banners
--
INSERT INTO dle_banners VALUES
(3, 'sidebar2', 'Sidebar2', '<section class="section_3">\r\n    <div class="container section_3_contact">\r\n        <div class="row">\r\n             <div class="col-md-4 rekvizit bumaga">\r\n    \r\n                <h2>Реквизиты</h2>\r\n                \r\n                <p>\r\n                    <b>Полное наименование: </b> <br>\r\n                    Общество с ограниченной ответственностью\r\n                    «БАЛТСПЕЦСЕРВИС»\r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Сокращенное наименование:</b><br>\r\n                    OOO«БАЛТСПЕЦСЕРВИС»<br>\r\n                    ИНН 7843302255 / КПП 784301001<br>\r\n                    ОКАТО 40280501000<br>\r\n                    ОГРН 1057812510667<br>\r\n                    ОКПО 77743875<br>\r\n                    ОКВЭД 50.20 29.40.9 50.3.51.6.74.2.74.20<br>\r\n                    74.20.35\r\n                \r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Плательщик:</b>  OOO«БАЛТСПЕЦСЕРВИС»<br>\r\n                    Юридический адресс: 197762, г <br>\r\n                    Санкт-Петербург, г. Кронштадт,<br>\r\n                    ул. Гусева, дом 12-71<br>\r\n                    Тел.: 8(495) 725-06-11<br>\r\n                    Р/с 40702810321000000857, БИК 04403790<br>\r\n                    Банк ПАО «БАНК «САНКТ-ПЕТЕРБУРГ» г.<br>\r\n                    Санкт-Петербург<br>\r\n                    К/с 30101810900000000790<br>\r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Грузополучатель:</b>  OOO«БАЛТСПЕЦСЕРВИС» <br>\r\n                    ИНН 7843302255 / КПП 784301001<br>\r\n                    141044 , Московская область, Мытищински <br>\r\n                    район, деревня Грибки, д.64 А\r\n                    Тел.: 8(495) 725-06-11\r\n                    E-mail: infobss1@mail.ru\r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Почтовый адрес:</b> 141700, Московская обл., г<br>\r\n                    Долгопрудный,<br>\r\n                    ул. Дирижабельная, д. 13, а/я №8\r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Коммерческий директор:</b> Черкес Михаил Степанович,<br>\r\n                    действует на основании доверенности № 78<br>\r\n                    АА 8134046 от 29.01.2015 г.\r\n                </p>\r\n    \r\n    \r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>', 1, 0, 0, 0, '0', 'all', '', '', 0, 0),
(2, 'svidetelstvo1', 'Svidetelstvo1', '<div class="col-md-4 bumaga">\r\n\t<h2>Диллерские свидетельства</h2>\r\n\t<div class="img-wrap">\r\n\t\t<img src="{THEME}/img/sertifikat1.png" alt="Сертификат" data-action="zoom">\r\n\t\t<img src="{THEME}/img/sertifikat2.png" alt="Сертификат2" data-action="zoom">\r\n\t\t<img src="{THEME}/img/svidetelstwo.png" alt="Свидетельство" data-action="zoom">\r\n\t</div>\r\n\r\n</div>', 1, 0, 0, 0, '0', 'all', '', '', 0, 0),
(4, 'info', 'info', '<div class="container section_3_info">\r\n        <div class="row">\r\n            \r\n            <div class="col-md-4 bumaga">\r\n    \r\n                <h2>Описание и характеристики</h2>\r\n                <ul>\r\n                \t<li>- Двигатель ЯМЗ-530 Е4<br> <a href=''#''>(скачать)</a></li>\r\n                \t<li>- Двигатель ЯМЗ-530 Е4<br> <a href=''#''>(скачать)</a></li>\r\n                \r\n                </ul>\r\n                <h2>Типовой договор</h2>\r\n                <ul>\r\n                    <li>- Скачать образец договора<br> <a href=''#''>(скачать)</a></li>\r\n                \r\n                \r\n                </ul>\r\n                 <h2>Дилерские свидетельства</h2>\r\n                    <div class="img-wrap">\r\n                    <img src="{THEME}/img/sertifikat1.png" alt="Сертификат" data-action="zoom">\r\n                    <img src="{THEME}/img/sertifikat2.png" alt="Сертификат2" data-action="zoom">\r\n                    <img src="{THEME}/img/svidetelstwo.png" alt="Свидетельство" data-action="zoom">\r\n                </div>\r\n\r\n\t\t\t\t</div>\r\n            </div>\r\n        </div>', 1, 0, 0, 0, '0', 'all', '', '', 0, 0);

-- 
-- Вывод данных для таблицы dle_category
--
INSERT INTO dle_category VALUES
(1, 0, 1, 'Информация', 'main', '', '', '', '', '', '', 0, '', '', '', 0, 1);

-- 
-- Вывод данных для таблицы dle_comment_rating_log
--

-- Таблица baltica.dle_comment_rating_log не содержит данных

-- 
-- Вывод данных для таблицы dle_comments
--

-- Таблица baltica.dle_comments не содержит данных

-- 
-- Вывод данных для таблицы dle_complaint
--

-- Таблица baltica.dle_complaint не содержит данных

-- 
-- Вывод данных для таблицы dle_email
--
INSERT INTO dle_email VALUES
(1, 'reg_mail', '{%username%},\r\n\r\nЭто письмо отправлено с сайта http://localhost/baltica_dle/\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/.', 0),
(2, 'feed_mail', '{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта http://localhost/baltica_dle/\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/', 0),
(3, 'lost_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте http://localhost/baltica_dle/ Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/', 0),
(4, 'new_news', 'Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  http://localhost/baltica_dle/ была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/', 0),
(5, 'comments', 'Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  http://localhost/baltica_dle/ был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/', 0),
(6, 'pm', 'Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  http://localhost/baltica_dle/ вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/', 0),
(7, 'wait_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на обьединение  вашего аккаунта на сайте http://localhost/baltica_dle/ с аккаунтом в социальной сети {%network%}.  Однако в целях безопасности вам необходимо подтвердить данное действие по следующей ссылке: \r\n\r\n------------------------------------------------\r\n{%link%}\r\n------------------------------------------------\r\n\r\nВнимание, в случае объединения аккаунтов, ваш основной пароль на сайте будет сброшен, и если вы входили на сайт используя ваш логин и пароль, то ваш пароль будет больше не действителен.\r\n\r\nЕсли вы не делали данного запроса, то просто удалите это письмо, данные вашего аккаунта хранятся в надежном месте, и недоступны посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/', 0),
(8, 'newsletter', '<html>\r\n<head>\r\n<title>{%title%}</title>\r\n<meta content="text/html; charset={%charset%}" http-equiv=Content-Type>\r\n<style type="text/css">\r\nhtml,body{\r\n    font-family: Verdana;\r\n    word-spacing: 0.1em;\r\n    letter-spacing: 0;\r\n    line-height: 1.5em;\r\n    font-size: 11px;\r\n}\r\n\r\np {\r\n\tmargin:0px;\r\n\tpadding: 0px;\r\n}\r\n\r\na:active,\r\na:visited,\r\na:link {\r\n\tcolor: #4b719e;\r\n\ttext-decoration:none;\r\n}\r\n\r\na:hover {\r\n\tcolor: #4b719e;\r\n\ttext-decoration: underline;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n{%content%}\r\n</body>\r\n</html>', 0);

-- 
-- Вывод данных для таблицы dle_files
--

-- Таблица baltica.dle_files не содержит данных

-- 
-- Вывод данных для таблицы dle_flood
--

-- Таблица baltica.dle_flood не содержит данных

-- 
-- Вывод данных для таблицы dle_ignore_list
--

-- Таблица baltica.dle_ignore_list не содержит данных

-- 
-- Вывод данных для таблицы dle_images
--

-- Таблица baltica.dle_images не содержит данных

-- 
-- Вывод данных для таблицы dle_links
--

-- Таблица baltica.dle_links не содержит данных

-- 
-- Вывод данных для таблицы dle_login_log
--

-- Таблица baltica.dle_login_log не содержит данных

-- 
-- Вывод данных для таблицы dle_logs
--

-- Таблица baltica.dle_logs не содержит данных

-- 
-- Вывод данных для таблицы dle_lostdb
--

-- Таблица baltica.dle_lostdb не содержит данных

-- 
-- Вывод данных для таблицы dle_mail_log
--

-- Таблица baltica.dle_mail_log не содержит данных

-- 
-- Вывод данных для таблицы dle_notice
--

-- Таблица baltica.dle_notice не содержит данных

-- 
-- Вывод данных для таблицы dle_pm
--

-- Таблица baltica.dle_pm не содержит данных

-- 
-- Вывод данных для таблицы dle_poll
--

-- Таблица baltica.dle_poll не содержит данных

-- 
-- Вывод данных для таблицы dle_poll_log
--

-- Таблица baltica.dle_poll_log не содержит данных

-- 
-- Вывод данных для таблицы dle_post
--
INSERT INTO dle_post VALUES
(4, 'gordondalos', '2015-11-10 18:14:05', '<p><br />Если вы приняли решение приобрести ту или иную запасную часть для вашего вышедшего из строя автомобиля на рынке, и хотите при этом получить качественный товар по приемлемой цене, то вам необходимо знать несколько важных правил.<br /></p>', '<p><br />Если вы приняли решение приобрести ту или иную запасную часть для вашего вышедшего из строя автомобиля на рынке, и хотите при этом получить качественный товар по приемлемой цене, то вам необходимо знать несколько важных правил.<br /></p><p><br />                    Отправляясь на рынок автозапчастей, в первую очередь, нужно помнить о том, что не все запчасти, представленные в продаже, являются одинаково качественными. Об этом свидетельствует достаточно существенная разница в ценах на аналогичные товары. Здесь стоит отметить, что цена на деталь в значительной мере зависит от того, принадлежит ли эта деталь к числу оригинальных или является их аналогом.<br /></p><p><br />           Дело в том, что на рынке представлены как оригинальные детали, предназначенные для определённой марки автомобиля и выпущенные заводом-производителем этой марки, так и аналоговые детали, изготовленные независимыми производителями. Наиболее подходящей для каждого конкретного автомобиля является, конечно, оригинальная деталь, имеющая уникальный номер и фирменную маркировку. Но из-за высокой цены на неё многие автолюбители все же задумываются над приобретением её аналоговой копии.<br /></p><p><br />                    Заводов-производителей, занимающихся выпуском неоригинальных деталей, существует множество, при этом не все из них добросовестно следят за качеством своей продукции. Поэтому, приняв решение о покупке аналоговой запчасти, следует предварительно ознакомиться с отзывами о том или ином производителе подобных деталей, чтобы избежать покупки некачественной или поддельной продукции.<br /></p><p><br />                    Продажей оригинальных деталей занимаются официальные дилеры отдельной марки, на рынках же в основном представлены аналоговые продукты. Помня о том, что качество таких продуктов может существенно отличаться, нужно быть особенно внимательным при их осмотре. Так, более качественные детали, как правило, упакованы в коробки с фирменной эмблемой, в то время как дешёвые поддельные товары часто просто заворачиваются в пакет или упаковочную бумагу. При рассмотрении самой детали необходимо отмечать аккуратность и надёжность её исполнения, на основании чего и делать вывод о её качественности. При этом запчасть, вышедшую из строя, лучше взять с собой в качестве образца, чтобы не ошибиться с выбором.<br /></p><p /><br />                    В заключение необходимо отметить, что на рынке следует приобретать только мелкие запасные детали, неоригинальность которых вряд ли негативно отразится на работе машины в целом. Если же речь идёт о замене какой-либо существенной части автомобиля, то здесь имеет смысл отдать предпочтение именно официальному производителю.', '', 'Что следует помнить, приобретая автозапчасти', 'Если вы приняли решение приобрести ту или иную запасную часть для вашего вышедшего из строя автомобиля на рынке, и хотите при этом получить качественный товар по приемлемой цене, то вам необходимо', 'детали, автомобиля, рынке, необходимо, деталь, строя, деталей, решение, марки, товары, приняли, чтобы, запчасти, продукции, аналоговой, нужно, аналоговые, является, оригинальных, представлены', '1', 'chto-sleduet-pomnit-priobretaya-avtozapchasti', 0, 1, 1, 1, 0, 1, '', '', '');

-- 
-- Вывод данных для таблицы dle_post_extras
--
INSERT INTO dle_post_extras VALUES
(4, 4, 860, 1, 0, 0, 0, 0, 0, '', '', 1447171858, 'gordondalos', '', 1);

-- 
-- Вывод данных для таблицы dle_post_log
--

-- Таблица baltica.dle_post_log не содержит данных

-- 
-- Вывод данных для таблицы dle_question
--

-- Таблица baltica.dle_question не содержит данных

-- 
-- Вывод данных для таблицы dle_read_log
--

-- Таблица baltica.dle_read_log не содержит данных

-- 
-- Вывод данных для таблицы dle_rss
--
INSERT INTO dle_rss VALUES
(1, 'http://dle-news.ru/rss.xml', 'Официальный сайт DataLife Engine', 1, 1, 1, 1, 1, '<div class="full-post-content row">{get}</div><div class="full-post-footer ignore-select">', 5, '', 1, 0);

-- 
-- Вывод данных для таблицы dle_rssinform
--
INSERT INTO dle_rssinform VALUES
(1, 'dle', 'Новости с Яндекса', '0', 'http://news.yandex.ru/index.rss', 'informer', 3, 0, 200, 1, 'j F Y H:i');

-- 
-- Вывод данных для таблицы dle_sendlog
--

-- Таблица baltica.dle_sendlog не содержит данных

-- 
-- Вывод данных для таблицы dle_social_login
--

-- Таблица baltica.dle_social_login не содержит данных

-- 
-- Вывод данных для таблицы dle_spam_log
--

-- Таблица baltica.dle_spam_log не содержит данных

-- 
-- Вывод данных для таблицы dle_static
--
INSERT INTO dle_static VALUES
(1, 'dle-rules-page', 'Общие правила на сайте', '<b>Общие правила поведения на сайте:</b><br /><br />Начнем с того, что на сайте общаются сотни людей, разных религий и взглядов, и все они являются полноправными посетителями нашего сайта, поэтому если мы хотим чтобы это сообщество людей функционировало нам и необходимы правила. Мы настоятельно рекомендуем прочитать настоящие правила, это займет у вас всего минут пять, но сбережет нам и вам время и поможет сделать сайт более интересным и организованным.<br /><br />Начнем с того, что на нашем сайте нужно вести себя уважительно ко всем посетителям сайта. Не надо оскорблений по отношению к участникам, это всегда лишнее. Если есть претензии - обращайтесь к Админам или Модераторам (воспользуйтесь личными сообщениями). Оскорбление других посетителей считается у нас одним из самых тяжких нарушений и строго наказывается администрацией. <b>У нас строго запрещен расизм, религиозные и политические высказывания.</b> Заранее благодарим вас за понимание и за желание сделать наш сайт более вежливым и дружелюбным.<br /><br /><b>На сайте строго запрещено:</b> <br /><br />- сообщения, не относящиеся к содержанию статьи или к контексту обсуждения<br />- оскорбление и угрозы в адрес посетителей сайта<br />- в комментариях запрещаются выражения, содержащие ненормативную лексику, унижающие человеческое достоинство, разжигающие межнациональную рознь<br />- спам, а также реклама любых товаров и услуг, иных ресурсов, СМИ или событий, не относящихся к контексту обсуждения статьи<br /><br />Давайте будем уважать друг друга и сайт, на который Вы и другие читатели приходят пообщаться и высказать свои мысли. Администрация сайта оставляет за собой право удалять комментарии или часть комментариев, если они не соответствуют данным требованиям.<br /><br />При нарушении правил вам может быть дано <b>предупреждение</b>. В некоторых случаях может быть дан бан <b>без предупреждений</b>. По вопросам снятия бана писать администратору.<br /><br /><b>Оскорбление</b> администраторов или модераторов также караются <b>баном</b> - уважайте чужой труд.<br /><br /><div align="center">{ACCEPT-DECLINE}</div>', 1, 1, 'all', '', 'Общие правила', 'Общие правила', 0, '', 1447152991, '', 1, 1, 0),
(2, 'o-kompanii', 'О Компании', 'На правах официального дилерства ООО «Силовые агрегаты- группы ГАЗ», компания ООО «Балтспецсервис» предлагает к реализации и поставке ряд агрегативных запчастей и действующего оборудования в Москве. На практичных и выгодных условиях можно:<br /><br /><ul><li>купить двигатель ЯМЗ, ТМЗ, ЯЗДА и УМЗ;</li><br /><li>заказать ремкомплекты двигателя выше представленных марок;</li><br /><li>приобрести запчасти для сельскохозяйственной и автотракторной техники — БЕЛАЗ, КРАЗ, УРАЛ, МАЗ, МТЗ, ХТЗ, Кировец;</li><br /><li>а также, купить дизельные электростанции, мощность которых составляет от 30 до 315 кВт.</li><br /></ul>Дополнительно компания занимается установкой электростанций в контейнер типа \\"Север\\". Он может быть оборудован шасси, системой пожаротушения, утепления и т.д.<br />Для того чтобы ознакомиться с расценками и номенклатурой рекомендуется подробно изучить раздел сайта под названием \\"Прайс\\". Но в любом случае, стоит акцентировать внимание на том, что ООО «Балтспецсервис» специализируется на реализации оригинальных запчастей к любым видам техники.<br />Клиентам компании предоставляется удобный сервис, включающий подробные консультации технического характера и доставку любым видом транспорта, в том числе с возможностью самовывоза со склада в Москве. </p>', 1, 1, 'all', '', 'Информация о компании', 'компания, техники, «Балтспецсервис», любым, Москве, запчастей, реализации, раздел, названием, сайта, Прайс, акцентировать, стоит, случае, любом, изучить, рекомендуется, утепления, пожаротушения, системой', 503, '', 1447168065, '', 1, 1, 0),
(3, 'katalog-produkcii', 'Каталог Продукции', '<ul><li>- Каталог изделий - ЯМЗ - 2008 <a href=\\"#\\">(скачать)</a></li><br /><li>- Каталог изделий ЯЗДА - 2008 <a href=\\"#\\">(скачать)</a></li></ul>Наше предприятие способно предложить полный ассортимент продукции ведущих автомобилестроительных заводов страны, производящих тяжелые грузовики, различную специальную, строительную технику. У нас вы найдете по наиболее оптимальным ценам любые запчасти ЯМЗ, от двигателей в сборе, до ремкомплектов. Предлагаемая топливная аппаратура ЯМЗ обеспечивается в полной мере всеми гарантийными обязательствами и в самый кратчайший срок может быть поставлена клиентам<br /><br />Наша складская программа позволяет целиком закрыть потребности ведущих автотранспортных, строительных, а также дорожных компаний. Мы являемся стабильным, проверенным партнером для большинства известных компаний, благодаря постоянному наличию качественных запасных частей, комплектующих. Наши дилерские соглашения со многими заводами-производителями позволяют удерживать самые оптимальные цены для потребителей в Москве и регионах, на сертифицированную заводскую продукцию. Независимо от того, какие потребности периодически возникают у наших партнеров, менеджеры компании одинаково быстро и квалифицированно их решают. Все компании точно в срок получат такие расходники, как фильтры МАЗ и сложные дизельные электроагрегаты.<br /><br /> Сотрудники компании быстро отгрузят даже дизельные электростанции ЯМЗ со всеми необходимыми гарантийными обязательствами. Каталог предлагаемых готовых изделий, запчастей, комплектующих и расходных материалов, позволяет достаточно легко подобрать все необходимое для обеспечения бесперебойной работы автопарков, имеющих в своей структуре тяжелую и спецтехнику. В нашем прайс-листе клиенты могут убедиться в привлекательном уровне ценообразования. Это позволяет достаточно серьезно сэкономить средства, необходимые для обслуживания, ремонта техники. Сотрудничество с нами заметно повышает уровень рентабельности автопарков.<br /><br /><ul><br /><li> <a href=\\"#\\">Топливная аппаратура ЯЗДА</a> </li><br />  <li><a href=\\"#\\">Купить двигатель ЯМЗ</a> </li><br /><li> <a href=\\"#\\">Ремкомплекты двигателя</a> </li><br /><li><a href=\\"#\\">Дизельные электостанции ЯМЗ</a></li><br /><li><a href=\\"#\\">Фильтры МАЗ</a> </li><br /><li><a href=\\"#\\">Запчасти ЯМЗ</a></li><br /> </ul>', 1, 1, 'all', 'katalog', 'Каталог Продукции', 'позволяет, компании, изделий, Каталог, компаний, обязательствами, всеми, дизельные, достаточно, аппаратура, гарантийными, ведущих, автопарков, скачать, потребности, комплектующих, быстро, запчастей, расходных, готовых', 1377, '', 1447174211, '', 1, 1, 0),
(4, 'vakansii', 'Вакансии', '<p><br />                    Приглашаем<br />                    <b><br />                    \\"Менеджера по продаже запасных частей к отечественным грузовым автомобилям\\",<br />                    </b><br />                    с опытом работы, оформление по ТК РФ.<br />                    График 5/2 с 9-00 до 17-30.<br />                    Место работы - Московская область, Мытищинский район, деревня Грибки, д. 64 А<br />                   <br /><br /><br />                    З/п от 40 000 руб.<br />                    <br /><br /><br />                    8(916)159-85-08<br />                </p>', 1, 1, 'all', 'vakansii', 'Приглашаем                                          Менеджера по продаже запасных частей к отечественным грузовым автомобилям,                                          с опытом работы, оформление по', 'работы, Московская, Место, График, область, Мытищинский, Грибки, деревня, район, оформление, Приглашаем, частей, запасных, продаже, отечественным, грузовым, опытом, автомобилям, Менеджера', 429, '', 1447175199, '', 1, 1, 0),
(5, 'kontakty', 'Контакты', '<p> ООО «БАЛТСПЕЦСЕРВИС»</p><br /><br />141044 , Московская область, Мытищински район, деревня Грибки, д.64 А     <br />              <br /><b>  Тел:</b> +7(495)725-06-11 <br /><br /><b>E-mail:</b> infobss1@mail.ru<br /><br /> <div class=\\"map-wrap\\">                   <br />   <iframe src="https://www.google.com/maps/d/u/0/embed?mid=zCCe1nOMCCUk.k9sRAk7YmcHI" width="100%" height="300"></iframe><br /> </div><br />               <br />                <div class=\\"map-wrap\\" style=\\"width:100%\\"><br />                   <!--MBegin:http://localhost/baltica_dle/uploads/posts/2015-11/1447175610_map2.png|--><a href="http://localhost/baltica_dle/uploads/posts/2015-11/1447175610_map2.png" rel="highslide" class="highslide"><img src="http://localhost/baltica_dle/uploads/posts/2015-11/medium/1447175610_map2.png" alt='''' title=''''  /></a><!--MEnd--><br />                </div>', 1, 1, 'all', '', 'Контакты                                   ООО «БАЛТСПЕЦСЕРВИС»                  141044 Московская область, Мытищински район, деревня Грибки, д.64 А                                           Тел:', 'infobss1, Грибки, Скачать, схему, проезда, деревня, район, 141044, «БАЛТСПЕЦСЕРВИС», Московская, область, Мытищински, Контакты', 259, '', 1447175494, '', 1, 1, 0);

-- 
-- Вывод данных для таблицы dle_static_files
--
INSERT INTO dle_static_files VALUES
(1, 5, 'gordondalos', '1447175585', '2015-11/1447175610_map2.png', '', 0);

-- 
-- Вывод данных для таблицы dle_subscribe
--

-- Таблица baltica.dle_subscribe не содержит данных

-- 
-- Вывод данных для таблицы dle_tags
--

-- Таблица baltica.dle_tags не содержит данных

-- 
-- Вывод данных для таблицы dle_usergroups
--
INSERT INTO dle_usergroups VALUES
(1, 'Администраторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_1.gif', 0, 1, 1, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '<b><span style="color:red">', '</span></b>', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 0, 2, 1, 0, 0),
(2, 'Главные редакторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 2, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_2.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 1, 2, 1, 0, 0),
(3, 'Журналисты', 'all', 1, 'all', 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 50, '101', 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_3.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 1, 2, 1, 0, 0),
(4, 'Посетители', 'all', 1, 'all', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 20, '101', 1, 1, 1, 0, 4, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_4.gif', 0, 1, 0, 1, 0, 1, 1, 1, 0, 500, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 1, 2, 1, 0, 2),
(5, 'Гости', 'all', 0, 'all', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 1, 0, 1, 0, 5, 0, 1, 1, 1, 0, 1, '{THEME}/images/icon_5.gif', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 0, 2, 1, 0, 2);

-- 
-- Вывод данных для таблицы dle_users
--
INSERT INTO dle_users VALUES
('gordondalos@gmail.com', 'a1559765651c0be3e7e23f8f82ef5398', 'gordondalos', 1, 2, 0, 1, '1447240069', '1447152991', '', 1, '', '', '', '', '', '', 0, 0, '', '', '', '', '::1', 0, 0, '', '');

-- 
-- Вывод данных для таблицы dle_views
--

-- Таблица baltica.dle_views не содержит данных

-- 
-- Вывод данных для таблицы dle_vote
--
INSERT INTO dle_vote VALUES
(1, 'all', 0, '2015-11-10 13:56:31', 'Оцените работу движка', 'Лучший из новостных<br />Неплохой движок<br />Устраивает ... но ...<br />Встречал и получше<br />Совсем не понравился', 1, '', '', 'all');

-- 
-- Вывод данных для таблицы dle_vote_result
--

-- Таблица baltica.dle_vote_result не содержит данных

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;