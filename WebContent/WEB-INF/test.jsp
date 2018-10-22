<%@page import="com.sdzee.beans.TestBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test</title>
</head>
<body>
	<p>Ceci est une page générée depuis une JSP</p>
	<p>
		<%! String testdeclar =  "Ceci est une déclaration de variable dans un fichier JSP"; 
			public boolean japprendJ2EE(){
				return true;
			}
		%>
		<% out.println("<h1>Hello</h1>");%>
		<%= "<h1>Dofus</h1>" %>
		<%
			String attribut = (String) request.getAttribute("message");
			out.println(attribut);
			
			String tryparameter = request.getParameter("try");
			out.println(tryparameter);	
			
			TestBean beanattribut = (TestBean) request.getAttribute("testbean");
			out.println("<p>" + beanattribut.getNameclass() + "</p>");
			out.println("<p>" + beanattribut.getRoleclass() + "</p>");
			out.println("<p>" + beanattribut.getDifficultyclass() + "</p>");
		%> 
	</p>
</body>
</html>