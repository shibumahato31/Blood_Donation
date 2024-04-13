<%@page import="java.util.List"%>
<%@page import="com.dto.Doner"%>
<%@page import="com.dao.Donerdao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String O ="O+";
String status="Active";

Donerdao d= new Donerdao();
List<Doner> list=d.FindbyBgroup(O, status);
if(list!=null){
%>
<center>
<table border="1px">
<tr>
<th>Blood Group</th>
<th> Quantity</th>
<th>Amount</th>
<th>buy</th>
</tr>
<%for(Doner f: list) {%>
<tr>
<td><%=f.getBlood_group() %></td>
<td><%=f.getQuantity() %></td>
<td><%=f.getAmount() %></td>
<td><button><a href="Byu?id=<%=f.getId() %>">Buy</a></button></td>
</tr>

<%}}else{ %>
<h1>No record Founds</h1>
<%} %>
</table>
<br>
<button><a href="BloodmanagementSystem.html">Home Page</a></button>
<button><a href="BloodDetails.jsp">Blood Details</a></button>
</center>
</body>
</html>