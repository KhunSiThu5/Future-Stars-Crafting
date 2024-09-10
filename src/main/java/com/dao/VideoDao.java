package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Video;

public class VideoDao {
	
	public List<Video> getAllVideo () throws ClassNotFoundException, SQLException {
		
		List<Video> list = new ArrayList<Video>();
		
		MyConnection conobj = new MyConnection();
		Connection con = conobj.getConnection();
		
		 PreparedStatement pstm = con.prepareStatement("select * from videos");
		 
		 ResultSet rs = pstm.executeQuery();
		 
		 while(rs.next())
		 {
			 Video v = new Video();
			 
			 v.setVideoId(rs.getInt(1));
			 v.setVideoType(rs.getString(2));
			 v.setVidLength(rs.getString(3));
			 v.setVidLike(rs.getInt(4));
			 v.setVidView(rs.getInt(5));
			 v.setAgeGroup(rs.getString(6));
			 v.setVidFileType(rs.getString(8));
			 v.setVidTitle(rs.getString(9));
			 
			 list.add(v);
		 }
		 
		 
		return list;
	}
	
	

}
