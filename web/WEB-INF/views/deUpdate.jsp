<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Detail Update</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Update Here | <a href="/details/all">Click for Read</a></strong></p>
<form action="/details/update" method="post">
<pre>
<c:forEach var="details" items="${ketmon}">

    Id: <input type="number" name="id" value="${details.id}" disabled="disabled"/>
    <input type="hidden" name="id" value="${details.id}"/>

    Order Id: <input type="number" name="ord_id" value="${details.ord_id}"/>

    Product Id: <input type="number" name="pr_id" value="${details.pr_id}"/>

    Quantity: <input type="text" name="quantity" value="${details.quantity}"/>

    <input type="submit" value="Update"/>
</c:forEach>
</pre>
</form>
${msg}
</body>
</html>
