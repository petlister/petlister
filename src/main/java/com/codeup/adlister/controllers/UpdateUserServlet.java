package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "UpdateUserServlet", urlPatterns = "/update-user")
public class UpdateUserServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().getAttribute("user");
        request.getRequestDispatcher("WEB/INF/update-user.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        Long id = Long.valueOf(request.getParameter("id"));

        try {
            User user = new User(id, username, email, password);
            DaoFactory.getUsersDao().update(user);
            request.getSession().setAttribute("user", user);
        }catch (Exception e){

        }

        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            response.sendRedirect("/update-user");
            return;
        }

        User updatedUser = DaoFactory.getUsersDao().findByUsername(username);
        request.getSession().removeAttribute("user");
        request.getSession().setAttribute("user", updatedUser);
        response.sendRedirect("/profile");
    }
}
