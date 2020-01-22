<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>
<section class="section6 hero-body is-fullheight">
<div class="container">
    <h1 id="subheader2" class="transparent">Here Are All The Ads!</h1>
<div id="test">
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
