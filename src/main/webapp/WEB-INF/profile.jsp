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
    </div>
    </div>
</section>
</body>
</html>
