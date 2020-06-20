-- 大会初期値
INSERT
INTO competition
VALUES (
'compe0001'                                       -- 大会id
, '大会０１'                                  -- 大会名
, '2020/06/01 10:00:00'                                   -- 大会開始日
, '2020/06/01 22:00:00'                                     -- 大会終了日
, '2020/05/25 0:00:00'                        -- 受付開始日
, '2020/05/31 23:00:00'                     -- 受付終了日
, '2020/05/20 23:05:39'                                -- 登録日
, '2020/05/20 23:05:39'                                 -- 更新日
, 'user9999'                              -- 作成者
);

-- 大会初期値
INSERT
INTO competition
VALUES (
'compe0002'                                       -- 大会id
, '大会０２'                                  -- 大会名
, '2020/05/20 10:00:00'                                   -- 大会開始日
, '2020/05/20 22:00:00'                                     -- 大会終了日
, '2020/05/15 0:00:00'                        -- 受付開始日
, '2020/05/19 23:00:00'                     -- 受付終了日
, '2020/05/14 23:05:39'                                -- 登録日
, '2020/05/15 23:05:39'                                 -- 更新日
, 'user9999'                              -- 作成者
);

-- 汎用項目初期値
INSERT 
INTO freeitem
VALUES (
  'item0001'                                        -- 汎用項目id
  , '回転数'                                         -- 項目名
  , '01'  -- 数値型
  , '回転数'                                         -- メモ
  , '2020/05/31 23:00:00'                            -- 登録日
  , '2020/05/31 23:00:00'          -- 更新日
  , 'user9999'                                     -- 作成者
);

INSERT 
INTO freeitem
VALUES (
  'item0002'                                        -- 汎用項目id
  , '差枚数'                                         -- 項目名
  , '01'  -- 数値型
  , '差枚数'                                         -- メモ
  , '2020/05/31 23:00:00'                            -- 登録日
  , '2020/05/31 23:00:00'          -- 更新日
  , 'user9999'                                     -- 作成者
);

INSERT 
INTO freeitem
VALUES (
  'item0003'                                        -- 汎用項目id
  , '一撃数'                                         -- 項目名
  , '01'  -- 数値型
  , '一撃数'                                         -- メモ
  , '2020/05/31 23:00:00'                            -- 登録日
  , '2020/05/31 23:00:00'          -- 更新日
  , 'user9999'                                     -- 作成者
);

INSERT 
INTO menber
VALUES ( 
  'user9999'                                      -- 会員id
  , '管理者９９９９'                                  -- 会員名
  , ''  -- id-hash
  , ''  -- pass-hash
  , '91'  -- 管理者
  , '2020/05/31 23:00:00'                                  -- 登録日
  , '2020/05/31 23:00:00'                                    -- 更新日
  , 'user9999'                                      -- 作成者
);

INSERT 
INTO menber
VALUES ( 
  'user0001'                                      -- 会員id
  , 'ゲスト０００１'                                  -- 会員名
  , ''  -- id-hash
  , ''  -- pass-hash
  , '01'  -- 会員
  , '2020/05/31 23:00:00'                                  -- 登録日
  , '2020/05/31 23:00:00'                                    -- 更新日
  , 'user9999'                                      -- 作成者
);

INSERT 
INTO menber
VALUES ( 
  'user0002'                                      -- 会員id
  , 'ゲスト０００２'                                  -- 会員名
  , ''  -- id-hash
  , ''  -- pass-hash
  , '01'  -- 会員
  , '2020/05/31 23:00:00'                                  -- 登録日
  , '2020/05/31 23:00:00'                                    -- 更新日
  , 'user9999'                                      -- 作成者
);

INSERT 
INTO maker
VALUES ( 
  'm001'                                       -- メーカーid
  , '大都'                                   -- メーカー名
  , 'メモ'                                         -- メモ
  , '2020/05/31 23:00:00'                                  -- 登録日
  , '2020/05/31 23:00:00'                                    -- 更新日
  , 'user9999'                                      -- 作成者
);

INSERT 
INTO maker
VALUES ( 
  'm002'                                       -- メーカーid
  , 'サミー'                                   -- メーカー名
  , 'メモ'                                         -- メモ
  , '2020/05/31 23:00:00'                                  -- 登録日
  , '2020/05/31 23:00:00'                                    -- 更新日
  , 'user9999'                                      -- 作成者
);

INSERT 
INTO model
VALUES ( 
  'model0001'                                       -- 機種id
  , '押忍!番長2'                                   -- 機種名
  , 'm001'                                     -- メーカーid
  , '0401'                                   -- タイプ
  , '0501'                                     -- 区分
  , '５号機ART'                                         -- メモ
  , '2020/05/31 23:00:00'                                  -- 登録日
  , '2020/05/31 23:00:00'                                    -- 更新日
  , 'user9999'                                      -- 作成者
);

INSERT 
INTO model
VALUES ( 
  'model0002'                                       -- 機種id
  , 'ツインエンジェル３'                                   -- 機種名
  , 'm002'                                     -- メーカーid
  , '0103'                                   -- タイプ
  , '0501'                                     -- 区分
  , '５号機A+ART'                                         -- メモ
  , '2020/05/31 23:00:00'                                  -- 登録日
  , '2020/05/31 23:00:00'                                    -- 更新日
  , 'user9999'                                      -- 作成者
);

INSERT INTO record
VALUES ( 
  'testR0614001'  -- レコード番号
  , 'user9999'    -- 会員id
  , 'model0001'     -- 機種id
  , 'compe0001'     -- 大会id
  , 'item0001'  -- 汎用項目id１
  , '5000'    -- 汎用項目値１
  , 'item0002'     -- 汎用項目id２
  , '4000'         -- 汎用項目値２
  , 'item0003'     -- 汎用項目id３
  , '3000'           -- 汎用項目値３
  , ''              -- 汎用項目id４
  , ''              -- 汎用項目値４
  , ''                -- 汎用項目id５
  , ''              -- 汎用項目値５
  , '2020/05/31 23:00:00'          -- 登録日
  , '2020/05/31 23:00:00'           -- 更新日
  , 'user9999'                      -- 作成者
)
