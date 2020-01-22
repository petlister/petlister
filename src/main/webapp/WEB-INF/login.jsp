<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>




    <section class="hero is-fullheight section2">
        <div class="hero-body login-box">
            <div class="container">
                <div class="columns is-centered transparent" id="login-box">
                        <form action="/login" method="POST" class="box">
                            <div class="field">
                                <label class="label" for="username">Username</label>
                                <div class="control has-icons-left">
                                    <input class="input is-primary" type="text" placeholder="e.g. codeup"
                                           name="username" id="username">
                                    <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
    </span>


                                </div>
                            </div>
                            <div class="field">
                                <label class="label" for="password">Password</label>
                                <div class="control has-icons-left">
                                    <input type="password" placeholder="*******" class="input" required
                                           name="password" id="password">
                                    <span class="icon is-small is-left">
                  <i class="fa fa-lock"></i>
                </span>
                                </div>
                            </div>
                            <div class="field">
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Remember me
                                </label>
                            </div>
                            <div class="field">
                                <button class="button is-success">
                                    Login
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>



</body>
</html>
