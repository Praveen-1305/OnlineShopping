package com.ecom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.TableStruct.Category;
import com.ecom.dao.CategoryDAO;

@Controller
public class CategoryControll {
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value="/Category")

	public ModelAndView categoryPage()
	{
		List<Category> listcat=categoryDAO.getCategories();
		for(Category cat : listcat)
		{
	    System.out.println("category id : "+cat.getCategoryId());
		System.out.println("category name : "+cat.getCategoryName());
		System.out.println("category desc : "+cat.getCategoryDesc());
		}
		
		ModelAndView mv=new ModelAndView("Category", "listcategories", listcat);
		return mv;
	}
	@RequestMapping(value = "/InsertCategory", method = RequestMethod.POST)
	public ModelAndView insertCategoryData(@RequestParam("Name") String name, @RequestParam("Desc") String desc)
	{
		Category category = new Category();
		//category.setCategoryId(id);
		category.setCategoryName(name);
		category.setCategoryDesc(desc);

		categoryDAO.addCategory(category);
		List<Category> listcat=categoryDAO.getCategories();
		
		for(Category cat : listcat)
		{
		System.out.println("Added");
		System.out.println("category id : "+cat.getCategoryId());
		System.out.println("category name : "+cat.getCategoryName());
		System.out.println("category desc : "+cat.getCategoryDesc());
		}
		
		ModelAndView mv=new ModelAndView("Category", "listcategories", listcat);
		return mv;
	}
	@RequestMapping("/deleteCategory/{categoryId}")
	public ModelAndView deleteCategory(@PathVariable("categoryId") int categoryId)
	{
		Category category=categoryDAO.getCategory(categoryId);
		
		categoryDAO.deleteCategory(category);
		List<Category> listcat=categoryDAO.getCategories();
		System.out.println("Deleted");		
		ModelAndView mv=new ModelAndView("Category", "listcategories", listcat);
		return mv;

	}
	@RequestMapping("/updateCategory/{categoryId}")
	public String updateCategory(@PathVariable("categoryId") int categoryId,Model m)
	{
		Category category=categoryDAO.getCategory(categoryId);
	
		List<Category> listcat=categoryDAO.getCategories();
		m.addAttribute("listCategories",listcat);
		m.addAttribute("categoryInfo",category);
		
		return "UpdateCategory";
		
	}
	
	@RequestMapping(value="/UpdateCategory",method=RequestMethod.POST)
	public ModelAndView updateCategoryInDB(@RequestParam("Id") int id,@RequestParam("Name") String name, @RequestParam("Desc") String desc)
	{
		Category category = categoryDAO.getCategory(id);
		category.setCategoryName(name);
		category.setCategoryDesc(desc);

		categoryDAO.updateCategory(category);
		List<Category> listcat=categoryDAO.getCategories();
		System.out.println("Updated");
		ModelAndView mv=new ModelAndView("Category", "listcategories", listcat);
		return mv;
	}
}
