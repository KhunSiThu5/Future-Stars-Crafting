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

import com.model.Video;


public class videoFilter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public videoFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		//Video Type Filters
		
		
		List<Video> mainVidList = (List<Video>) session.getAttribute("mainVidList");
		
	
		if(request.getParameter("vidType")!=null)
		{
			String vidType = request.getParameter("vidType");
			if(vidType.equals("All"))
			{
				session.setAttribute("vidList", mainVidList);
				response.sendRedirect("videoPage.jsp");
			} else {
				
				List<Video> vid = new ArrayList<Video>();
				
				for(Video v : mainVidList) {
					if(vidType.equals(v.getVideoType()))
					{
						vid.add(v);
					}
				}
				
				session.setAttribute("vidList", vid);
				response.sendRedirect("videoPage.jsp");
				
			}
		}
		
		//Search Bar Filter 
		
		String searchText = request.getParameter("searchText");
		
		if(searchText != null)
		{
			List<Video> vid = new ArrayList<Video>();
			
			for(Video v : mainVidList) {
				if(v.getVidTitle()!=null)
				{
					if(v.getVidTitle().toLowerCase().contains(searchText.toLowerCase()))
					{
						vid.add(v);
					}
				}
			}
			
			session.setAttribute("vidList", vid);
			response.sendRedirect("videoPage.jsp");
		}
	}

}
