package com.ecom;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageControll {
	@RequestMapping("/")
	public String showIndexPage()
	{
		return "index";
	}
	@RequestMapping("/FrontEndProject")
	public String showProject()
	{
		return "index";
	}
	
	@RequestMapping("/contactUs")
	public String showContatUs()
	{
		return "Contactus";
	}
	
	@RequestMapping("/aboutus")
	public String showAboutus()
	{
		return "Aboutus";
	}
	
	
		
}
