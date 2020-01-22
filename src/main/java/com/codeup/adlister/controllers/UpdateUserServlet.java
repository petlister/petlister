package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "UpdateUserServlet", urlPatterns = "/update")
public class UpdateUserServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().getAttribute("user");
        request.getRequestDispatcher("/WEB-INF/users/update.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        long longId = Long.parseLong(request.getParameter("id"));

        if (request.getParameter("username") != null && request.getParameter("email") != null && request.getParameterValues("password") != null) {

            User user = new User(
                    longId,
                    request.getParameter("username"),
                    request.getParameter("email"),
                    request.getParameter("password")
            );

            DaoFactory.getUsersDao().update(user);
            User updatedUser = DaoFactory.getUsersDao().findUserById(longId);
            request.getSession().setAttribute("user", updatedUser);
            response.sendRedirect("/profile");
            request.getSession().setAttribute("error", null);

        } else {
            request.getSession().setAttribute("error", "Please fill in all of the fields required");
            response.sendRedirect("/update");
        }
    }
}