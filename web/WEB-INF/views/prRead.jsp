<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Product Read</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Product List is Here | <a href="/product/add">Click for Create</a></strong></p>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Category Id</th>
        <th>Description</th>
        <th>Price</th>
        <th>Photo</th>
    </tr>
    <c:forEach var="ketmon" items="${listProduct}">
        <tr>
            <td>${ketmon.id}</td>
            <td>${ketmon.name}</td>
            <td>${ketmon.category_id}</td>
            <td>${ketmon.description}</td>
            <td>${ketmon.price}</td>
            <td>${ketmon.photo}</td>
            <td><a href="update/<c:out value='${ketmon.id}'/>">Update</a> | <a
                    href="delete/<c:out value='${ketmon.id}'/>">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
