<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/Admin/components/head.jsp">
    <jsp:param name="update_product" value="update_product"/>
</jsp:include>
<body>
<div class="wrapper">
    <jsp:include page="/Admin/components/sidebar.jsp"/>
    <div class="main">
        <jsp:include page="/Admin/components/navbar.jsp"/>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Basic form</h5>
                        <h6 class="card-subtitle text-muted">Default Bootstrap form layout.</h6>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="mb-3">
                                <label class="form-label" style="color: #0c85d0">Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Name">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" style="color: #0c85d0">categoryID</label>
                                <input type="email" name="categoryID" class="form-control" placeholder="categoryID">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" style="color: #0c85d0">description</label>
                                <input type="number" name="description " class="form-control" placeholder="description">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" style="color: #0c85d0">detail</label>
                                <input type="number" name="detail " class="form-control" placeholder="detail">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" style="color: #0c85d0">thumbnails</label>
                                <input type="number" name="thumbnails " class="form-control" placeholder="thumbnails">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" style="color: #0c85d0">price</label>
                                <input type="number" name="price " class="form-control" placeholder="price">
                            </div>
                            <%--                            <div class="mb-3">--%>
                            <%--                                <label class="form-label w-100">File input</label>--%>
                            <%--                                <input type="file">--%>
                            <%--                                <small class="form-text text-muted">Example block-level help text here.</small>--%>
                            <%--                            </div>--%>
                            <%--                            <div class="mb-3">--%>
                            <%--                                <label class="form-check m-0">--%>
                            <%--                                    <input type="checkbox" class="form-check-input">--%>
                            <%--                                    <span class="form-check-label">Check me out</span>--%>
                            <%--                                </label>--%>
                            <%--                            </div>--%>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="/Admin/components/footer.jsp"/>
        <jsp:include page="/Admin/components/scripts.jsp"/>
    </div>
</div>
</body>
</html>