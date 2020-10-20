<%--
  Created by IntelliJ IDEA.
  User: q
  Date: 20.10.2020
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Registration</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class = "center">
    <div class = "form">
        <form action="RegisterServlet" method="post">
            Enter preferred login: <br>
            <input type="text" name="login"><br>
            Enter preferred password: <br>
            <input type="password" name="password"><br>
            <input type="submit" value="Register"><br>
            <a style="color:blue; text-decoration:underline;" href="index.jsp" > Back </a>
            <br>
            <a style="color:blue; text-decoration:underline;" href="form.jsp">You already have an account?</a>
        </form>

    </div>
</div>

</body>
</html>