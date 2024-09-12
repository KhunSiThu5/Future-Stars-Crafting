<%@page import="com.model.Article"%>
<%@page import="com.dao.ArticleDao"%>
<%@page import="com.dao.VideoDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.model.Video"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FUTURE STAR CRAFTING</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/ae360af17e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./CSS/style.css">
    <link rel="stylesheet" href="./CSS/form.css" />
    <link rel="stylesheet" href="./CSS/videoShow.css" />
    
</head>

<body>

<%
	VideoDao vidDao = new VideoDao();
	ArticleDao artDao = new ArticleDao();
	
	
	if(session.getAttribute("vidList") == null && session.getAttribute("artList") == null)
	{
		List<Video> vidList = vidDao.getAllVideo();
		session.setAttribute("vidList", vidList);
		session.setAttribute("mainVidList", vidList);
		
		List<Article> artList = artDao.getAllArticle();
		session.setAttribute("artList", artList);
		session.setAttribute("mainArtList", artList);
	} 
	
	
	List<Video> vidList = (List<Video>) session.getAttribute("vidList");
	
	List<Article> artList = (List<Article>) session.getAttribute("artList");
	
	
	
	
	
	
%>

	
       <div class="wrapper">

        <aside id="sidebar" class="js-sidebar ">
            <!-- Content For Sidebar -->
            <div class="h-100">

                <div class="sidebar-logo">
                    <a href="#">FUTURE STAR <br> CRAFTING</a>
                </div>

                <ul class="sidebar-nav">
                
                	<li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#posts" data-bs-toggle="collapse"
                            aria-expanded="false">
                            Age Group
                        </a>
                        <ul id="posts" class="sidebar-dropdown list-unstyled collapse ms-4" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link links">All</a> 
                 
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link links">3 to 5</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link links">6 to 9</a>
                            </li>
                        </ul>
                    </li>

                    <li class="sidebar-header">
                        PAGES
                    </li>

                    <li class="sidebar-item">
                        <a href="homePage.jsp" class="sidebar-link links">
                            <i class="fa-solid fa-house pe-2"></i>
                            Home Page
                        </a>
                    </li>
                    
                    
                    
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#posts" data-bs-toggle="collapse"
                            aria-expanded="false"><i class="fa-regular fa-circle-play pe-2"></i>
                            Video Page
                        </a>
                        <ul id="posts" class="sidebar-dropdown list-unstyled collapse ms-4" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="videoFilter?vidType=All" class="sidebar-link links">All</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="videoFilter?vidType=Education" class="sidebar-link links">Education</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="videoFilter?vidType=Music and Dance" class="sidebar-link links">Music and Dance</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="videoFilter?vidType=Sports" class="sidebar-link links">Sports</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="videoFilter?vidType=Animated Stories" class="sidebar-link links">Animated Stories</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="videoFilter?vidType=Arts and Crafts" class="sidebar-link links">Arts and Crafts</a>
                            </li>
                        </ul>
                    </li>

                    <li class="sidebar-item">
                        <a href="articlePage.jsp" class="sidebar-link links art-link">
                            <i class="fa-solid fa-book-open-reader pe-2"></i>
                            Article Page
                        </a>
                    </li>

                    <hr>

                    <li class="sidebar-header">
                        YOUR PROFILE
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#auth" data-bs-toggle="collapse"
                            aria-expanded="false"><i class="fa-regular fa-user pe-2"></i>
                            User Name
                        </a>
                        <ul id="auth" class="sidebar-dropdown list-unstyled collapse ms-4" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link links">Login</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link links">Register</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link links">Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </aside>