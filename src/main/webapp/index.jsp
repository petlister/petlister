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


    <div>
        <h1 class="transparent" id="landing-page-heading">PETLISTER</h1>
        <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>

    </div>

    </div>
</body>
</html>
