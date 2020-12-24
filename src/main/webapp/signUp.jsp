<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sign Up</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<header style="height:30px; background-color:red;"></header>
<div class="container">
<form action="signUp" method="post">

<div class="form-group">
	<label>Username</label>
	<input type="text" name="username" class="form-control" style="width:30%;">
</div>
<div class="form-group">
	<label>Password</label>
	<input type="text" name="password" class="form-control" style="width:30%;">
</div>
<div class="form-group">
	<label>Role</label>
	<select name="role" class="form-control" style="width:30%;">
		<option>Admin</option>
		<option>Customer</option>
		<option>Clerk</option>
	</select>
</div>
<div class="form-group">
	<label>Name</label>
	<input type="text" name="name" class="form-control" style="width:30%;">
</div>
<div class="form-group">
	<label>Email</label>
	<input type="text" name="email" class="form-control" style="width:30%;">
</div>
<div class="form-group">
	<label>Gender</label>
	<select name="gender" class="form-control" style="width:30%;">
		<option>Male</option>
		<option>Female</option>
		<option>Other</option>
	</select>
</div>
<div class="form-group">
	<label>Photo</label>
	<input type="text" name="photo" class="form-control" style="width:30%;">
</div>

<div class="form-group">
<button type="submit" class="btn btn-primary">Sign Up</button>
	<a href="login.jsp">
	<button type="button" class="btn btn-primary">Login</button>
	</a>
	
	
	
</div>
<hr/>
${message}

</form>
</div>


</body>
</html>
