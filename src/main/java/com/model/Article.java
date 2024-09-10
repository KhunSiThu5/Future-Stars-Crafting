package com.model;

public class Article {
	
	int articleId;
	String artTitle;
	String artAgeGroup;
	int artLike;
	String artFileType;
	String artImageType;

	public String getArtImageType() {
		return artImageType;
	}

	public void setArtImageType(String artImageType) {
		this.artImageType = artImageType;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public String getArtTitle() {
		return artTitle;
	}

	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}

	public String getArtAgeGroup() {
		return artAgeGroup;
	}

	public void setArtAgeGroup(String artAgeGroup) {
		this.artAgeGroup = artAgeGroup;
	}

	public int getArtLike() {
		return artLike;
	}

	public void setArtLike(int artLike) {
		this.artLike = artLike;
	}

	public String getArtFileType() {
		return artFileType;
	}

	public void setArtFileType(String artFileType) {
		this.artFileType = artFileType;
	}

	public Article() {
		
	}

}
