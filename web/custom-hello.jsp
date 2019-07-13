<%--
  Created by IntelliJ IDEA.
  User: laetitia
  Date: 13/07/19
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Custom Hello!</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <p>
        <%
            String messageGet = (String) request.getAttribute("message");
            out.println( messageGet );
        %>
        </p>
        <img src="https://media.istockphoto.com/vectors/cute-unicorn-set-vector-id689528500" width="280px" alt="">
    </div>
</body>
</html>
