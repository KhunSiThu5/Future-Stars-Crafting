<%@ include file="./Layout/sideBar.jsp" %>

        <div class="main">

            <nav class="navBAR navbar px-3 border-bottom ">
                
                <div class="title-con">
                    <button class="btn" id="sidebar-toggle" type="button">
                        <i class="fa-solid fa-bars"></i>
                    </button>
    
                    <h2>Article</h2>
                </div>

               <form action="articleFilter" class="search-bar-con ms-3" method="get">
                    <input name="searchText" placeholder="Search" type="text">
                    <button><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>

                <div class=" navbar">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a href="#" data-bs-toggle="dropdown" class="nav-icon pe-md-0">
                                <img src="image/profile.jpg" class="avatar img-fluid rounded" alt="">
                            </a>
                            <!-- <div class="dropdown-menu dropdown-menu-end">
                                <a href="#" class="dropdown-item">Profile</a>
                                <a href="#" class="dropdown-item">Setting</a>
                                <a href="#" class="dropdown-item">Logout</a>
                            </div> -->
                        </li>
                    </ul>
                </div>
            </nav>

            <main class="content px-3 py-2">
                <div class="container-fluid box-container">
                
                <% 
                
                for(Article a : artList)
                {
                
                %>

                    <div class="box">

                        <div class="vid-con">
                            <a href="#"><i class="fa-solid fa-file-pdf "></i></a>
                            <img src="getArticleImage?articleId=<%=a.getArticleId() %>" alt="">
                        </div>

                        <div class="vid-det">
                            <h4><%=a.getArtTitle() %></h4>
                            <div class="vid-btns">
                                <button>
                                    <a href="#"><i class="fa-solid fa-thumbs-up"></i></a> <span><%=a.getArtLike() %></span>
                                </button>
                                <span>600 view</span>
                            </div>
                        </div>

                    </div>
                   
                  <% } %>
                   
                </div>
            </main>

            <!-- <a href="#" class="theme-toggle">
                <i class="fa-regular fa-moon"></i>
                <i class="fa-regular fa-sun"></i>
            </a> -->

            
        </div>
    </div>

<%@ include file="./Layout/footer.jsp" %>
