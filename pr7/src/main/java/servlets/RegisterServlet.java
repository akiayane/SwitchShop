package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // get request parameters for userID and password
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        Cookie loginCookie = new Cookie("login", login);
        Cookie passwordCookie = new Cookie("password", password);

        loginCookie.setMaxAge(30*60);
        passwordCookie.setMaxAge(30*60);

        response.addCookie(loginCookie);
        response.addCookie(passwordCookie);

        response.sendRedirect("form.jsp");

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
