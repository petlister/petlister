<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


<c:if test="${sessionScope.user == null}">
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
</c:if>

    <c:if test="${sessionScope.user != null}">
    <form class="field has-addons" action="/ads/search" role="search" method="post">
    <div class="field search-bar" id="search-bar">
        <div class="control">
            <div class="control has-icons-left">
                <input id="searching" name="searching" class="input is-primary" type="text" placeholder="e.g. dog, cat, bird">
                <span class="icon is-small is-left">
                  <i class="fas fa-search"></i>
                </span>
            </div>
        </div>
    </div>
    </form>
    <div class="buttons">
            <a href="/logout" class="button is-primary" id="logout-button">
                <strong>Logout</strong>
            </a>


    </c:if>

    </div>
</nav>

