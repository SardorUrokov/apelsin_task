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
    <title>Detail Read</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Quantity List is Here | <a href="/student/add">Click for Create</a></strong></p>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Order Id</th>
        <th>Product Id</th>
        <th>Quantity</th>
        <th>Action</th>
    </tr>
    <c:forEach var="ketmon" items="${listQuantity}">
        <tr>
            <td>${ketmon.id}</td>
            <td>${ketmon.ord_id}</td>
            <td>${ketmon.pr_id}</td>
            <td>${ketmon.quantity}</td>
            <td><a href="update/<c:out value='${ketmon.id}'/>">Update</a> | <a
                    href="delete/<c:out value='${ketmon.id}'/>">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
