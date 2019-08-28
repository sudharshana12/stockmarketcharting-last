package com.example.stockspring.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.stockspring.dao.CompanyDao;
import com.example.stockspring.dao.SectorDao;
import com.example.stockspring.dao.StockPriceDao;
import com.example.stockspring.model.Company;
import com.example.stockspring.model.Sector;
import com.example.stockspring.model.StockPrice;

@RestController
public class SectorRestController {
    
	@Autowired
	SectorDao sectordao;
	@Autowired
	CompanyDao companydao;
	@Autowired
	StockPriceDao stockpricedao;
	
	@GetMapping("/company/sector/{sectorName}/{from_date}/{to_date}")
	public int getSectorStockPrice(@PathVariable("sectorName") String sectorName,@PathVariable("from_date") Date from_date,@PathVariable("to_date") Date to_date)
	{   
		int sum=0;
		List<Integer> sectorStockprice=new ArrayList<>();
		Sector sector = sectordao.findBysectorName(sectorName);
		int sectorid = sector.getSectorId();
		List<Company> companylist = new ArrayList<>();
		int[] companycode = new int[10];
		companydao.findBysectorId(sectorid).forEach(companylist::add);
		System.out.println(companylist);
		for(int i=0,j=0;i<companylist.size();i++,j++)
		{
			//System.out.println(companylist.get(i));
			
			 companycode[j] = companylist.get(i).getCompanyCode();
			 stockpricedao.getStockPrice(companycode[j], from_date, to_date).forEach(sectorStockprice::add);
		    
		}
		for(int list_element : sectorStockprice)
		{
			sum = sum + list_element;
		}
		
		return sum;
	}
	
	
}
