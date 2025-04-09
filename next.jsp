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
<%  
	
	String fullname = request.getParameter("fullname");
	out.print("<br>Full Name: " + fullname);
	
	UserData.setfullname(fullname);
	
	String email = request.getParameter("email");
	out.print("<br>Email: " + email); 

	UserData.setemail(email);
	
	String age = request.getParameter("age");
	out.print("<br>Age: " + age);
	
	UserData.setage(age);
	
	String favlanguage = request.getParameter("favlanguage");
	out.print("<br>Favorite Language: " + favlanguage);
	
	UserData.setfavlanguage(favlanguage);
	
	String level = request.getParameter("level");
	out.print("<br>Experience Level: " + level); 
	
	UserData.setlevel(level);
	
	
	String tools []= request.getParameterValues("tools");
	out.print("<br>Preferred Development Tools: ");
	for(int index = 0; index < tools.length; index++) {
		out.print("<br>" + tools[index]); 
	}
	UserData.settools (tools);   
	
	String status = request.getParameter("status");
	out.print("<br>Subscription Status: " + status);
	UserData.setstatus(status);

%>
	 
<form action="submit.jsp" method="POST">
<br><br><input type="button" value="Edit your information" onclick="javascript:history.go(-1);">
<br><br><input type="submit" value="Confirm submission">
</form>

</body>
</html>