package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

        if(login == loginAfter && password == passwordAfter){
            Cookie loggedin = new Cookie("loggedin", "true");
            loggedin.setMaxAge(30*60);
            response.addCookie(loggedin);
            response.sendRedirect("index.jsp");
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
