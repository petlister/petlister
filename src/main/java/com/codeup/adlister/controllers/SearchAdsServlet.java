package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "SearchAdsServlet", urlPatterns = "/ads/search")
public class SearchAdsServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,
            ServletException {

        String searchKeyword = request.getParameter("search-bar");
        request.setAttribute("ads", DaoFactory.getAdsDao().searchedAds(searchKeyword));

        System.out.println("searchTerm = " + searchKeyword);
        System.out.println("Ads servlet doGet has been ran");

        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request,response);
    }
}
