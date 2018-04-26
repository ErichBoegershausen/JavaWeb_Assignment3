package toba.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import toba.user.User;
import toba.data.UserDB;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
        String userName = request.getParameter("user");
        String passWord = request.getParameter("pass");
        String url = "/login_failure.html";
        String message = "";
        
        User user = UserDB.selectUser(userName);
        
        if (user != null) {
            if (passWord.equals(user.getPassword())) {
                url = "/account_activity.jsp";
            } else {
                url = "/login.jsp";
                message = "Incorrect password. Please try again";
            }
        } else {
            url = "/login.jsp";
            message = "User does not exist. Please register an account.";
        }
        
        request.setAttribute("message", message);
        
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
         
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
