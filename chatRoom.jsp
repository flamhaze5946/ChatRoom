<%--
  Created by IntelliJ IDEA.
  User: zx
  Date: 2014/8/27
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ChatRoom</title>
    <meta content="text/html" charset="utf-8" />
    <script src="<c:url value="jquery-2.1.1.js" />"></script>
    <script src="<c:url value="chat.js" />"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='style.css' />" />
</head>
<body>
chatRoom

<form>
    <table width="80%">
        <tr>
            <td>
                <label>
                        <textarea style="overflow:scroll; overflow-x: hidden" aria-multiline="true" id="chatSession" name="chatSession"></textarea>
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <label>
                    <textarea aria-multiline="false" id="chatInput"></textarea>
                </label>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
