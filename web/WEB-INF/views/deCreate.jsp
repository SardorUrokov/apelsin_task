<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Detail Create</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<form action="add" method="post" >
<pre>
    <strong>Create a Details Here | <a href="/details/all">Click for Read Details</a></strong>

	Id: <input type="number" name="id"/>

	Order Id: <input type="number" name="ord_id"/>

	Product Id: <input type="number" name="pr_id"/>

	Quantity: <input type="text" name="quantity"/>

	<input type="submit" value="Saqlash"/>
</pre>
</form>
${ketmon}
</body>
</html>
