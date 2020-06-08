<!DOCTYPE html>
<html lang="en">
<head>
  <title>Account Creation Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>
	  $(document).ready(function() {
		    $("input[name$='enrollmentoption']").click(function() {
		        var test = $(this).val();

		        if(test=="YES")
			     {
		        	$("#uname").attr("required","required");
		        	$("#passwrd").attr("required","required");
		        	$("div.view").show();	
			      }
		        else
			     {
		        	$("#uname").removeAttr("required");
		        	$("#passwrd").removeAttr("required");
		        	$("div.view").hide();
			      } 
		        
	
		       
		    });
		});
	
  </script>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-6">
		<h3>Account Creation</h3>
		</div>
		
		<div class="col-md-6" align="right">
		<%@include file="header.jsp" %>
		</div>

	</div>

	<div class="row">
	<%@include file="menu.jsp" %>
	</div>

	<div class="row">
		<div id="successmessage">
			<%
				String accNo = (String)request.getAttribute("accNo");
				
				if(accNo!=null)
				{
					out.println("Account Created Successfully. Account No: "+accNo);
				}
			%>
		</div>
		<div id="errormessage">
		
		</div>
	</div>
	<div class="row">
		
		<form action="/accountcreation/createaccount" method="post">
		    <div class="form-group">
		      <label for="First Name">First Name:</label>
		      <input type="text" class="form-control" id="fname" placeholder="Enter FirstName" name="firstName" 
		      required="required" minlength="3" maxlength="15" pattern="[a-zA-Z]{3,15}" 
		      oninvalid="this.setCustomValidity('First Name is required')"
    			oninput="this.setCustomValidity('')"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="Last Name">Last Name:</label>
		      <input type="text" class="form-control" id="lname" placeholder="Enter LasttName" name="lastName" 
		      required="required" minlength="3" maxlength="15" pattern="[a-zA-Z]{3,15}" 
		      oninvalid="this.setCustomValidity('Last Name is required')"
    			oninput="this.setCustomValidity('')"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="Age">Age:</label>
		      <input type="number" class="form-control" id="age" placeholder="Enter age" name="age" 
		      required="required" min="18" max="75" pattern="[0-9]+" 
		      oninvalid="this.setCustomValidity('Age is required')"
    			oninput="this.setCustomValidity('')"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="MobileNumber">Mobile Number:</label>
		      <input type="text" class="form-control" id="mobileNo" placeholder="Enter Mobile Number" name="mobileNumber" 
		      required="required" minlengh="10" pattern="[0-9]{10,10}" maxlength="10" 
		      oninvalid="this.setCustomValidity('MobileNumber is required')"
    			oninput="this.setCustomValidity('')"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="PanNumber">Pan Number:</label>
		      <input type="text" class="form-control" id="panNo" placeholder="Enter Pan Number" name="panNumber" 
		      required="required" minlengh="10" pattern="[0-9]{10,10}" maxlength="10" 
		      oninvalid="this.setCustomValidity('PanNumber is required')"
    			oninput="this.setCustomValidity('')"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="dob">Date of Birth:</label>
		      <input type="text" class="form-control" id="dob" placeholder="Enter Date of Birth(YYYYMMDD)" name="dob" 
		      required="required" minlengh="8" pattern="[0-9]{8,8}" maxlength="8" 
		      oninvalid="this.setCustomValidity('Date of Birth is required')"
    			oninput="this.setCustomValidity('')"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="emailId">Email ID:</label>
		      <input type="email" class="form-control" id="emailID" placeholder="Enter emailID" name="emailID" 
		      required="required" minlengh="8"  maxlength="30" pattern=".{8,30}"
		      oninvalid="this.setCustomValidity('EmailID is required')"
    			oninput="this.setCustomValidity('')"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="internetBanking">ENROLL FOR INTERNET BANKING:&nbsp;&nbsp;</label>
		      <input type="radio"  name="enrollmentoption" id=”yesOptionRadio” value="YES" checked>&nbsp;YES</input>&nbsp;&nbsp;&nbsp;
		      <input type="radio"  name="enrollmentoption" id=”noOptionRadio” value="NO" >&nbsp;NO</input>
		    </div>
		    
		    <div class="form-group view">
      			<label for="User Name">User Name:</label>
      			<input type="text" class="form-control" id="uname" placeholder="Enter UserName" name="uname" required="required" 
      				minlength="3" maxlength="32" pattern="[a-zA-Z0-9]{3,32}"
      				oninvalid="this.setCustomValidity('UserName is required')"
    				oninput="this.setCustomValidity('')"/>
   			</div>
		    
		    <div class="form-group view">
		      <label for="Password">Password:</label>
		      <input type="password" class="form-control" id="passwrd" placeholder="Enter password" name="passwrd" required="required" 
		      			pattern=".{3,32}"
		      			oninvalid="this.setCustomValidity('Password is required')"
    					oninput="this.setCustomValidity('')" />
		    </div>
    
    		<button type="submit" class="btn btn-info" id="createaccount">Create Account</button>
  </form>
  
		
	</div>
	
	
</div>

</body>
</html>
