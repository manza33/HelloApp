<%--
  Created by IntelliJ IDEA.
  User: laetitia
  Date: 12/07/19
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.*,java.util.*" session="false"%>
<html>
<head>
    <title>Hello Form!</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <form action="simple-hello" method="post">
            <label for = "firstname">Prénom:</label>
            *<br>
            <input type="text" name="firstname" value="" id="firstname">
            <br>
            <label for = "name">Nom:</label>
            <input type="text" name="lastname" value="" id="name">
            <br><br>
            Heure :
            <%
                DateFormat formatDate = new SimpleDateFormat("HH'h'mm");
                String heure = formatDate.format(new Date());
                out.println(heure);
            %>
            <input type="hidden" name="heure" value="<% out.println(heure);%>"/>
            <br><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
