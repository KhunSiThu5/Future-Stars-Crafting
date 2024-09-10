package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Article;

public class ArticleDao {

	public List<Article> getAllArticle() throws ClassNotFoundException, SQLException {
		List<Article> artList = new ArrayList<Article>();
		
		MyConnection conobj = new MyConnection();
		Connection con = conobj.getConnection();
		
		PreparedStatement pstm = con.prepareStatement("select * from articles");
		
		ResultSet rs = pstm.executeQuery();
		
		while(rs.next())
		{
			Article a = new Article();
			
			a.setArticleId(rs.getInt(1));
			a.setArtTitle(rs.getString(2));
			a.setArtAgeGroup(rs.getString(3));
			a.setArtLike(rs.getInt(4));
			a.setArtFileType(rs.getString(6));
			a.setArtImageType(rs.getString(8));
			
			artList.add(a);
		}
		
		return artList;
		
	}
}
