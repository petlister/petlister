<%--
  Created by IntelliJ IDEA.
  User: alyssabriggs
  Date: 1/23/20
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>
<section class="section8 hero-body is-fullheight">
<h1 class="transparent" id="subheader2">Ad Details</h1>

        <div class="container mt-5">
            <div id="card-border" class="transparent">
            <div id="ad-card1">
            <h1><c:out value="${ad.title}"/></h1>
        <div class="row">
        <div class="col-md-8">
            <p>Posted by: ${user.username}</p>
            <p><strong>Description:</strong> ${ad.description}</p>
            <p><strong>Categories:</strong> ${ad.categories}</p>
            <c:if test="${user.id == ad.userId}">
                <a href="/ads/update?id=${ad.id}" class="btn btn-primary">Edit</a>
                <a href="/ads/delete-ad?id=${ad.id}" class="btn btn-danger">Delete</a>
        </div>

            </c:if>
        </div>
            </div>
            <br>
        <%--</div>--%>

        <%--</div>--%>
        <%--</div>--%>
</section>

</body>
</html>
