<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Payment Create</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<form action="add" method="post" >
<pre>
    <strong>Create a Payment Here | <a href="/class/all">Click for Read Payments</a></strong>

	Id: <input type="number" name="id"/>
	Time: <input type="text" name="time"/>
	Amount: <input type="text" name="amount"/>
	Invoice Id: <input type="number" name="inv_id"/>

	<input type="submit" value="Saqlash"/>
</pre>
</form>
${ketmon}
</body>
</html>
