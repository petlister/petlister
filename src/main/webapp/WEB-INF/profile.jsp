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

    <div class="container">
        <h1 class="transparent" id="subheader2">Welcome, ${sessionScope.user.username}!</h1>
        <%--<input id="id" type="hidden" name="id" value="${sessionScope.ad.userId}">--%>
        <c:forEach var="ad" items="${ads}">
            <div id="card-border" class="transparent">
                <div id="ad-card">
                    <p>${ad.title}</p>
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
