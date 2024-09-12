<%@ include file="./Layout/sideBar.jsp"%>

<% 

String vidId = request.getParameter("vidId");

VideoDao dao = new VideoDao();

List<Video> vid = dao.getVideoById(vidId);

%>

<div class="main">

	<nav class="navBAR navbar px-3 border-bottom ">

		<div class="title-con">
			<button class="btn" id="sidebar-toggle" type="button">
				<i class="fa-solid fa-bars"></i>
			</button>

			<h2>Video</h2>
		</div>

		<form action="videoFilter" class="search-bar-con ms-3" method="get">
			<input name="searchText" placeholder="Search" type="text">
			<button>
				<i class="fa-solid fa-magnifying-glass"></i>
			</button>
		</form>

		<div class=" navbar">
			<ul class="navbar-nav">
				<li class="nav-item dropdown "><a href="#"
					data-bs-toggle="dropdown" class="nav-icon pe-md-0 proImg"> <img
						src="" class=" avatar img-fluid rounded" alt="">
				</a> <!-- <div class="dropdown-menu dropdown-menu-end">
                                <a href="#" class="dropdown-item">Profile</a>
                                <a href="#" class="dropdown-item">Setting</a>
                                <a href="#" class="dropdown-item">Logout</a>
                            </div> --></li>
			</ul>
		</div>
	</nav>

	<main class="content px-1 py-3">
		<div class="container-fluid vid-show-com">

			<div class="left">
				
				<div class="show-video">
					<video controls autoplay src="getVideoFile?videoId=<%=vidId%>"></video>
				</div>
				<h7><%=vid.get(0).getVideoType() %></h7>
				<div class="video-detail">

					<h4><%=vid.get(0).getVidTitle() %></h4>

					<div class="feature-btn">
						<span><a href="#"><i class="fa-solid fa-thumbs-up"></i></a><em><%=vid.get(0).getVidLike() %></em></span>
						<span><em><%=vid.get(0).getVidView() %></em> view</span>
					</div>
				</div>

				<div class="save-down">
					<a href="#"><i class="fa-solid fa-bookmark"></i> save</a>
					 <a download href="getVideoFile?videoId=<%=vidId%>"><i class="fa-solid fa-download"></i> download</a>
				</div>

				<hr>

				<div class="user-comment">
					<div class="user-pro-img">
						<img src="./IMAGE/profile.jpg" alt="">
					</div>
					<input type="text"> <a href="#">Comment</a>

				</div>

				<div class="comment-con">
					<h5>Comments</h5>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>

			</div>

			<ul class="right">
				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>

				<li>
					<div class="vidCon">
						<img src="/img/Screenshot 2024-09-10 135031.png" alt="">
					</div>
					<h6>Kids vocabulary - World food - Learn English for kids -
						English educational video</h6> <a href="#"><i
						class="fa-regular fa-circle-play" style="color: #74C0FC;"></i></a>
				</li>
			</ul>

		</div>
	</main>
	<%@ include file="./Layout/footer.jsp"%>