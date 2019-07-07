<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Yahoo!!</title>
</head>
<body>
My First JSP!!! 

<form action="/spring-mvc/login" method="post">
${errorMsg}
Enter your name <input type="text" name="name"/> Password:<input type="password" name="password"/> <input type="submit" value="Login"/>

</body>
</html>