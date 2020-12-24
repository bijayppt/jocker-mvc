<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
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
<form action="login" method="post">

<div class="form-group">
	<label>Username</label>
	<input type="text" name="username" class="form-control" style="width:30%;">
</div>
<div class="form-group">
	<label>Password</label>
	<input type="text" name="password" class="form-control" style="width:30%;">
</div>
<div class="form-group">
	<button type="submit" class="btn btn-primary">Login</button>
	<a href="showDetails">
	<button type="button" class="btn btn-primary">Show Details</button>
	</a>
	<a href="signUp.jsp">
	<button type="button" class="btn btn-primary">Sign Up</button>
</a>
</div>
<hr/>
${message}

</form>
<table class="table table-dark">
    <thead>
      <tr>
        <th>Id</th>
        <th>Username</th>
        <th>password</th>
        <th>role</th>
        <th>name</th>
        <th>email</th>
        <th>gender</th>
        <th>photo</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
					<td>${data['jid'] }</td>
					<td>${data['username']}</td>
					<td>${data['password']}</td>
					<td>${data['role']}</td>
					<td>${data['name']}</td>
					<td>${data['email']}</td>
					 <td>${data['gender']}</td>
					 <td><img src="${data['photo']}" style="height:50px;]"/>
					 </td>
					      

				</tr>
      <tr>
 
   
    </tbody>
  </table>
</div>


</body>
</html>
