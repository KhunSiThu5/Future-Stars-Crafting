<%@ include file="./Layout/sideBar.jsp" %>

        <div class="main">

            <nav class="navBAR navbar px-3 border-bottom ">
                
                <div class="title-con">
                    <button class="btn" id="sidebar-toggle" type="button">
                        <i class="fa-solid fa-bars"></i>
                    </button>
    
                    <h2>Home</h2>
                </div>

                <form action="" class="search-bar-con ms-3" method="post">
                    <input placeholder="Search" type="text">
                    <button><i class="fa-solid fa-magnifying-glass"></i></i></button>
                </form>

                <div class=" navbar">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a href="#" data-bs-toggle="dropdown" class="nav-icon pe-md-0">
                                <img src="" class="avatar img-fluid rounded" alt="">
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
                    
                    
                   
                </div>
            </main>

            <!-- <a href="#" class="theme-toggle">
                <i class="fa-regular fa-moon"></i>
                <i class="fa-regular fa-sun"></i>
            </a> -->

            
        </div>
        
    </div>
    

    
<%@ include file="./Layout/footer.jsp" %>