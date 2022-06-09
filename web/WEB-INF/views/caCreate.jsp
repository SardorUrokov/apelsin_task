<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Category Create</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<form action="add" method="post" >
<pre>
    <strong>Create a Category Here | <a href="/category/all">Click for Read Categories</a></strong>

	Id: <input type="number" name="id"/>

	Name: <input type="text" name="name"/>

	<input type="submit" value="Saqlash"/>
</pre>
</form>
${ketmon}
</body>
</html>
