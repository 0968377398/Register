<%--
  Created by IntelliJ IDEA.
  User: Dinh Viet Hoang
  Date: 6/7/2022
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Login Form</h1>
    <form action="/login" method="post">
        <div>
            Username <input type="text" name="username">
        </div>
        <div>
            Password <input type="password" name="password">
        </div>
        <div>
            <input type="submit" value="Login">
            <input type="reset" value="Reset">
        </div>
    </form>
</body>
</html>
