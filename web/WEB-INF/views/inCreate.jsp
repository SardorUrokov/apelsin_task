<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Invoice Create</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<form action="add" method="post" >
<pre>
    <strong>Create a Invoice Here | <a href="/invoice/all">Click for Read Invoices</a></strong>

	Id: <input type="number" name="id"/>
	Order Id: <input type="number" name="ord_id"/>
	Amount: <input type="text" name="amount"/>
	Issued: <input type="text" name="issued"/>
	Due: <input type="text" name="due"/>

	<input type="submit" value="Saqlash"/>
</pre>
</form>
${ketmon}
</body>

</html>
