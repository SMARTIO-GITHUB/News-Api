CREATE TABLE trabel(
    id            INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    position      VARCHAR(100) NOT NULL COMMENT '観光地',
    content       VARCHAR(2000) NOT NULL COMMENT '観光地情報',
    usercd        INT(20) COMMENT 'ユーザCD'
)COMMENT='旅行情報';

CREATE TABLE train_line_jr(
    line_name      VARCHAR(20) PRIMARY KEY COMMENT '路線名(オリジナル)',
    line_name_hira VARCHAR(30) NOT NULL COMMENT '路線名(ひらがな)',
    line_name_kana VARCHAR(30) NOT NULL COMMENT '路線名(かな)',
    line_group     VARCHAR(30) NOT NULL COMMENT '路線グループ'
)COMMENT='電車路線情報';
