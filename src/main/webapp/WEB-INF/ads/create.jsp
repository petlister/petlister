<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

</head>
<body>
<section class="section5 hero-body is-fullheight">
    <div class="container">
        <form action="/ads/create" method="post">
        <h1>Create a new Pet Listing</h1>
        <div class="field">
            <label class="label" for="title">Title</label>
            <div class="control">
                <input id="title" name="title"  class="input form-control" type="text" placeholder="Text input">
            </div>
        </div>




            <div class="field">
                <label class="label" for="description">Description</label>
                <div class="control">
                    <textarea class="textarea" placeholder="Textarea" id="description"></textarea>
                </div>
            </div>



            <p>Please select applicable categories</p>
            <div class="form-check form-check-inline">
                <input class="form-check-input checkbox styled" type="checkbox" name="categoryCheckbox" id="free" value="1">
                <label class="form-check-label checkbox" for="free">free</label>
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
</section>
</body>
</html>
