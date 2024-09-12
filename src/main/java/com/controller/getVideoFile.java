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

public class getVideoFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public getVideoFile() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String videoId = request.getParameter("videoId");
		
		MyConnection conobj = new MyConnection();
		try {
			Connection con = conobj.getConnection();
			PreparedStatement pstm = con.prepareStatement("select videoFile,videoFileType from videos where videoId = ?");
			
			pstm.setInt(1, Integer.parseInt(videoId));
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
