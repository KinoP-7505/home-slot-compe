package com.hsc.back.dto;

import javax.persistence.Inheritance;

import lombok.Data;

//
// �G���e�B�e�B�ɋ��ʍ��ڂ�t�^����N���X
//
@Data
@Inheritance
public abstract class HistoryData {
    private String regist_date;  // �o�^��
    private String edit_date;  // �X�V��
    private String creator;  // �쐬��
}
