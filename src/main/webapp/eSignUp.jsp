<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Edit Record</title>
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
<form action="editRecord" method="post">

<div class="form-group">
<img src=${data.photo} style="height:100px;">
<input type="hidden" name="jid" value="${data.jid }">
<hr/>	
	<label>Username</label>
	<input type="text" name="username" class="form-control" style="width:30%;" value="${data.username}">
</div>
<div class="form-group">
	<label>Password</label>
	<input type="text" name="password" class="form-control" style="width:30%;" value="${data.password}">
</div>
<div class="form-group">
	<label>Role</label>
	<select name="role" class="form-control" style="width:30%;">
		<option ${data.role=='Admin'?'selected':''}>Admin</option>
		<option ${data.role=='Customer'?'selected':''}>Customer</option>
		<option ${data.role=='Clerk'?'selected':''}>Clerk</option>
	</select>
</div>
<div class="form-group">
	<label>Name</label>
	<input type="text" name="name" class="form-control" style="width:30%;" value="${data.name}">
</div>
<div class="form-group">
	<label>Email</label>
	<input type="text" name="email" class="form-control" style="width:30%;" value="${data.email}">
</div>
<div class="form-group">
	<label>Gender</label>
	<select name="gender" class="form-control" style="width:30%;">
		<option ${data.gender=='Male'?'selected':''}>Male</option>
		<option ${data.gender=='Female'?'selected':'' }>Female</option>
		<option ${data.gender=='Other'?'selected':'' }>Other</option>
	</select>
</div>
<div class="form-group">
	<label>Photo</label>
	<input type="text" name="photo" class="form-control" style="width:30%;" value="${data.photo }">
	
</div>

<div class="form-group">
<button type="submit" class="btn btn-primary">Update</button>
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
