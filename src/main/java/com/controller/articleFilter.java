package com.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.model.Article;

public class articleFilter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public articleFilter() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		List<Article> mainArtList = (List<Article>) session.getAttribute("mainArtList");
		
		//Search Bar Filter
		
		String searchText = request.getParameter("searchText");
		
		if(searchText != null)
		{
			List<Article> art = new ArrayList<Article>();
			
			for(Article a : mainArtList) {
				if(a.getArtTitle() != null)
				{
					if(a.getArtTitle().toLowerCase().contains(searchText.toLowerCase())) {
						art.add(a);
					}
				}
			}
			
			session.setAttribute("artList", art);
			response.sendRedirect("articlePage.jsp");
		}
	}



}
