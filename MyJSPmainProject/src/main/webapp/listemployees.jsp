<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" import="s1314.myclasses.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

table 
{
width:80%;
border:2px solid rgb(0, 0, 0);
margin:auto;
background-color:rgb(255, 255, 255);
}

th,td 
{
width:13.3%;
border:2px solid rgb(0, 0, 0);
text-align:center;

}

#back 
{
width:200px;
margin:auto;
}
</style>
</head>
<body>
<H1>The following are the list of employees:</H1>
<%Data d=(Data)application.getAttribute("data");
ResultSet rs=d.rs;%>
<table>  
<tr>
<th>id</th>
<th>firstname</th>
<th>lastname</th>
<th>Age</th>
<th>phonenumber</th>
<th>Join_Date</th>
</tr>
<tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getInt(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getDate(6)%></td>
</tr>
<%}%>
</table>

<div id="back"><button onclick="history.back();">Go back</button></div>

</body>
</html>