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
    <div class="navbar-brand">
        <%--<a class="navbar-item" href="https://bulma.io">--%><%--make this a link to the homepage instead of bulma io --%>
        <%--<img  src= "../css/img/petlisterlogo.png" width="112" height="28"/>--%>
        <img  src= "../../images_container/img/petlisterlogo.png" width="50" height="50"/>
        </a>

        <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item">
                Home
            </a>

            <a class="navbar-item">
                Profile
            </a>
            <div class="navbar-item">
                    <a class="navbar-item">
                      Post
                    </a>

                </div>
            </div>
        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <div class="buttons">
                    <a class="button is-primary">
                        <strong>Sign up</strong>
                    </a>
                    <a class="button is-light">
                        Log in
                    </a>
                </div>
            </div>
        </div>
    </div>
</nav>

