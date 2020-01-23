<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: alyssabriggs
  Date: 1/22/20
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <title>Title</title>
</head>
<body id="test">
<section class="section7 hero-body is-fullheight">
    <h1 id="subheader2" class="transparent">Here Are Your Search Results:</h1>

    <c:forEach var="ad" items="${ads}">
    <div id="card-border" class="transparent">
        <div class="panel panel-info wid">
            <div class="panel-heading">
                <h2 class="panel-title"><a href="/display?id=${ad.id}">${ad.title}</a> </h2>
            </div>
            <div class="panel-body">
                <p>${ad.description}</p>
                <%--<p>${ads}</p>--%>

            </div>
        </div>
        <div class="col-md-6">
        </div>
    </div>
    </c:forEach>
</section>
</body>
</html>
