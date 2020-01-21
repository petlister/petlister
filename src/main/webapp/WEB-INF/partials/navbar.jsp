<%--<nav class="navbar navbar-default">--%>
    <%--<div class="container-fluid">--%>
        <%--<!-- Brand and toggle get grouped for better mobile display -->--%>
        <%--<div class="navbar-header">--%>
            <%--<a class="navbar-brand" href="/ads">Adlister</a>--%>
        <%--</div>--%>
        <%--<ul class="nav navbar-nav navbar-right">--%>
            <%--<li><a href="/login">Login</a></li>--%>
            <%--<li><a href="/logout">Logout</a></li>--%>
        <%--</ul>--%>
    <%--</div><!-- /.navbar-collapse -->--%>
    <%--</div><!-- /.container-fluid -->--%>
<%--</nav>--%>
<nav class="navbar" role="navigation" aria-label="main navigation">


    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item" href="/index.jsp">
                HOME
            </a>

            <a class="navbar-item" href="/profile">
                PROFILE
            </a>

                    <a class="navbar-item" href="/ads/create">
                      POST
                    </a>



                <a class="navbar-item" href="/ads">
                    VIEW ALL PETS
                </a>

            </div>
        </div>


    <c:choose>
        <c:when test = "${sessionScope.userId != null}">
            <%--<li><p><a href="/profile"><i class="fas fa-user"></i></a></p></li>--%>
            <%--<li><p><a href="/logout"><i class="fas fa-sign-out-alt"></i></a></p></li>--%>
        </c:when>

        <c:when test = "${sessionScope.userId == null}">
            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                        <a href="/register" class="button is-primary">
                            <strong>Sign up</strong>
                        </a>
                        <a class="button is-light" href="/login">
                            Log in
                        </a>
                    </div>
                </div>
            </div>
        </c:when>
    </c:choose>
        <%--<div class="navbar-end">--%>
            <%--<div class="navbar-item">--%>
                <%--<div class="buttons">--%>
                    <%--<a class="button is-primary">--%>
                        <%--<strong>Sign up</strong>--%>
                    <%--</a>--%>
                    <%--<a class="button is-light">--%>
                        <%--Log in--%>
                    <%--</a>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    </div>
</nav>

