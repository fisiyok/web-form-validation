<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="UserData" class="beans.UserData" scope="session"/>
<h3>Thank you for your submission.<br></h3>

<%
	out.print("Below is your submitted information.<br><br>");
	out.print("Full Name: " + UserData.getfullname());
	out.print("<br>Email: " + UserData.getemail());
	out.print("<br>Age: " + UserData.getage());
	out.print("<br>Favorite Language: " + UserData.getfavlanguage());
	out.print("<br>Experience Level: " + UserData.getlevel());
	out.print("<br>Preferred Development Tools: ");
	String tools [] = UserData.gettools();
	for(int index = 0; index < tools.length; index++) {
		out.print("<br>" + tools[index]);
	}
	
	out.print("<br>Subscription Status: " + UserData.getstatus());

%>

<form action="submit.jsp" method="POST">
<br><input type="button" value="Click here to redirect to the first page" onclick="javascript:location.href='index.html';">
</form>
</body>
</html>

