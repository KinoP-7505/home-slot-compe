-- 大会テーブル
DROP TABLE IF EXISTS competition;

CREATE TABLE competition (
    compe_id VARCHAR(12) NOT NULL COMMENT '大会id',
    compe_name VARCHAR(400) COMMENT '大会名',
    start_date DATETIME COMMENT '大会開始日',
    end_date DATETIME COMMENT '大会終了日',
    reception_start_date DATETIME COMMENT '受付開始日',
    reception_end_date DATETIME COMMENT '受付終了日',
    regist_date DATETIME COMMENT '登録日',
    edit_date DATETIME COMMENT '更新日',
    creator VARCHAR(12) COMMENT '作成者',
    PRIMARY KEY ('compe_id')
);

-- 会員テーブル
DROP TABLE IF EXISTS menber;

CREATE TABLE menber (
    menber_id VARCHAR(12) COMMENT '会員id',
    id_hash VARCHAR(100) COMMENT '会員hash',
    pass_hash VARCHAR(100) COMMENT 'パスワードhash',
    menber_name VARCHAR(400) COMMENT '会員名',
    attribute VARCHAR(2) COMMENT '会員属性',
    regist_date DATETIME COMMENT '登録日',
    edit_date DATETIME COMMENT '更新日',
    creator VARCHAR(12) COMMENT '作成者',
    PRIMARY KEY (menber_id)
);

-- 記録テーブル
DROP TABLE IF EXISTS record;

CREATE TABLE record (
    rec_no VARCHAR(12) NOT NULL COMMENT 'レコード番号',
    menber_id VARCHAR(12) COMMENT '会員id',
    model_id VARCHAR(12) COMMENT '機種id',
    compe_id VARCHAR(12) COMMENT '大会id',
    freeitem1_id VARCHAR(12) COMMENT '汎用項目id１',
    freeitem1_value VARCHAR(400) COMMENT '汎用項目値１',
    freeitem2_id VARCHAR(12) COMMENT '汎用項目id２',
    freeitem2_value VARCHAR(400) COMMENT '汎用項目値２',
    freeitem3_id VARCHAR(12) COMMENT '汎用項目id３',
    freeitem3_value VARCHAR(400) COMMENT '汎用項目値３',
    freeitem4_id VARCHAR(12) COMMENT '汎用項目id４',
    freeitem4_value VARCHAR(400) COMMENT '汎用項目値４',
    freeitem5_id VARCHAR(12) COMMENT '汎用項目id５',
    freeitem5_value VARCHAR(400) COMMENT '汎用項目値５',
    regist_date DATETIME COMMENT '登録日',
    edit_date DATETIME COMMENT '更新日',
    creator VARCHAR(12) COMMENT '作成者',
    PRIMARY KEY (rec_no)
);

-- 汎用項目テーブル
DROP TABLE IF EXISTS freeitem;

CREATE TABLE freeitem (
    item_id VARCHAR(12) NOT NULL COMMENT '汎用項目id',
    item_name VARCHAR(400) COMMENT '項目名',
    data_type VARCHAR(2) COMMENT 'データ型',    
    memo VARCHAR(800) COMMENT 'メモ',
    regist_date DATETIME COMMENT '登録日',
    edit_date DATETIME COMMENT '更新日',
    creator VARCHAR(12) COMMENT '作成者',
    PRIMARY KEY (item_id)
);

-- 機種テーブル
DROP TABLE IF EXISTS model;

CREATE TABLE model (
    model_id VARCHAR(12) NOT NULL COMMENT '機種id',
    model_name VARCHAR(400) COMMENT '機種名',
    maker_id VARCHAR(4) COMMENT 'メーカーid',
    model_type VARCHAR(4) COMMENT 'タイプ',
    category VARCHAR(4) COMMENT '区分',
    memo VARCHAR(800) COMMENT 'メモ',
    regist_date DATETIME COMMENT '登録日',
    edit_date DATETIME COMMENT '更新日',
    creator VARCHAR(12) COMMENT '作成者',
    PRIMARY KEY (model_id)
);

-- メーカーテーブル
DROP TABLE IF EXISTS maker;

CREATE TABLE maker (
    maker_id VARCHAR(4) NOT NULL  COMMENT 'メーカーid',
    maker_name VARCHAR(400) COMMENT 'メーカー名',
    memo VARCHAR(800) COMMENT 'メモ',
    regist_date DATETIME COMMENT '登録日',
    edit_date DATETIME COMMENT '更新日',
    creator VARCHAR(12) COMMENT '作成者',
    PRIMARY KEY (maker_id)
);
