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
    private String rec_no;  // R[hÔ
    
    private String menber_id;  // ïõid
    private String model_id;  // @íid
    private String compe_id;  // åïid
    private String freeitem1_id;  // ÄpÚidP
    private String freeitem1_value; //ÄpÚlP
    private String freeitem2_id;  // ÄpÚid2
    private String freeitem2_value; //ÄpÚl2
    private String freeitem3_id;  // ÄpÚid3
    private String freeitem3_value; //ÄpÚl3
    private String freeitem4_id;  // ÄpÚid4
    private String freeitem4_value; //ÄpÚl4
    private String freeitem5_id;  // ÄpÚid5
    private String freeitem5_value; //ÄpÚl5

    private String regist_date;  // o^ú
    private String edit_date;  // XVú
    private String creator;  // ì¬Ò
}
