<%--
  Created by IntelliJ IDEA.
  User: alyssabriggs
  Date: 1/17/20
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Listing:" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Edit Your Ad</h1>
    <p class="text-danger">${sessionScope.error}</p>
    <form action="/ads/update" method="post">
        <div class="form-group">
            <label  for="update-title">Title</label>
            <input id="update-title" name="title" class="form-control" value="${ad.title}" type="text">
        </div>
        <input type="hidden" name="id" value="${ad.id}">
        <div class="form-group">
            <label for="update-description">Description</label>
            <textarea id="update-description" name="description" class="form-control"  type="text">${ad.description}</textarea>
        </div>
        <%--            Category Checkbox--%>
        <p>Please select applicable categories</p>
        <div class="form-check form-check-inline">
            <input class="form-check-input " type="checkbox" name="categoryCheckbox" id="free" value="1">
            <label class="form-check-label" for="free">free</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="categoryCheckbox" id="iso" value="2">
            <label class="form-check-label" for="iso">in seek of</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="categoryCheckbox" id="forsale" value="3">
            <label class="form-check-label" for="forsale">for sale</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="categoryCheckbox" id="dog" value="4">
            <label class="form-check-label" for="dog">dog</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="categoryCheckbox" id="cat" value="5">
            <label class="form-check-label" for="cat">cat</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="categoryCheckbox" id="bird" value="6">
            <label class="form-check-label" for="bird">bird</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="categoryCheckbox" id="reptile" value="6">
            <label class="form-check-label" for="reptile">reptile</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="categoryCheckbox" id="other" value="6">
            <label class="form-check-label" for="other">other</label>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</html>