<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Orders Update</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Update Here | <a href="/orders/all">Click for Read</a></strong></p>
<form action="/orders/update" method="post">
<pre>
<c:forEach var="orders" items="${ketmon}">

    Id: <input type="number" name="id" value="${orders.id}" disabled="disabled"/>
    <input type="hidden" name="id" value="${orders.id}"/>

    Date: <input type="text" name="date" value="${orders.date}"/>

    Customer Id: <input type="number" name="cust_id" value="${orders.cust_id}"/>

    <input type="submit" value="Update"/>
</c:forEach>
</pre>
</form>
${msg}
</body>
</html>
