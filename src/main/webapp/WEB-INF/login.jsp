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

                                <label for="username" class="label">Username</label>
                                <div class="control has-icons-left">
                                    <input id="username" name="username" class="input is-primary" type="text" placeholder="e.g. codeup">


                                    <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
    </span>


                                </div>
                            </div>
                            <div class="field">

                                <label for="password" class="label">Password</label>
                                <div class="control has-icons-left">
                                    <input id="password" name="password" type="password" placeholder="*******" class="input is-primary" required>
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
                                <button class="button is-primary" type="submit">
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
