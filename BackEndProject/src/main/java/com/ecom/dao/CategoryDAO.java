package com.ecom.dao;

import java.util.List;

import com.ecom.TableStruct.Category;

public interface CategoryDAO {
	
	public boolean addCategory(Category category);
	public Category getCategory(int categoryId);
	public boolean deleteCategory(Category category);
	public boolean updateCategory(Category category);
	public List<Category> getCategories();
	

}
