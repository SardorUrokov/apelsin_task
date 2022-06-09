<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/9/2022
  Time: 7:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Customer Create</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<form action="add" method="post" >
<pre>
    <strong>Create a Customer Here | <a href="/customer/all">Click for Read Customer</a></strong>

	Id: <input type="number" name="id"/>

	Name: <input type="text" name="name"/>

    Country: <input type="text" name="country"/>

    Address: <input type="text" name="address"/>

    Phone: <input type="text" name="phone"/>

	<input type="submit" value="Saqlash"/>
</pre>
</form>
${ketmon}
</body>

</html>
