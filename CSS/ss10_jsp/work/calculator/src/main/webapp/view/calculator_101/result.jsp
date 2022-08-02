<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 28/07/2022
  Time: 8:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Simple service.CalculatorService</h1>


<form action="/calculator" method="post">
    <p>Operator:</p>
    <p>First Operand:</p> <input type="text" name="firstOperand"/>
    <select name="operator"/>
    <option value="addition">Addition</option>
    <option value="subtraction">Subtraction</option>
    <option value="multiplication">Multiplication</option>
    <option value="division">Division</option>
    </select>
<p>Second Operand:</p><input type="text" name="secondOperand"/>
<input type="submit">Enter</input>
</form>
<h1>Result: ${result}</h1>
<h1>${error}</h1>
</body>
</html>
