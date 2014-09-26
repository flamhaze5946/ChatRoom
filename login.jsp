<%--
  Created by IntelliJ IDEA.
  User: zx
  Date: 2014/8/27
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta content="text/html" charset="utf-8" />
</head>
<body>
<form action="/ChatServlet" method="post" enctype="application/x-www-form-urlencoded">
    <input type="hidden" name="method" value="login">
    <table align="center">
        <tr>
            <td align="center">用户名:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td align="center">密码:</td><td><input type="password" name="password"></td>
        </tr>
        <tr align="center">
            <td colspan="3"><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
</body>
</html>
