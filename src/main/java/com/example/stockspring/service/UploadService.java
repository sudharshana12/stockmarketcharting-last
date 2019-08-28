package com.example.stockspring.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.example.stockspring.model.StockPrice;

public interface UploadService {

	List<StockPrice> upload(MultipartFile file) throws Exception;

}
