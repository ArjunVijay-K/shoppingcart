<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>

<h1 style=" text-align:center">Welcome admin</h1>

<c:choose>
<c:when test="${not empty isViewcategoryclicked }">
  <%@ include file="/WEB-INF/views/Viewcategory.jsp" %>
</c:when>
</c:choose>
</body>
</html>