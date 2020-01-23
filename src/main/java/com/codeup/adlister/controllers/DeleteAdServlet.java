package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/ads/delete-ad")
public class DeleteAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String query = request.getQueryString();
        Long id = Long.valueOf(query.substring(3));
        DaoFactory.getAdsDao().delete(id);
        response.sendRedirect("/profile");

    }
}
