<%--
  Created by IntelliJ IDEA.
  User: alyssabriggs
  Date: 1/17/20
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Listing:" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

</head>
<body>
<section class=" hero is-fullheight section10">
<div class="container">
    <h1>Please update your information.</h1>
    <p class="text-danger">${sessionScope.error}</p>
    <form action="/update" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${user.username}">
        </div>
        <%--<input type="hidden" name="id" value="${user.id}">--%>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" value="${user.email}">
        </div>
        <div class="form-group">
            <label for="password">New Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
        <input id="id" type="hidden" name="id" value="${sessionScope.user.id}">
    </form>
</div>
</section>
</body>
</html>
