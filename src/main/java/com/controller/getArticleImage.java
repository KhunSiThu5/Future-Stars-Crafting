package com.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.MyConnection;

public class getArticleImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public getArticleImage() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String articleId = request.getParameter("articleId");
		
		MyConnection conobj = new MyConnection();
		
		try {
			
			Connection con = conobj.getConnection();
			PreparedStatement pstm = con.prepareStatement("select artImage,artImageType from articles where articleId = ?");
			
			pstm.setInt(1, Integer.parseInt(articleId));
			ResultSet rs = pstm.executeQuery();
			
			if(rs.next()) {
				response.setContentType(rs.getString(2));
				OutputStream out = response.getOutputStream();
				
				out.write(rs.getBytes(1));
				out.close();
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
