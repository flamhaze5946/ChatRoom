<%@ page import="mysqlutils.ConnectionsPool" %>
<%@ page import="mysqlutils.GetConnection" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: zx
  Date: 2014/8/27
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String username;
    String password;
    String sql;
    ConnectionsPool connectionsPool;
    Connection connection;
    PreparedStatement preparedStatement;
    ResultSet resultSet;
%>
<%
    username = request.getParameter("username");
    password = request.getParameter("password");
    try
    {
        connectionsPool = new ConnectionsPool("jdbc:mysql://localhost:3306/javaTest", "root", "sora", GetConnection.databaseType.MYSQL, 5);
        connection = connectionsPool.getConnection();
        sql = "select count(*) from users where username like ? and password like ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, username);
        preparedStatement.setString(2, password);
        resultSet = preparedStatement.executeQuery();
        System.out.println(username);
        System.out.println(password);
        resultSet.next();
        if (resultSet.getInt(1) == 1)
        {
            request.getRequestDispatcher("chatRoom.jsp").forward(request, response);
        }
        else
        {
            %>
            <script type="text/javascript" charset="utf-8">
                alert("Error username or password.");
            </script>
            <%
            response.sendRedirect("login.jsp");
        }
    }
    catch (Exception ex)
    {
        ex.printStackTrace();
    }

%>
<html>
<head>
    <title></title>
</head>
<body>
</body>
</html>
