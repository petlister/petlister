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
    <title>Title</title>
</head>
<body>
    <h1>Here are your search results:</h1>

    <c:forEach var="ad" items="${ads}">

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
    </c:forEach>
</body>
</html>
