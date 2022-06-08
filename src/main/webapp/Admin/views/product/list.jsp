<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/Admin/components/head.jsp">
    <jsp:param name="list_product" value="list_product"/>
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
                        <h5 class="card-title" >Contextual Classes</h5>
                        <h6 class="card-subtitle text-muted">Use contextual classes to color table rows or individual cells.</h6>
                    </div>
                    <table class="table">
                        <thead>
                        <tr>
                            <th style="width:30%; color: #0c85d0; ">Name</th>
                            <th style="width:25%; color: #0c85d0">Email</th>
                            <th style="width:25%; color: #0c85d0">Phone Number</th>
                            <th style="color: #0c85d0">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Vanessa Tucker</td>
                            <td>864-348-0485</td>
                            <td class="d-none d-md-table-cell">June 21, 1961</td>
                            <td class="table-action">
                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                            </td>
                        </tr>
                        <tr class="table-primary">
                            <td>William Harris</td>
                            <td>914-939-2458</td>
                            <td class="d-none d-md-table-cell">May 15, 1948</td>
                            <td class="table-action">
                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>Sharon Lessman</td>
                            <td>704-993-5435</td>
                            <td class="d-none d-md-table-cell">September 14, 1965</td>
                            <td class="table-action">
                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                            </td>
                        </tr>
                        <tr class="table-success">
                            <td>Christina Mason</td>
                            <td>765-382-8195</td>
                            <td class="d-none d-md-table-cell">April 2, 1971</td>
                            <td class="table-action">
                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>Robin Schneiders</td>
                            <td>202-672-1407</td>
                            <td class="d-none d-md-table-cell">October 12, 1966</td>
                            <td class="table-action">
                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <jsp:include page="/Admin/components/footer.jsp"/>
        <jsp:include page="/Admin/components/scripts.jsp"/>
    </div>
</div>
</body>
</html>
