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

    <div class="checkbox-card">
    <div class="container checkbox-card transparent">
        <div id="opaque-create-ad">
        <form action="/ads/create" method="post">
        <h1 id="create-ad-header">Create a New Pet Listing</h1>

        <div class="field">
            <label class="label " for="title">Title</label>
            <div class="control">
                <input id="title" name="title"  class="input form-control is-primary" type="text" placeholder="e.g. In Search of a Fluffy Kitten">
            </div>
        </div>




            <div class="field">
                <label class="label" for="description">Description</label>
                <div class="control">
                    <textarea class="textarea is-primary" placeholder="e.g. I'm looking for a nice, fluffy kitten that has blue eyes and a bushy tail." id="description"></textarea>
                </div>
            </div>



            <p>Please select applicable categories</p>
<div id="checkbox-create-ad">

            <div class="form-check form-check-inline" >
                <input class="form-check-input checkbox styled is-primary" type="checkbox" name="categoryCheckbox" id="free" value="1">
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


         <%--<input type="submit" class="btn btn-block btn-primary">--%>
</div>
            <input type="submit" class="btn btn-block btn-primary button is-primary" id="create-ad-submit">
        </form>
    </div>


    </div>
    </div>
</section>

</body>
</html>
