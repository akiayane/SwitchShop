<%--
  Created by IntelliJ IDEA.
  User: q
  Date: 21.10.2020
  Time: 03:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>SwitchShop</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <% String logged= null;
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("loggedin")) logged= cookie.getValue();
        }
    }

    request.setAttribute("logged", logged);
    %>
<div class = "header">
    <div class="forinlinedivs">
        <div style="width:15vw; height:14vh">
            <img src="keyboard.svg" style="height:10vh; width:12vw; padding-top:1vw; padding-left:1vw" />
        </div>

        <div class = "deviz">
            <span>Best Mechanical Keyboard Switches for you!</span>
        </div>

        <div style="width:5vw; height:14vh"> </div>

        <div class = "headdivs">
            <a href="index.jsp" target="_blank">Home</a>
        </div>
        <div class = "headdivs">
            <a href="about.jsp" target="_blank">About Us</a>
        </div>
        <div class = "headdivs">
            <a href="external.jsp" target="_blank">Keyboards</a>
        </div>
        <div class = "headdivs">
            <c:set var="loggedNew" value="${logged}"/>
            <c:choose>
                <c:when test="${logged == null}">
                    <a href="reg.jsp" target="_blank">Registration</a>
                    <br/>
                </c:when>
                <c:otherwise>
                    <span>Hello <c:out value="${loggedNew}"/></span>
                    <br/>
                </c:otherwise>
            </c:choose>

        </div>

        <c:set var="loggedNew" value="${logged}"/>
        <c:choose>
            <c:when test="${logged == null}">

            </c:when>
            <c:otherwise>
                <div class = "headdivs">
                    <form action="LogoutServlet" method="post">
                        <input class = "as" type="submit" value="Logout" >
                    </form>
                </div>
            </c:otherwise>
        </c:choose>

    </div>
</div>
