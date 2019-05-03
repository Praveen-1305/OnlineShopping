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
	public String show()
	{
		return "index";
	}
	
	
	/*@RequestMapping("/Home")
	public String showHomePage()
	{
		return "Home";
	}
	
	@RequestMapping("/header")
	public String showHeaderPage()
	{
		return "Header";
	}
	
	@RequestMapping("/Home_1")
	public String showHome_1Page()
	{
		return "Home_1";
	}
	
	@RequestMapping("/footer")
	public String showFooterPage()
	{
		return "Footer";
	}*/
	
}
