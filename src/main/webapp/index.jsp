<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <style><%@include file="/WEB-INF/css/indexCSS.css"%></style>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>

<section class="section">
    <div class="container">
        <h1 class="transparent" id="landing-page-heading">PETLISTER</h1>
        <h3 id="subheader">A helpful resource to find your perfect furry, scaled, or feathered new friend</h3>
    </div>
</section>


    <%--<div id="main-background">--%>
        <%--<h1 class="transparent" id="landing-page-heading">PETLISTER</h1>--%>
        <%--<h3 id="subheader">A helpful resource to find your perfect furry, scaled, or feathered new friend</h3>--%>

    <%--</div>--%>

    <%--</div>--%>
</body>
</html>
