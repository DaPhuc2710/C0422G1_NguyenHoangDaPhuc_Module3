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
<h1>Simple model.Calculator</h1>
<p>First Operand: <input type="text" name="firstOperand"/></p>
<p>Operator:
    <select name="operator"/>
    <option value="addition">Addition</option>
    <option value="subtraction">Subtraction</option>
    <option value="multiplication">Multiplication</option>
    <option value="division">Division</option>
    </select>
</p>
<p>Second Operand:<input type="text" name="secondOperand"/></p>
<button type="submit">Enter</button>
<h1>Result: ${result}</h1>
</body>
</html>
