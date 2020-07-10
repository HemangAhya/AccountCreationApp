<!DOCTYPE html>
<html lang="en">
<head>
  <title>Enrollment Check</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	
	<div class="row">
		<div class="col-md-6">
		<h3>Enrollment Check</h3>
		</div>
		
		<div class="col-md-6" align="right">
		<%@include file="header.jsp" %>
		</div>

	</div>

<div class="row">


<%@include file="menu.jsp" %>
</div>
<div class=row>
	<div id="Errmsg">
	  <% 
	  	String msg = (String)request.getAttribute("Errmsg");
	  if(msg!=null)
	  {
		  out.println(msg);
	  }
	  %>
	
</div>

<div id="Succmsg">
	<% 
	  	String succesMsg = (String)request.getAttribute("succmsg");
	  if(succesMsg!=null)
	  {
		  out.println(succesMsg);
	  }
	  %>
</div>
</div>

<div class="row">
	<form action="/accountcreation/enrollmentcheck" method="post">
    <div class="form-group">
      <label for="User Name">User Name:</label>
      <input type="text" class="form-control" id="usernm" placeholder="Enter UserName" name="usernm" required="required"  pattern="[a-zA-Z0-9]{3,32}">
    </div>
    
    
    <button type="submit" class="btn btn-default" id="ibanking">INTERNET BANKING LOGIN</button>
  </form>
  
</div>
</div>

</body>
</html>
