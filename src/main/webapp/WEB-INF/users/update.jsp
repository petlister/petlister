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

<section class=" hero is-fullheight section10">
<div id="login-box2" class="transparent">
    <h1>Please update your information.</h1>
    <p class="text-danger">${sessionScope.error}</p>


    <form action="/update" method="post">

        <div class="field">
            <label class="label username">Username</label>
            <div class="control has-icons-left has-icons-right">
            <input id="username" name="username" class="form-control input is-success" type="text"  value="${user.username}" required>
                <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
                        </span>
                <span class="icon is-small is-right">
      <i class="fas fa-check"></i>
    </span>
            </div>
        </div>

        <div class="field">

            <label class="label" for="email">Email</label>
            <div class="control has-icons-left has-icons-right">
            <input id="email" name="email" class="form-control input is-success" type="email" value="${user.email}" required>
                <span class="icon is-small is-left">
      <i class="fas fa-envelope"></i>
    </span>
            </div>
        </div>



    <div class="field">
            <label for="password" class="label">New Password</label>
        <div class="control has-icons-left">
            <input id="password" name="password" type="password" placeholder="*******" class="input" required>
            <span class="icon is-small is-left">
                  <i class="fa fa-lock"></i>
                </span>
        </div>

        </div>


    <div class="field">
        <label for="confirm_password" class="label">Confirm Password</label>
        <div class="control has-icons-left">
            <input id="confirm_password" name="confirm_password" type="password" placeholder="*******" class="input" required>
            <span class="icon is-small is-left">
                  <i class="fa fa-lock"></i>
                </span>
        </div>
    </div>


    <div class="field is-grouped">
        <div class="control">
            <button class="button is-primary" type="submit">Submit</button>
        </div>
        <input id="id" type="hidden" name="id" value="${sessionScope.user.id}">
    </form>
</div>


</section>

