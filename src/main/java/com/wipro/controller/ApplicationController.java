package com.wipro.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wipro.modal.User;
import com.wipro.modal.UserAccount;


@Controller
@RequestMapping("/accountcreation")
public class ApplicationController {

	

	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	

	@RequestMapping("/login")
	public String Login(HttpServletRequest request) {
		return "login";
	}
	
	@RequestMapping("/home")
	public String AccountCreation(HttpServletRequest request) {
		return "home";
	}
	
	@RequestMapping("/accountCheck")
	public String AccountCheck(HttpServletRequest request) {
		return "accountCheck";
	}
	
	@RequestMapping("/enrollmentCheck")
	public String EnrollmentCheck(HttpServletRequest request) {
		return "enrollmentCheck";
	}
	
	@RequestMapping("/logout")
	public String Logout(HttpServletRequest request) {
		request.getSession().invalidate();
		
	
		return "login";
	}
	
private static Map<String, User> usersMap = new HashMap<String, User>();
private static Map<String, UserAccount> usersAccounts = new HashMap<String, UserAccount>();

	public static void initData()
	{
		User user = new User("testuser", "testuser123");
		usersMap.put("testuser", user);
	}
	
	@RequestMapping(value="/loginUser", method=RequestMethod.POST)
	public String registerUser(@ModelAttribute("userName") String userName, @ModelAttribute("password") String password,
			HttpServletRequest request) 
	{
		initData();
		User u = usersMap.get(userName);
		if(u!=null)
		{
			if(u.getPassword().equals(password))
			{
				request.getSession().setAttribute("user", u.getUserName());
				return "home";
			}
			else
			{
				request.setAttribute("errorMsg", "Invalid credentials");
				return "login";
			}
		}
		else
		{
			request.setAttribute("errorMsg", "Invalid credentials");
			return "login";
		}
		
		
		
		
	}
	
	@RequestMapping(value="/accountcheck", method=RequestMethod.POST)
	public String AccountCheck(@ModelAttribute("panNumber") String panNumber, @ModelAttribute("mobileNumber") String mobileNumber,
			HttpServletRequest request) 
	{
		UserAccount u = usersAccounts.get(panNumber);
		if(u!=null)
		{
			request.setAttribute("succesMsg", "Account is active "+u.getAccountNumber());
		}
		else
		{
			request.setAttribute("errorMsg1", "No accounts are active on this pan number");
		}
		return "accountCheck";
		
	}
	
	@RequestMapping(value="/enrollmentcheck", method=RequestMethod.POST)
	public String EnrollmentCheck(@ModelAttribute("usernm") String usernm, 
			HttpServletRequest request) 
	{
		for(Map.Entry me : usersAccounts.entrySet())
		{
			String key = (String)me.getKey();
			UserAccount uacc = (UserAccount)usersAccounts.get(key);
			if(uacc.getEnrollmentOption().equals("YES"))
			{
				if(uacc.getUname().equals(usernm))
				{
					request.setAttribute("succmsg", "Welcome "+uacc.getFirstname()+", Your Internet banking access is successfully enabled");
					return "enrollmentCheck";
				}
			}
		}
		request.setAttribute("Errmsg", "Internet banking is not enabled");
		return "enrollmentCheck";
		
	}
	
	@RequestMapping(value="/createaccount", method=RequestMethod.POST)
	public String createAccount(@ModelAttribute("firstName") String firstName, @ModelAttribute("lastName") String lastName,
			@ModelAttribute("age") int age,
			@ModelAttribute("mobileNumber") String mobileNumber,
			@ModelAttribute("panNumber") String panNumber,
			@ModelAttribute("dob") String dob,
			@ModelAttribute("emailID") String emailID,
			@ModelAttribute("enrollmentoption") String enrollmentOption,
			@ModelAttribute("uname") String uname,
			@ModelAttribute("passwrd") String passwrd,
			HttpServletRequest request) 
	{
		if(enrollmentOption.equals("NO"))
		{
			uname=null;
			passwrd=null;
		}
		UserAccount ua = new UserAccount(firstName, lastName, age, mobileNumber, panNumber, dob, emailID, enrollmentOption, uname, passwrd);
		usersAccounts.put(panNumber, ua);
		System.out.println(ua.toString());
		request.setAttribute("accNo", ua.getAccountNumber());
		return "home";
		
	}
	
	
	
	

}
