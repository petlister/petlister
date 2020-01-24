<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>

<section class="section">
    <div class="container">
        <h1 class="transparent" id="landing-page-heading">PETLISTER</h1>
        <h3 id="subheader">A helpful resource to find your perfect furry, scaled, or feathered new friend</h3>
    </div>


    <c:if test="${sessionScope.user == null}">
    <form class="field has-addons" action="/ads/search" role="search" method="post">
        <div class="control field search-bar" id="search-bar">
            <div class="control">
                <div class="control has-icons-left">
                    <input id="searching" name="searching" class="input is-primary" type="text" placeholder="e.g. dog, cat, bird">

                    <span class="icon is-small is-left">
                  <i class="fas fa-search"></i>
            </span>
                </div>
            </div>
        </div>

        <div class="control">
            <button type="submit" class="button is-primary" id="search-test">
                Search
            </button>
        </div>

    </form>

    </c:if>







</body>
</html>
