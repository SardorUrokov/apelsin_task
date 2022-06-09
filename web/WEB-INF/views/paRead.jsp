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
    <title>Payment Read</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Payments List is Here | <a href="/payment/add">Click for Create</a></strong></p>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Time</th>
        <th>Amount</th>
        <th>Invoice Id</th>
        <th>Action</th>
    </tr>
    <c:forEach var="ketmon" items="${listInvoice}">
        <tr>
            <td>${ketmon.id}</td>
            <td>${ketmon.time}</td>
            <td>${ketmon.amount}</td>
            <td>${ketmon.inv_id}</td>
            <td><a href="update/<c:out value='${ketmon.id}'/>">Update</a> | <a
                    href="delete/<c:out value='${ketmon.id}'/>">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
