package servlets;

import main.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int quant= Integer.parseInt(request.getParameter("quant"));
        HttpSession session = request.getSession();
        //add all list with different switches
        PreparedList greatList = (PreparedList) session.getAttribute("gaterons");

        Switch sw = greatList.list.get(1);
        for(Switch item : greatList.list){
            if(item.name.equals(name)){
                sw = item;
            }
        }

        Cart cart = (Cart) session.getAttribute("cart"); //have to create cart in login
        cart.addOrder(sw, quant);
        session.setAttribute("cart", cart);

        request.getRequestDispatcher("/").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
