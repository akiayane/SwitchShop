<%@ page import="main.*" %><%--
  Created by IntelliJ IDEA.
  User: q
  Date: 20.10.2020
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>SwitchShop</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    HttpSession newSession = request.getSession();

    //gaterons------------------------------------------------------------------------------------------------------
    Switch gatBlue = new Gateron(0.85, 55, "Blue",
            "Clicky + Tactile", new Rate(7.84, 8.86,8.18));

    Switch gatBrown = new Gateron(0.85, 45, "Brown",
            "Tactile", new Rate(8.29, 8.55, 8.41 ));

    Switch gatRed = new Gateron(0.95, 45, "Red",
            "Linear", new Rate(8.82, 7.60, 8.38 ));

    Switch gatBlack = new Gateron(0.95, 50, "Black",
            "Linear", new Rate(7.72, 7.21, 7.39 ));

    Switch gatClear = new Gateron(0.95, 35, "Clear",
            "Linear", new Rate(8.69, 7.92, 8.17 ));


    //kailh---------------------------------------------------------------------------------------------------------
    Switch kalBlue = new Kailh(0.75, 50, "Blue",
            "Clicky + Tactile", new Rate(7.11, 7.20, 7.10));

    Switch kalBrown = new Kailh(0.75, 45, "Brown",
            "Tactile", new Rate(7.86, 7.36, 7.40));

    Switch kalBlack = new Kailh(0.75, 60, "Black",
            "Linear", new Rate(6.85, 5.82, 5.41));

    Switch kalRed = new Kailh(0.75, 50, "Red",
            "Linear", new Rate(6.50, 5.79, 5.89));


    //Outemu--------------------------------------------------------------------------------------------------------
    Switch outBlue = new Outemu(0.8, 60, "Blue",
            "Clicky + Tactile", new Rate(7.61, 8.31, 7.81));

    Switch outBrown = new Outemu(0.8, 55, "Brown",
            "Tactile", new Rate(7.76, 	8.27, 7.95));

    Switch outRed = new Outemu(0.8, 50, "Red",
            "Linear", new Rate(6.50, 5.79, 5.89));

    //Cherry--------------------------------------------------------------------------------------------------------
    Switch cherryRed = new Gateron(1, 45, "Red",
            "Linear", new Rate(8.77, 7.13,7.73));

    Switch cherryBlue = new Gateron(1, 55, "Blue",
            "Clicky + Tactile", new Rate(7.66, 8.92,8.14));

    Switch cherryBrown = new Gateron(1, 55, "Brown",
            "Tactile", new Rate(8.37, 8.31,8.44));

    Switch cherryBlack = new Gateron(1, 60, "Black",
            "Linear", new Rate(8.17, 6.71,7.23));

    Switch cherryGreen = new Gateron(1, 80, "Green",
            "Clicky + Tactile", new Rate(7.56, 7.79,7.27));

    Switch cherryClear = new Gateron(1, 65, "Clear",
            "Tactile", new Rate(8.26, 8.16,7.08));

    Switch cherrySilver = new Gateron(1, 45, "Silver",
            "Linear", new Rate(9.35, 7.26,8.16));


    //lists---------------------------------------------------------------------------------------------------------
    PreparedList gaterons = new PreparedList();
    gaterons.list.add(gatBlue);
    gaterons.list.add(gatBrown);
    gaterons.list.add(gatRed);
    gaterons.list.add(gatBlack);
    gaterons.list.add(gatClear);

    newSession.setAttribute("gaterons", gaterons);


    PreparedList kailhs = new PreparedList();
    kailhs.list.add(kalBlue);
    kailhs.list.add(kalBlack);
    kailhs.list.add(kalBrown);
    kailhs.list.add(kalRed);

    newSession.setAttribute("kailhs", kailhs);

    PreparedList outemus = new PreparedList();
    outemus.list.add(outBlue);
    outemus.list.add(outBrown);
    outemus.list.add(outRed);

    newSession.setAttribute("outemus", outemus);

    PreparedList cherries = new PreparedList();
    cherries.list.add(cherryRed);
    cherries.list.add(cherryBlue);
    cherries.list.add(cherryBlack);
    cherries.list.add(cherryBrown);
    cherries.list.add(cherrySilver);
    cherries.list.add(cherryClear);

    newSession.setAttribute("cherries", cherries);
    //------------------------------------------------------------------------------------------------------------------
    String logged= null;
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
                    <br />
                </c:when>
                <c:otherwise>
                    <span>Hello <c:out value="${loggedNew}"/></span>
                    <br />
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
<div class = "main" style="background-color: black">
    <div class="forinlinedivs">
        <div class="padWrap">
            <div class="block" style="background-color:white">
                <div class="centering" style=" height: 10vh; width: 20vw;">
                    <span>Gateron </span>
                </div>
                <div class="centering" style=" height: 25vh; width: 20vw;">
                    <img src="gateron.png" style="height:20vh;"/>
                </div>
                <div class="centering" style=" height: 23vh; width: 18vw; font-size: 1vw; padding: 1vw;">
                    <span> Gateron has dozens of switches available in its lineup including the
                        standard Red, Blue, Brown, Green, Black,
                        Yellow switches and their own unique Gateron Milk, Ink,
                        Low-Profile, and Silent switch designs.</span>
                </div>
                <div class="centering" style=" height: 13vh; width: 20vw; font-size: 1vw; padding: 0.5vw;">
                    Have a look to all <a class="underline" style="color: black" href="gateron.jsp">Gateron Switches!</a>
                </div>
            </div>
        </div>
        <div class="padWrap">
            <div class="block" style="background-color:white">
                <div class="centering" style=" height: 10vh; width: 20vw;">
                    <span>Kailh </span>
                </div>
                <div class="centering" style=" height: 25vh; width: 20vw;">
                    <img src="kailh.png" style="height:20vh;"/>
                </div>
                <div class="centering" style=" height: 23vh; width: 18vw; font-size: 1vw; padding: 1vw;">
                    <span> Excellent feel, long life, gold contacts, multiple feel options.</span>
                </div>
                <div class="centering" style="height: 13vh; width: 20vw; font-size: 1vw; padding: 0.5vw;">
                    Have a look to all <a class="underline" style="color: black" href="gateron.jsp">Kailh Switches!</a>
                </div>
            </div>
        </div>
        <div class="padWrap">
            <div class="block" style="background-color:white">
                <div class="centering" style=" height: 10vh; width: 20vw;">
                    <span>Cherry MX</span>
                </div>
                <div class="centering" style=" height: 25vh; width: 20vw;">
                    <img src="cherry.png" style="height:20vh;"/>
                </div>
                <div class="centering" style="height: 23vh; width: 18vw; font-size: 1vw; padding: 1vw;">
                    <span> With decades of experience CHERRY MX is the most trusted name in gaming regarding keyswitches.
                        MX switches provide levels of performance, durability and comfort, delivering the ultimate gaming experience.</span>
                </div>
                <div class="centering" style=" height: 13vh; width: 20vw; font-size: 1vw; padding: 0.5vw;">
                    Have a look to all <a class="underline" style="color: black" href="gateron.jsp">Cherry Switches!</a>
                </div>
            </div>
        </div>
        <div class="padWrap">
            <div class="block" style="background-color:white">
                <div class="centering" style=" height: 10vh; width: 20vw;">
                    <span>Outemu </span>
                </div>
                <div class="centering" style=" height: 25vh; width: 20vw;">
                    <img src="outemu.jpg" style="height:20vh;"/>
                </div>
                <div class="centering" style=" height: 23vh; width: 18vw; font-size: 1vw; padding: 1vw;">
                    <span> If you’re looking for a budget mechanical keyboard, getting one with Outemu
                        switches can be a great way to save on cost with a minimal tradeoff in performance.</span>
                </div>
                <div class="centering" style=" height: 13vh; width: 20vw; font-size: 1vw; padding: 0.5vw;">
                    Have a look to all <a class="underline" style="color: black" href="gateron.jsp">Outemu Switches!</a>
                </div>
            </div>
        </div>
    </div>

    <c:set var="loggedNew" value="${logged}"/>
    <c:choose>
        <c:when test="${logged == null}">

        </c:when>
        <c:otherwise>
            <%@ include file="cartDiv.jsp"%>
        </c:otherwise>
    </c:choose>

</div>
</body>
</html>

