<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/Admin/components/head.jsp">
    <jsp:param name="Shopingcart" value="Shoping-cart"/>
</jsp:include>
<body>
<div class="wrapper">
    <jsp:include page="/Admin/components/sidebar.jsp"/>
    <div class="main">
        <jsp:include page="/Admin/components/navbar.jsp"/>
        <div class="row">
        </div>
        <jsp:include page="/Admin/components/footer.jsp"/>
        <jsp:include page="/Admin/components/scripts.jsp"/>
    </div>
</div>
</body>
</html>
