<div>
	<label for="welcomeMsg" id="welcomeMsg">
	<h3>
	<% 
		String userName = (String)request.getSession().getAttribute("user");
		if(userName==null)
		{
			response.sendRedirect("http://localhost:8080/accountcreation/login");
		}
		out.println("Welcome "+userName);			
	%>
	</h3>
	</label>
	
	
</div>