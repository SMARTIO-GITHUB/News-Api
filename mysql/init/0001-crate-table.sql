CREATE TABLE trabel(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    position      VARCHAR(100) NOT NULL COMMENT '観光地',
    content       VARCHAR(2000) NOT NULL COMMENT '観光地情報',
    usercd        INT(20) COMMENT 'ユーザCD'
)COMMENT='旅行情報';
