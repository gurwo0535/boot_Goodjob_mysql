package com.boot.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.boot.dto.CompanyListDTO;
import com.boot.service.CompanyListService;

@Controller
public class CompanyListController {

	@Autowired
	private CompanyListService service;

	
    @GetMapping("/company_list")
    public String showCompanyList(Model model) {
    	
    	ArrayList<CompanyListDTO> list = service.list();
		model.addAttribute("list", list);
		
        return "company_list"; 
        // returns /WEB-INF/views/company_list.jsp
    }
}