<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.member.*,java.util.*"%>
<jsp:useBean id="mdao" class="model.member.MemDAO" scope="application" />
<jsp:useBean id="mvo" class="model.member.MemVO" />
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<title>DASHMIN - Bootstrap Admin Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<div class="container-xxl position-relative bg-white d-flex p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- Sidebar Start -->
		<jsp:include page="common/adminSidebar.jsp" />
		<!-- Sidebar End -->


		<!-- Content Start -->
		<div class="content">
			<!-- Navbar Start -->
			<nav
				class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
				<a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
					<h2 class="text-primary mb-0">
						<i class="fa fa-hashtag"></i>
					</h2>
				</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
					class="fa fa-bars"></i>
				</a>
				<form class="d-none d-md-flex ms-4">
					<input class="form-control border-0" type="search"
						placeholder="Search">
				</form>
				<div class="navbar-nav align-items-center ms-auto">
					
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"> <i class="fa fa-bell me-lg-2"></i>
							<span class="d-none d-lg-inline-flex">Notifications</span>
						</a>
						<div
							class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
							<a href="#" class="dropdown-item">
								<h6 class="fw-normal mb-0">Profile updated</h6> <small>15
									minutes ago</small>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item">
								<h6 class="fw-normal mb-0">New user added</h6> <small>15
									minutes ago</small>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item">
								<h6 class="fw-normal mb-0">Password changed</h6> <small>15
									minutes ago</small>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item text-center">See all
								notifications</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"> <img
							class="rounded-circle me-lg-2" src="img/user.jpg" alt=""
							style="width: 40px; height: 40px;"> <span
							class="d-none d-lg-inline-flex">John Doe</span>
						</a>
						<div
							class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
							<a href="#" class="dropdown-item">My Profile</a> <a href="#"
								class="dropdown-item">Settings</a> <a href="#"
								class="dropdown-item">Log Out</a>
						</div>
					</div>
				</div>
			</nav>
			<!-- Navbar End -->


			<!-- Table Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4" width="100%">
					<div class="col-sm-15 col-xl-6">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">님의 상세정보</h6>
                            <div class="form-floating mb-3" width="50%">
                                <input type="text" class="form-control" id="floatingInput"
                                    placeholder="">
                                <label for="floatingInput">회원아이디</label>
                                
                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control" id="floatingPassword"
                                    placeholder="">
                                <label for="floatingPassword">비밀번호</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput"
                                    placeholder="">
                                <label for="floatingInput">회원이름</label>
                            </div><div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput"
                                    placeholder="">
                                <label for="floatingInput">회원등급</label>
                            </div><div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput"
                                    placeholder="">
                                <label for="floatingInput">회원포인트<label>
                            </div>
                        </div>
                    </div>
					</div>
	<!-- 
	private String memId;		// 회원 아이디(고유값)
	private String memPw;		// 회원 비밀번호
	private String memName;		// 회원 이름
	private String memEmail;	// 회원 이메일
	private int memRank;		// 회원 등급
	private int memPoint;		// 보유 포인트
	private String memPhone;	// 회원 전화번호
	private String memAddress;	// 회원 집주소
	private String memPic;		// 회원 사진(저장경로) 
	-->
	<!--  <%

   //ArrayList<MemVO> datas=new ArrayList<MemVO>();
  // mvo.setMemId("asdf");
  // mvo.setMemName("노준");
   //mvo.setMemEmail("이메일");
   //mvo.setMemEmail("");
   //mvo.setMemEmail("이메일");
   
   //datas.add(mvo);
 //  datas.add(mvo);
   
   //request.setAttribute("mem", datas);
  // pageContext.forward("MemberMain.jsp");
   
//%>-->
					<!-- Table End -->


					<!-- Footer Start -->
					<jsp:include page="common/adminFooter.jsp" />
					<!-- Footer End -->
				</div>
				<!-- Content End -->


				<!-- Back to Top -->
				<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
					class="bi bi-arrow-up"></i></a>
			</div>

			<!-- JavaScript Libraries -->
			<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
			<script src="lib/chart/chart.min.js"></script>
			<script src="lib/easing/easing.min.js"></script>
			<script src="lib/waypoints/waypoints.min.js"></script>
			<script src="lib/owlcarousel/owl.carousel.min.js"></script>
			<script src="lib/tempusdominus/js/moment.min.js"></script>
			<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
			<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

			<!-- Template Javascript -->
			<script src="js/main.js"></script>
</body>

</html>