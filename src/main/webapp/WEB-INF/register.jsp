<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <jsp:include page="partials/navbar.jsp" />
</head>
<body>



<section class=" hero is-fullheight section3">
    <div id="login-box2" class="transparent">
    <form action="/register" method="post">
    <div class="field">
            <label for="username">Username</label>
            <div class="control has-icons-left has-icons-right">
            <input id="username" name="username" class="form-control input is-success" type="text" placeholder="e.g. codeup" required>
            <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
    </span>
            <span class="icon is-small is-right">
      <i class="fas fa-check"></i>
    </span>
        </div>
        <%--<p class="help is-success">This username is available</p>--%>
    <%--</div>--%>



    <div class="field">
        <label class="label" for="email">Email</label>
        <div class="control has-icons-left has-icons-right">
            <input id="email" name="email" class="form-control input is-success" type="email" placeholder="codeup@gmail.com" required>
            <span class="icon is-small is-left">
      <i class="fas fa-envelope"></i>
    </span>

        </div>
    </div>
    <div class="field">
        <label for="password" class="label">Password</label>
        <div class="control has-icons-left">
            <input id="password" name="password" type="password" placeholder="*******" class="input" required>
            <span class="icon is-small is-left">
                  <i class="fa fa-lock"></i>
                </span>
        </div>
    </div>
    <div class="field">
        <label for="password" class="label">Confirm Password</label>
        <div class="control has-icons-left">
            <input id="password2" name="password" type="password" placeholder="*******" class="input" required>
            <span class="icon is-small is-left">
                  <i class="fa fa-lock"></i>
                </span>
        </div>
    </div>
    </form>

    <div class="field is-grouped">
        <div class="control">
            <button class="button is-link">Submit</button>
        </div>
        <div class="control">
            <button class="button is-link is-light">Cancel</button>
        </div>
    </div>
    </div>
</section>


</body>
</html>
