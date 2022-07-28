<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 27/07/2022
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>

  </head>
  <body>
<h1>Currency Converter</h1>
  <form action="/convert" method="post">
    <label> Rate:</label> <br>
    <input type="text" name="rate" placeholder="Rate" value="22000"/><br>
    <label> USD:</label> <br>
    <input type="text" name="usd" placeholder="USD" value="0"/><br>
    <input type="submit" value="Converter"/>
  </form>
  </body>
</html>
