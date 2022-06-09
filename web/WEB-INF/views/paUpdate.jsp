<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Payment Update</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
<p><strong>Update Here | <a href="/payment/all">Click for Read</a></strong></p>
<form action="/payment/update" method="post">
<pre>
<c:forEach var="payment" items="${ketmon}">

    Id: <input type="number" name="id" value="${payment.id}" disabled="disabled"/>
    <input type="hidden" name="id" value="${payment.id}"/>

    Time: <input type="text" name="time" value="${payment.time}"/>

    Amount: <input type="text" name="amount" value="${payment.amount}"/>

    Invoice Id: <input type="number" name="inv_id" value="${payment.inv_id}"/>

    <input type="submit" value="Update"/>
</c:forEach>
</pre>
</form>
${msg}
</body>
</html>