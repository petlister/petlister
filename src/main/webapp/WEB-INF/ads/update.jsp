<%--
  Created by IntelliJ IDEA.
  User: alyssabriggs
  Date: 1/17/20
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Listing:" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>

<section class="section9 hero-body is-fullheight">


<div class="container" id="update-ads-box">
    <div class="container checkbox-card transparent">
        <div id="opaque-create-ad">

    <h1 id="create-ad-header">Edit Your Ad</h1>
    <p class="text-danger">${sessionScope.error}</p>
    <form action="/ads/update" method="post">


<div id="center-text">
        <div class="form-group field" id="test">
            <label  class="label" for="update-title">Title</label>
        </div>
    <div class="control">
            <input id="update-title" name="title" class=" input form-control is-primary" value="${ad.title}" type="text">
        </div>

</div>


        <input type="hidden" name="id" value="${ad.id}">

        <div class="form-group field">
            <label class="label" for="update-description">Description</label>
            <div class="control">
            <textarea id="update-description" name="description" class="form-control textarea is-primary" placeholder="e.g. I'm looking for a nice, fluffy kitten that has blue eyes and a bushy tail." type="text">${ad.description} </textarea>
        </div>


        <%--            Category Checkbox--%>
        <p>Please select applicable categories</p>
        <div id="checkbox-create-ad">
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
        </div>
</div>

        <input type="submit" class="btn btn-block btn-primary button is-primary" id="update-ad-submit">
    </form>

        </div>
    </div>
</div>
</section>
</body>
</html>
