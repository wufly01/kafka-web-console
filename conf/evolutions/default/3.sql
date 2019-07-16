# --- !Ups




CREATE TABLE `kafkamonitor`.`offsethistory` (
  `id` INT NOT NULL,
  `zookeeperId` INT NULL,
  `topic` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));






CREATE TABLE `kafkamonitor`.`offsetpoints` (
  `id` INT NOT NULL,
  `consumerGroup` VARCHAR(45) NULL,
  `timestamp` VARCHAR(50) NULL,
  `offsetHistoryId` VARCHAR(45) NULL,
  `partition` INT NULL,
  `offsetPointscol` INT NULL,
  `logSize` INT NULL,
  PRIMARY KEY (`id`));




CREATE TABLE `kafkamonitor`.`settings` (
  `key_` VARCHAR(45) NOT NULL,
  `value` VARCHAR(45) NULL,
  PRIMARY KEY (`key_`));



INSERT INTO settings (key_, value) VALUES ('PURGE_SCHEDULE', '0 0 0 ? * SUN *');
INSERT INTO settings (key_, value) VALUES ('OFFSET_FETCH_INTERVAL', '30');

