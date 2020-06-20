package com.hsc.back.dto;

import javax.persistence.Inheritance;

import lombok.Data;

//
// エンティティに共通項目を付与するクラス
//
@Data
@Inheritance
public abstract class HistoryData {
    private String regist_date;  // 登録日
    private String edit_date;  // 更新日
    private String creator;  // 作成者
}
