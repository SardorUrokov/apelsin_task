<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Customer Update</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Update Here | <a href="/customer/all">Click for Read</a></strong></p>
<form action="/customer/update" method="post">
<pre>
<c:forEach var="customer" items="${ketmon}">

    Id: <input type="number" name="id" value="${customer.id}" disabled="disabled"/>
    <input type="hidden" name="id" value="${customer.id}"/>

    Name: <input type="text" name="name" value="${customer.name}"/>

    Country: <input type="text" name="country" value="${customer.country}"/>

    Address: <input type="text" name="address" value="${customer.address}"/>

    Phone: <input type="text" name="phone" value="${customer.phone}"/>

    <input type="submit" value="Update"/>
</c:forEach>
</pre>
</form>
${msg}
</body>
</html>
