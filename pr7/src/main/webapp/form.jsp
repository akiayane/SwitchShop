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

        <form action="form.php" method="post">
            Enter your login: <br>
            <input type="text" name="login"><br>
            Enter your password: <br>
            <input type="password" name="password"><br>
            <input type="submit" value="Log In"> <br>
            <a style="color:blue; text-decoration:underline;" href="reg.jsp"> Register </a>
        </form>
    </div>
</div>
</body>
</html>