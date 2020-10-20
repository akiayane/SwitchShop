package servlets;

import main.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String loginAfter = null;
        String passwordAfter = null;
        Cookie[] cookies = request.getCookies();

        if(cookies !=null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("login")) loginAfter = cookie.getValue();
            }
        }

        if(cookies !=null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("password")) passwordAfter = cookie.getValue();
            }
        }

        String login = request.getParameter("login");
        String password = request.getParameter("password");

        if(login.equals(loginAfter) && password.equals(passwordAfter)){

            Cookie loggedin = new Cookie("loggedin", login);
            loggedin.setMaxAge(30*60);
            response.addCookie(loggedin);
            HttpSession session = request.getSession();
            session.setMaxInactiveInterval(60);
            Cart cart = new Cart();
            session.setAttribute("cart", cart);
            response.sendRedirect("index.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
