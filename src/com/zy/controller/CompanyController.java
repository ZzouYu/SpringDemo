package com.zy.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.zy.model.Company;
import com.zy.model.Serve;
import com.zy.model.Type;
import com.zy.service.CompanyService;

@Controller
@RequestMapping("/company")
public class CompanyController {
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
			return "company/showCompany";		
		}
		@RequestMapping(value="/{id}/update",method=RequestMethod.GET)
		public String editCompany(@PathVariable int id,Model model){
			model.addAttribute(companyService.findId(id));
			return "company/updateCompany";		
		}
		@RequestMapping(value="/{id}/update",method=RequestMethod.POST)
		public String updateCompany(@PathVariable int id,@Validated   Company company,BindingResult br,Model model){
			if(br.hasErrors()){
				return "company/updateCompany";
			}
			companyService.update(company ,id);
			return "redirect:/company/show";		
		}
		@RequestMapping(value="/showType",method=RequestMethod.GET)
		public String showType(Model model){
			model.addAttribute("company_type", companyService.getType());
			Serve serve=companyService.getserveMessage();
			serveMap.put(serve.getId(),serve );
			model.addAttribute("serve",serveMap);
			return "company/showType";		
		}
		@RequestMapping(value="/{id}/updateType",method=RequestMethod.GET)
		public String editType(@PathVariable int id,Model model){
			model.addAttribute(companyService.findTypeId(id));
			return "company/updateType";		
		}
		@RequestMapping(value="/{id}/updateType",method=RequestMethod.POST)
		public String updateCompany(@PathVariable int id, @Validated Type type,BindingResult br,Model model){
			if(br.hasErrors()){
				return "company/updateType";
			}
			companyService.updateType(type ,id);
			return "redirect:/company/showType";		
		}
}
