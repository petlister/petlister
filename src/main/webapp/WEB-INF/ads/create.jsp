<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>

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
</body>
</html>
