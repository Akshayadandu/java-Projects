<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.set.model.UserModel" %>
<%@ page import="com.set.dao.UserDao" %>
<%@ page import="java.util.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<form action="UserinfoServlet" method="post">
<table><tr>
	<td>Firstname:</td><td><input type="text" name="fname"/></td>
</tr>
<tr>
	<td>Lastname:</td><td><input type="text" name="lname"/></td>
</tr>
<tr>
	<td>phonene:</td><td><input type="text" name="phno"/></td>
</tr>
<tr>
	<td>email:</td><td><input type="text" name="email"/></td>
</tr>
<tr>
	<td><input type="submit" value="Add"/></td>
</tr>
</table>
</form>
</div>
<div>
<table border='1px'>
<tr>
<th>Name</th>
<th>Phoneno</th>
<th>Email</th>
</tr>
<% 
UserDao u=new UserDao();
List<UserModel> userList=u.getAllUsers();
if(userList !=null){
	for(UserModel i:userList){
%>
<tr>
<td><%=i.getId() %></td>
<td><%out.write(i.getFirstName()); %> <%=i.getLastName() %></td>
<td><%out.write(i.getPhoneno()); %></td>
<td><%out.write(i.getEmail()); %></td>
</tr>
 <%
 }
}
%>
</table>
</div>
</body>
</html>
