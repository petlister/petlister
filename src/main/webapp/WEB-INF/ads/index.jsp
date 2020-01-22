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
    <h1 id="subheader2" class="transparent">Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
    <div id="test">
    <%--<div class="login-box ad-card">--%>
        <%--<div class="container">--%>
        <%--<div class="col-md-6">--%>
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <p>${ad.categories}</p>
        <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    </div>
    </c:forEach>

</div>
</section>
</body>
</html>
