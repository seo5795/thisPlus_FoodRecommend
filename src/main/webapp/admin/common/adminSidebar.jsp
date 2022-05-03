
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="main.did" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>오늘의메뉴</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="../img/testmonial/profile02.png" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">오늘의메뉴</h6>
                        <span>관리자</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    
                    <a href="adminrestaurant.did" class="nav-item nav-link" ><i class="fa fa-th me-2"></i>식당페이지</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>공지사항</a>
                        <div class="dropdown-menu bg-transparent border-0">
                        <a href="adminnotice.did" class="dropdown-item" target="_blank">공지사항 전체</a>
                            <a href="AdminNoticeInsert.jsp" class="dropdown-item">공지사항 등록</a>

                        </div>
                    </div>
                    <a href="adminmember.did" class="nav-item nav-link"><i class="fa fa-table me-2"></i>회원페이지</a>
                   
                </div>
            </nav>
        </div>

</body>
</html>