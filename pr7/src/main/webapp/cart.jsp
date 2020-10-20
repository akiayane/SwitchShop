<%@ page import="main.*" %>
<%@ page import="main.Order" %><%--
  Created by IntelliJ IDEA.
  User: q
  Date: 21.10.2020
  Time: 05:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="swHeaders.jsp"%>
<%
    Cart cart = (Cart)session.getAttribute("cart");
    out.print(cart.getAllOrders());
    out.print(cart.getTotal());
%>

</body>
</html>
