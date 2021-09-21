<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notification des Enseignants</title>
</head>
<body>
<%
RequestDispatcher rd=request.getRequestDispatcher("http://192.168.43.213/app/v1/send_push.php");
rd.include(request, response);




%>
</body>
</html>