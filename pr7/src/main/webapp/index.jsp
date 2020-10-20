<%--
  Created by IntelliJ IDEA.
  User: q
  Date: 20.10.2020
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>SwitchShop</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class = "header">
    <div class="forinlinedivs">
        <div style="width:15vw; height:14vh">
            <img src="keyboard.svg" style="height:10vh; width:12vw; padding-top:1vw; padding-left:1vw" />
        </div>

        <div class = "deviz">
            <span>Best Mechanical Keyboard Switches for you!</span>
        </div>

        <div style="width:15vw; height:14vh"> </div>

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

            <a href="reg.jsp" target="_blank">Registration</a>

        </div>
    </div>
</div>
<div class = "main">
    <div class="forinlinedivs">
        <div class="padWrap">
            <div class="block" style="background-color:#eb71a1">

            </div>
        </div>
        <div class="padWrap">
            <div class="block" style="background-color:#71ebb4">

            </div>
        </div>
        <div class="padWrap">
            <div class="block" style="background-color:#d3eb71">

            </div>
        </div>
        <div class="padWrap">
            <div class="block" style="background-color:#7171eb">

            </div>
        </div>
    </div>


    <%@ include file="cartDiv.jsp"%>

</div>
</body>
</html>

