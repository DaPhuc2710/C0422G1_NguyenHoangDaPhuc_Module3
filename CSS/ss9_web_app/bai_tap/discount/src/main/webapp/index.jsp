<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 27/07/2022
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
<h1> Product Discount Calculator</h1>
  <form action="/display-discount" method="post">
    <p>Product Description</p>
    <input type="text" name="ProductDescription" placeholder="Enter your product">
    <p>List Price</p>
    <input type="text" name="ListPrice" placeholder="Enter your price">
    <p>Discount Percent</p>
    <input type="text" name="DiscountPercent" placeholder="Enter your percent">
    <button type="submit"/>Calculate Discount</button>
  </form>
  </body>
</html>
