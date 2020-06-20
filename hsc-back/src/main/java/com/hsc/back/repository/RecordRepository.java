package com.hsc.back.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hsc.back.dto.Record;

public interface RecordRepository extends JpaRepository<Record, Long> {

}
