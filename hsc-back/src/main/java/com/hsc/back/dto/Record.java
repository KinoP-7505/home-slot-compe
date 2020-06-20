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
    private String rec_no;  // ���R�[�h�ԍ�
    
    private String menber_id;  // ���id
    private String model_id;  // �@��id
    private String compe_id;  // ���id
    private String freeitem1_id;  // �ėp����id�P
    private String freeitem1_value; //�ėp���ڒl�P
    private String freeitem2_id;  // �ėp����id2
    private String freeitem2_value; //�ėp���ڒl2
    private String freeitem3_id;  // �ėp����id3
    private String freeitem3_value; //�ėp���ڒl3
    private String freeitem4_id;  // �ėp����id4
    private String freeitem4_value; //�ėp���ڒl4
    private String freeitem5_id;  // �ėp����id5
    private String freeitem5_value; //�ėp���ڒl5

    private String regist_date;  // �o�^��
    private String edit_date;  // �X�V��
    private String creator;  // �쐬��
}
