<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Category Update</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Update Here | <a href="/category/all">Click for Read</a></strong></p>
<form action="/category/update" method="post">
<pre>
<c:forEach var="category" items="${ketmon}">

    Id: <input type="number" name="id" value="${category.id}" disabled="disabled"/>
    <input type="hidden" name="id" value="${category.id}"/>

    Name: <input type="text" name="name" value="${category.name}"/>

    <input type="submit" value="Update"/>
</c:forEach>
</pre>
</form>
${msg}
</body>
</html>
