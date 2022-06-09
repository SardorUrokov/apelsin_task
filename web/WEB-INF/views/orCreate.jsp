<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Order Create</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<form action="add" method="post" >
<pre>
    <strong>Create a Order Here | <a href="/orders/all">Click for Read Orders</a></strong>

	Id: <input type="number" name="id"/>
	Date: <input type="text" name="date"/>
	Customer Id: <input type="number" name="cust_id"/>

	<input type="submit" value="Saqlash"/>
</pre>
</form>
${ketmon}
</body>
</html>
