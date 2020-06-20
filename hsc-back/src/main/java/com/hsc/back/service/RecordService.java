package com.hsc.back.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsc.back.repository.RecordRepository;
import com.hsc.back.dto.Record;

@Service
@Transactional
public class RecordService {
    @Autowired
    RecordRepository recordRepository;

    public List<Record> findAllRecords() {
        return recordRepository.findAll();
    }

    // 登録
    public Record create(Record record) {
        // TODO 自動生成されたメソッド・スタブ
        return recordRepository.save(record);
    }

}
