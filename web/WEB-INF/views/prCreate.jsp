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
    <title>Product Create</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<form action="add" method="post" >
<pre>
    <strong>Create a Product Here | <a href="/product/all">Click for Read Products</a></strong>

	Id: <input type="number" name="id"/>

	Name: <input type="text" name="name"/>

    Category Id: <input type="number" name="category_id"/>

	Description: <input type="text" name="description"/>

    Price: <input type="number" name="price"/>

	Photo: <input type="text" name="photo"/>

	<input type="submit" value="Saqlash"/>
</pre>
</form>
${ketmon}
</body>
</html>
