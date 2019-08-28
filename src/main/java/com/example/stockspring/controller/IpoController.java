package com.example.stockspring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.stockspring.dao.IpoDao;

@Controller
public class IpoController {

	@Autowired
	IpoDao ipodao;
	@RequestMapping("/delete-ipo")
	public String deleteipo(@RequestParam int id)
	{
		ipodao.deleteById(id);
		return "redirect:/Admin/viewIpo";
	}
}
