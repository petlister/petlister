<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>
<section class="hero is-fullheight section4">
    <div class="container">
        <h1 id="subheader2">Welcome, ${sessionScope.user.username}!</h1>
    </div>
</section>
</body>
</html>
