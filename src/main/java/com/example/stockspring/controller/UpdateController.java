package com.example.stockspring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.stockspring.dao.CompanyDao;
import com.example.stockspring.dao.IpoDao;
import com.example.stockspring.model.Company;
import com.example.stockspring.model.IPOsPlanned;
import com.example.stockspring.service.CompanyService;
import com.example.stockspring.service.IpoService;

@Controller
public class UpdateController {
   @Autowired
   IpoService iposervice;
	@Autowired
	IpoDao ipodao;
	@Autowired
	CompanyService companyservice;
	@Autowired
	CompanyDao companydao;
	
	@RequestMapping("/update-ipo")
	public String updateIpoForm(@RequestParam int id,Model model)
	{
		IPOsPlanned ipo = iposervice.getIpoById(id);
		model.addAttribute("ipo",ipo);
		return "update-ipo-page";
		
	}
	
	@RequestMapping(value="/update-ipo", method=RequestMethod.POST)
	public String updateIpo(@ModelAttribute("ipo")IPOsPlanned ipoplanned,Map<String, Object> model)
	{   
		
	    ipodao.save(ipoplanned);
	    //model.put("message","updated ipo details");
	    return "admin-landing-page";
	
	}
	
	@RequestMapping("/update-company")
	public String updateCompanyForm(@RequestParam int id,Model model)
	{
		Company company = companyservice.getCompanybycode(id);
		model.addAttribute("company", company);
		return "update-company-page";
	}
	@RequestMapping(value="/update-company",method=RequestMethod.POST)
	public String updateCompany(@ModelAttribute("company")Company company)
	{ 
		companydao.save(company);
		return "admin-landing-page";
		
	}
}
