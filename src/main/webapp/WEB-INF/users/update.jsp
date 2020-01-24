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


<%--<body>--%>

<%--<div class="container">--%>
    <%--<h1>Please update your information.</h1>--%>
    <%--<p class="text-danger">${sessionScope.error}</p>--%>
    <%--<form action="/update" method="post">--%>
        <%--<div class="form-group">--%>
            <%--<label for="username">Username</label>--%>
            <%--<input id="username" name="username" class="form-control" type="text" value="${user.username}">--%>
        <%--</div>--%>
        <%--&lt;%&ndash;<input type="hidden" name="id" value="${user.id}">&ndash;%&gt;--%>
        <%--<div class="form-group">--%>
            <%--<label for="email">Email</label>--%>
            <%--<input id="email" name="email" class="form-control" type="text" value="${user.email}">--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label for="password">New Password</label>--%>
            <%--<input id="password" name="password" class="form-control" type="password">--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label for="confirm_password">Confirm Password</label>--%>
            <%--<input id="confirm_password" name="confirm_password" class="form-control" type="password">--%>
        <%--</div>--%>
        <%--<input type="submit" class="btn btn-primary btn-block">--%>
        <%--<input id="id" type="hidden" name="id" value="${sessionScope.user.id}">--%>
    <%--</form>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
<%--<body>--%>

<%--<!-- the form used for THIS page -->--%>
<section class=" hero is-fullheight section10">
<div id="login-box2" class="transparent">
    <h1>Please update your information.</h1>
    <p class="text-danger">${sessionScope.error}</p>
    <%--<div id="login-box2" class="transparent">--%>
    <form action="/update" method="post">

        <div class="field">
            <label class="label username">Username</label>
            <div class="control has-icons-left has-icons-right">
            <input id="username" name="username" class="form-control input is-success" type="text"  value="${user.username}">
                <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
                        </span>
                <span class="icon is-small is-right">
      <i class="fas fa-check"></i>
    </span>
            </div>
        </div>

        <%--<input type="hidden" name="id" value="${user.id}">--%>
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
            <input id="password" name="password" type="password" placeholder="*******" class="input">
            <span class="icon is-small is-left">
                  <i class="fa fa-lock"></i>
                </span>
        </div>

        </div>


    <div class="field">
        <label for="confirm_password" class="label">Confirm Password</label>
        <div class="control has-icons-left">
            <input id="confirm_password" name="confirm_password" type="password" placeholder="*******" class="input">
            <span class="icon is-small is-left">
                  <i class="fa fa-lock"></i>
                </span>
        </div>
    </div>


    <div class="field is-grouped">
        <div class="control">
            <button class="button is-primary" type="submit">Submit</button>
        </div>

        <%--<input type="submit" class="btn btn-primary btn-block">--%>
        <input id="id" type="hidden" name="id" value="${sessionScope.user.id}">
    </form>
</div>


</section>




<%--<!-- form pulled from register page to use as reference is below -->--%>








        <%--&lt;%&ndash;<div class="field is-grouped">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div class="control">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button class="button is-primary" type="submit">Submit</button>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div class="control">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button class="button is-link is-light">Cancel</button>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

    <%--&lt;%&ndash;</form>&ndash;%&gt;--%>

<%--&lt;%&ndash;</div>&ndash;%&gt;--%>






<%--</body>--%>
<%--</html>--%>
