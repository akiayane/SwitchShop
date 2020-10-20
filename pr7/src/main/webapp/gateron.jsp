<%@ page import="main.*" %><%--
  Created by IntelliJ IDEA.
  User: q
  Date: 21.10.2020
  Time: 03:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="swHeaders.jsp"%>

<%
    PreparedList list = (PreparedList) session.getAttribute("gaterons");

    for (Switch item: list.list) {
       String name = item.name;
       String manufacturer = "Gateron";
       String type = item.type;
       int opForce = item.opForce;
       double price = item.price;
       double gamerate = item.rate.gaming;
       double unirate = item.rate.universal;
       double typerate = item.rate.typing;

       out.print("<div class=\"padWrap\">\n" +
               "<div class=\"record\">\n" +
               "    <div class=\"forinlinedivs\">\n" +
               "        <div style=\"width: 30vw; height: 20vh\">\n" +
               "            <span style=\"font-size: 3vw; font-family: Monospaced\">");
       out.print(manufacturer + " " + name);
       out.print("</span><br>\n" +
               "            <span style=\"font-size: 1.5vw; font-family: monospace\">");
       out.print("Type:" + type);
       out.print("</span><br>\n" +
               "            <span style=\"font-size: 1.5vw; font-family: monospace\">");
       out.print("Operating Force: " +opForce+"cN");
       out.print("</span>\n" +
               "\n" +
               "        </div>\n" +
               "\n" +
               "        <div style=\"width: 20vw; height: 20vh\">\n" +
               "            <span style=\"font-size: 1.5vw; font-family: monospace\"> Gaming: ");
       out.print(gamerate);
       out.print("</span><br>\n" +
               "            <span style=\"font-size: 1.5vw; font-family: monospace\"> Typing: ");
       out.print(typerate);
       out.print("</span><br>\n" +
               "            <span style=\"font-size: 1.5vw; font-family: monospace\"> Universal: ");
       out.print(unirate);
       out.print("</span>\n" +
               "        </div>\n" +
               "\n" +
               "        <div style=\"width: 30vw; height: 20vh\">\n" +
               "            <span style=\"font-size: 2vw; font-family: sans-serif\">");
       out.print("Price (per switch): "+price);
       out.print(" </span><br>");
        if (request.getAttribute("logged") != null) {
            out.print("<form action = \"CartServlet\" method=\"post\">\n" +
                    "                    <input type=\"number\" name=\"quant\">\n" +
                    "                    <input style = \"display:none\" name=\"name\" value=\""+item.name+"\">\n" +
                    "                    <input type=\"submit\" value=\"Add to Cart\">\n" +
                    "                    </form>");

        }
        out.print("</div>\n" +
                "    </div>\n" +
                "</div>\n" +
                "</div>");
    }
%>
</body>
</html>
