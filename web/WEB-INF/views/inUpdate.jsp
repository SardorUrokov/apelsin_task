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
    <title>Invoice Update</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Update Here | <a href="/invoice/all">Click for Read</a></strong></p>
<form action="/invoice/update" method="post">
<pre>
<c:forEach var="invoice" items="${ketmon}">

    Id: <input type="number" name="id" value="${invoice.id}" disabled="disabled"/>
    <input type="hidden" name="id" value="${invoice.id}"/>

    Order Id: <input type="number" name="ord_id" value="${invoice.ord_id}"/>

    Amount: <input type="text" name="amount" value="${invoice.amount}"/>

    Issue: <input type="text" name="issued" value="${invoice.issued}"/>

    Due: <input type="text" name="due" value="${invoice.due}"/>

    <input type="submit" value="Update"/>
</c:forEach>
</pre>
</form>
${msg}
</body>
</html>
