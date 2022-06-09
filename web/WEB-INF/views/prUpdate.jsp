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
    <title>Product Update</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Update Here | <a href="/product/all">Click for Read</a></strong></p>
<form action="/product/update" method="post">
<pre>
<c:forEach var="product" items="${ketmon}">

    Id: <input type="number" name="id" value="${product.id}" disabled="disabled"/>
    <input type="hidden" name="id" value="${product.id}"/>

    Name: <input type="text" name="name" value="${product.name}"/>

    Category Id: <input type="number" name="category_id" value="${product.category_id}"/>

    Description: <input type="text" name="description" value="${product.description}"/>

    Price: <input type="number" name="price" value="${product.price}"/>

    Photo: <input type="text" name="photo" value="${product.photo}"/>

    <input type="submit" value="Update"/>
</c:forEach>
</pre>
</form>
${msg}
</body>
</html>
