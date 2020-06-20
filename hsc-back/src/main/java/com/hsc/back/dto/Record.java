package com.hsc.back.dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "record")
public class Record {
    @Id
    private String rec_no;  // レコード番号
    
    private String menber_id;  // 会員id
    private String model_id;  // 機種id
    private String compe_id;  // 大会id
    private String freeitem1_id;  // 汎用項目id１
    private String freeitem1_value; //汎用項目値１
    private String freeitem2_id;  // 汎用項目id2
    private String freeitem2_value; //汎用項目値2
    private String freeitem3_id;  // 汎用項目id3
    private String freeitem3_value; //汎用項目値3
    private String freeitem4_id;  // 汎用項目id4
    private String freeitem4_value; //汎用項目値4
    private String freeitem5_id;  // 汎用項目id5
    private String freeitem5_value; //汎用項目値5

    private String regist_date;  // 登録日
    private String edit_date;  // 更新日
    private String creator;  // 作成者
}
