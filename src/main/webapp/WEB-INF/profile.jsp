<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>


<section class="section4 hero-body is-fullheight">
    <div class="container">
        <a href="/update">
 <span class="icon is-right" id="edit_profile_icon">

      <i class="fas fa-user fa-2x"></i>

                        </span>
        </a>
    <div class="container">
        <h1 class="transparent" id="subheader2">Welcome, ${sessionScope.user.username}!</h1>
        <h1 class="transparent" id="subheader3"> Here's a List of All Your Ads</h1>
        <c:forEach var="ad" items="${userAds}">
            <div id="card-border" class="transparent">

                <div id="ad-card1">
                    <p><c:out value="${ad.title}"/></p>

<!--                 <div id="ad-card">
                    <h2 class="panel-title"><a href="/ads/display?id=${ad.id}">${ad.title}</a> </h2> -->

                    <p>${ad.description}</p>
                    <p>${ad.categories}</p>
                </div>
            </div>
        </c:forEach>

    </div>
    </div>
</section>
</body>
</html>
