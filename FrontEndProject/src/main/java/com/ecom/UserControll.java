package com.ecom;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.TableStruct.User;
import com.ecom.dao.UserDAO;


@Controller
public class UserControll {
	
	@Autowired
	UserDAO userDAO;

	@RequestMapping(value="/signup",method=RequestMethod.GET)
    public String showSignUp() {
		
		return "Signup";

    }

	@RequestMapping(value="/login", method=RequestMethod.GET)
    public String showSignin() {
		
		
		return "login";
	}
	
	
	@RequestMapping(value="/AddSignup",method=RequestMethod.POST)
    public String addSignUp(@RequestParam("username") String username, @RequestParam("userpassword") String password,
			@RequestParam("useremail") String email, @RequestParam("usermobile") String mobile,@RequestParam("name")String name, Model m) {
		
		boolean flag=false;
		List<User> listUser=userDAO.getUser();
		for(User user1:listUser) {
			if(username.equals(user1.getUsername())) {
				flag=true;
				break;
			}
		}
		if(flag==false) {
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setMobileNo(mobile);
		user.setName(name);
		
		userDAO.addUser(user);
        List<User>userl=userDAO.getUser();
        m.addAttribute(userl);
        return "login";
		}
		else {
			m.addAttribute("alert","Username is already taken");
		}
		
	return "Signup";
	}

	@RequestMapping(value="/login_failure")
	public String invalid(HttpSession Session)
	{
		Session.setAttribute("ErrorMessage","Invalid Credentials");
		return "login";
	}
	

	
	@RequestMapping(value="/login_success")
	public String showMessage(@RequestParam(value="username")String name,@RequestParam(value="password")String password, 
			HttpSession session,Model model) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
		
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		String nameuser="";
		List<User> listUser=userDAO.getUser();
		for(User user1:listUser) {
			if(username.equals(user1.getUsername())) {
				nameuser=user1.getName();
			}
	}
	
		
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		
		 if (authority.getAuthority().equals(role)) 
	     {   
			 session.setAttribute("username", username);
			 session.setAttribute("nameuser", nameuser);
			 session.setAttribute("SuccessMessage","Login Successful");
			 
	    	 page="Home";
	    	 
	    	 
	    	
	     }
	     else 
	     {
	  
	    page="Admin";
	    
	   // session.setAttribute("username","Admin");
	    session.setAttribute("nameuser","Admin");
	    session.setAttribute("SuccessMessage","Login Successful");
	    	 break;
	    }
		}
		 return page;
		}
	@RequestMapping(value="/perform_login")
	public ModelAndView showMessage(@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");

		String message;
		ModelAndView mv ;
		if (userDAO.isValidUser(username,password)) 
		{
			message = "Successfully Logged in";
			 mv = new ModelAndView("product");
		} else{
			message="Please enter a valid username and password";
			mv=new ModelAndView("Success");
		}
	
		mv.addObject("message", message);
		mv.addObject("username", username);
		return mv;
	}
	
	@RequestMapping(value="/perform_logout")
	public ModelAndView logout(HttpServletRequest request,HttpSession session)
	{
		ModelAndView mv=new ModelAndView("index");
		session.invalidate();
		session=request.getSession(true);
		mv.addObject("logoutMessage","you are successfully logged out");
		mv.addObject("loggedOut","true");
		return mv;
	}
		

	
}

 
