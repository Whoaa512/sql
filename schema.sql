



-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'rooms'
-- 
-- ---

DROP TABLE IF EXISTS rooms;
    
CREATE TABLE rooms (
  room_name VARCHAR(64) NOT NULL,
  PRIMARY KEY (room_name)
);

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS users;
    
CREATE TABLE users (
  user_name VARCHAR(64) NOT NULL,
  PRIMARY KEY (user_name)
);

-- ---
-- Table 'messages'
-- 
-- ---

DROP TABLE IF EXISTS messages;
    
CREATE TABLE messages (
  id TINYINT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(64) NOT NULL,
  room_name VARCHAR(64) NOT NULL,
  text MEDIUMTEXT NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE messages ADD FOREIGN KEY (user_name) REFERENCES users (user_name);
ALTER TABLE messages ADD FOREIGN KEY (room_name) REFERENCES rooms (room_name);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE rooms ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE users ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE messages ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

INSERT INTO rooms (room_name) VALUES
('cool kids club');
INSERT INTO users (user_name) VALUES
('bacon');
INSERT INTO messages (user_name,room_name,text) VALUES
('bacon','cool kids club','I love to eat lots of cookies!');

