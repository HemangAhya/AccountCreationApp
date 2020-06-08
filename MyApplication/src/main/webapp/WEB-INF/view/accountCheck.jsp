<!DOCTYPE html>
<html lang="en">
<head>
  <title>Account Check</title>
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
		<h3>Account Check</h3>
		</div>
		
		<div class="col-md-6" align="right">
		<%@include file="header.jsp" %>
		</div>

	</div>

<div class="row">
<%@include file="menu.jsp" %>
</div>
<div class=row>
<div id="errormsg">
	  <% 
	  	String msg = (String)request.getAttribute("errorMsg1");
	  if(msg!=null)
	  {
		  out.println(msg);
	  }
	  %>
	
</div>

<div id="successmsg">
	<% 
	  	String succesMsg = (String)request.getAttribute("succesMsg");
	  if(succesMsg!=null)
	  {
		  out.println(succesMsg);
	  }
	  %>
</div>
</div>
<div class="row">
	<form action="/accountcreation/accountcheck" method="post">
    		<div class="form-group">
		      <label for="PanNumber">Pan Number:</label>
		      <input type="text" class="form-control" id="panNumber" placeholder="Enter Pan Number" name="panNumber" 
		      required="required"  pattern="[0-9]{10,10}" maxlength="10" 
		      oninvalid="this.setCustomValidity('PanNumber is required')"
    			oninput="this.setCustomValidity('')"/>
		    </div>
		    
    		<div class="form-group">
		      <label for="MobileNumber">Mobile Number:</label>
		      <input type="text" class="form-control" id="mobileNum" placeholder="Enter Mobile Number" name="mobileNumber" 
		      required="required"  pattern="[0-9]{10,10}" maxlength="10" 
		      oninvalid="this.setCustomValidity('MobileNumber is required')"
    			oninput="this.setCustomValidity('')"/>
		    </div>
    
    <button type="submit" class="btn btn-info" id="checkaccount">Check Account</button>
  </form>
  

</div>
</div>
</body>
</html>
