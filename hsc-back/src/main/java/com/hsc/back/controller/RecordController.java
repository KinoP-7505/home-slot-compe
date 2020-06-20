package com.hsc.back.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.hsc.back.dto.Record;
import com.hsc.back.dto.ResponseContena;
import com.hsc.back.service.RecordService;

@RestController
@RequestMapping("/api/record")
public class RecordController {
    @Autowired
    private RecordService recordService;

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET)
    public List<Record> getRecords() {
        List<Record> res = recordService.findAllRecords();
        res.forEach(data -> {
        	System.out.println(data.getCreator());
    	});
        return res;
    }

    @CrossOrigin
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public ResponseContena<String, Record> setRecords(@RequestBody Record record) {
		System.out.println(record.getRec_no());
		System.out.println(record.getMenber_id());
		System.out.println(record.getCreator());
		
    	Record body = recordService.create(record);
    	ResponseContena<String, Record> resContena = new ResponseContena<String, Record>("success", body);
        return resContena;
    }
}
