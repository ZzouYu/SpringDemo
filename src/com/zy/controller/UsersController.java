package com.zy.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zy.model.Serve;
import com.zy.service.CompanyService;

@Controller
@RequestMapping("/users")
public class UsersController {
	private Map<Integer,Serve> serveMap=new HashMap<Integer,Serve>();
	 @Resource(name="companyServiceImpl")
		
		private CompanyService companyService;
	    
	    @Resource(name="companyServiceImpl")
		public void setCompanySrevice(CompanyService companyService) {
			this.companyService = companyService;
		}
	    
		@RequestMapping(value="/show",method=RequestMethod.GET)
		public String showCompany(Model model){
			model.addAttribute("company", companyService.find());
			model.addAttribute("company_type", companyService.getType());
			Serve serve=companyService.getserveMessage();
			serveMap.put(serve.getId(),serve );
			model.addAttribute("serve",serveMap);
			return "users/index";		
		}
}
