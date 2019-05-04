package com.ecom.DAOTest;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecom.TableStruct.User;
import com.ecom.dao.UserDAO;

public class UserTest {

	static UserDAO userDAO;

	@BeforeClass
	public static void executeFirst()
	{
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecom");
		context.refresh();
		
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	
	@Test
	public void addUserTest()
	{
		User user=new User();
		user.setMobileNo("9988664422");
		user.setPassword("error");
		user.setUsername("error");
		user.setRole("ROLE_USER");
		user.setEmail("error@google.com");
		assertTrue("Problem in User Insertion",userDAO.addUser(user));
	}
	@Ignore
	@Test
	public void updateUserTest()
	{
		User user=userDAO.getUser(399);
	    user.setMobileNo("9887665443");
		assertTrue("Problem in Updation",userDAO.updateUser(user));
	}
	
	
	@Test
	public void listUserTest()
	{
		List<User> listUser=userDAO.getUser();
		assertNotNull("No User",listUser);
		
		for(User user:listUser)
		{
			System.out.print(user.getUsername()+":::");
			System.out.print(user.getEmail()+":::");
			
		}
	}

}
