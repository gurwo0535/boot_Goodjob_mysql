package com.boot.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.dto.CompanyListDTO;
import com.boot.service.CompanyListService;



@Controller
public class MainController {
	
	@Autowired
	private CompanyListService service;

	
//    @GetMapping("/company_list")
//    public String showCompanyList(Model model) {
//    	
//    	ArrayList<CompanyListDTO> list = service.list();
//		model.addAttribute("list", list);
//		
//        return "company_list"; 
//        // returns /WEB-INF/views/company_list.jsp
//    }
	
	   @GetMapping("/main")
	    public String hello (Model model) {
//	        model.addAttribute("data", "hello!!");
		   return "/main";
	    }
	   
	   
		@RequestMapping("/login")
		public String login(Model model) {
			return "/login";

}
		
		@RequestMapping("/myPage")
		public String myPage(Model model) {
			return "/myPage";
			
		}
}
