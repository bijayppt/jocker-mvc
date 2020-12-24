<%@page import="com.web.vo.SignUp"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Show Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<header style="height: 30px; background-color: red;"></header>
	<div class="container">
		<form action="showDetails" method="post">
		${message }

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
						<th>Delete/Edit</th>

					</tr>
				</thead>
				<tbody>
				<%
				List<SignUp> showDetails= (List<SignUp>)request.getAttribute("showDetails");
			
				
				if(showDetails==null){
					showDetails= new ArrayList<>();
					
				}
				int count=1;
				for(SignUp showDetail: showDetails){
					%>
			
					<tr>
						<td><%= count++ %></td>
						<td><%=showDetail.getUsername() %></td>
						<td><%=showDetail.getPassword() %></td>
						<td><%=showDetail.getRole() %></td>
						<td><%=showDetail.getName() %></td>
						<td><%=showDetail.getEmail() %></td>
						<td><%=showDetail.getGender() %></td>
						<td><img src="<%=showDetail.getPhoto()%>" style="height:30px;"></td>
						<td>
						<a href="deleteRecord?username=<%=showDetail.getUsername()%>">
						<img src="img/delete.png" style="height:30px;">
						</a>
						<a href="editRecord?username=<%=showDetail.getUsername()%>">
						<img src="img/edit.png" style="height:30px;">
						</a>
						</td>


					</tr>
						<% }%>
				
				</tbody>
			</table>


			<div class="form-group">
				<a href="login.jsp">
					<button type="button" class="btn btn-primary">Login</button>
				</a> 
				<a href="signUp.jsp">
		<button type="button" class="btn btn-primary">Sign Up</button>
				</a>
			</div>




</form>
</div>


</body>
</html>
