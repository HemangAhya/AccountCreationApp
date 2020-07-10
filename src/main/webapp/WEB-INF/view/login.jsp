<!DOCTYPE html>
<html lang="en">
<head>
  <title>Account Creation Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="static/css/bootstrap.min.css" rel="stylesheet">
  <script src="static/js/jquery-1.11.1.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>User Login</h2>
  <form action="/accountcreation/loginUser" method="post">
    <div class="form-group">
      <label for="User Name">User Name:</label>
      <input type="text" class="form-control" id="userName" placeholder="Enter UserName" name="userName" required="required"  pattern="[a-zA-Z0-9]{3,30}">
    </div>
    <div class="form-group">
      <label for="Password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required="required" pattern=".{8,20}">
    </div>
    
    <button type="submit" class="btn btn-default" id="login">Login</button>
  </form>
  <div id="errors">
  <% 
  	String msg = (String)request.getAttribute("errorMsg");
  if(msg!=null)
  {
	  out.println(msg);
  }
  %>
  </div>
</div>

</body>
</html>
