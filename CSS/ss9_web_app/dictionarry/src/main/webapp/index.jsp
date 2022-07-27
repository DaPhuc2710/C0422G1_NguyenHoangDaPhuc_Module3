<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 27/07/2022
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Simple Dictionary</title>
  </head>
  <body>
<h1>Vietnamese Dictionary</h1>
  <form method="post" action="/dictionary">
    <input type="text" name="txtSearch" placeholder="Enter your word">
    <input type="submit" id="submit" value="Search">
  </form>


  </body>
</html>
