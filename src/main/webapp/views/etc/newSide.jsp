<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Cocean</title> 
<!-- icon-->

<link rel="icon" href="<c:url value='/resource/img/favi.png'/>"
	type="image/x-icon">
<!-- Custom styles template-->
<link href="<c:url value='/resource/css/sb-admin-2.css'/>" rel="stylesheet">
<!-- sweetalert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- icon CDN-->
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.1.0/uicons-solid-rounded/css/uicons-solid-rounded.css'>  
</head>


<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- 사이드바 영역 -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- 사이드바 로고-->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value='/home'/>">
                <div class="sidebar-brand-icon">                
                    <img src="<c:url value='/resource/img/cocean2.png'/>" style="width: 50px;"/>
                </div>
                <div class="sidebar-brand-text mx-3">Cocean</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">


            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Menu
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/animal/list.go'/>">
                    <i class="fi fi-sr-dolphin"></i>
                    <span>코션친구들</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/tank/list.go'/>">
                    <i class="fi fi-sr-house-flood"></i>
                    <span>코션하우스</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="fi fi-sr-chart-pie-alt"></i>
                    <span>통계</span></a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fi fi-sr-bullhorn"></i>
                    <span>스토어 관리</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!--<h6 class="collapse-header">Custom Utilities:</h6> -->
                        <a class="collapse-item" href='<c:url value="/store/storeList.go"/>'>지점 관리</a>
                        <a class="collapse-item" href="#">상품 관리</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fi fi-sr-clipboard-user"></i>
                    <span>인사 관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href='<c:url value="/personnel/orgManage.go"/>'>조직 관리</a>
                        <a class="collapse-item" href='<c:url value="/personnel/personnelList.go"/>'>사원 관리</a>
                        <a class="collapse-item" href='<c:url value="/personnel/annualManage.go"/>'>연차 관리</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/facility/facility.go"/>'>
                    <i class="fi fi-sr-hammer-crash"></i>
                    <span>시설 관리</span></a>
            </li>


            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree"
                    aria-expanded="true" aria-controls="collapseThree">
                    <i class="fi fi-sr-assept-document"></i>
                    <span>전자결재</span>
                </a>
                <div id="collapseThree" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href='<c:url value="/approval/formList.go"/>' >결재문서작성</a>
                        <a class="collapse-item" href='<c:url value="/approval/waitingList.go"/>'>결재대기함</a>
                        <a class="collapse-item" href='<c:url value="/approval/refList.go"/>'>참조/열람함</a>
                        <a class="collapse-item" href='<c:url value="/approval/myDraftList.go"/>'>나의 기안함</a>
                        <a class="collapse-item" href='<c:url value="/approval/completeList.go"/>'>완료함</a>
                        <a class="collapse-item" href='<c:url value="/approval/department.go"/>'>부서함</a>
                        <a class="collapse-item" href='<c:url value="/approval/tempSaveList.go"/>' >임시저장함</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#board"
                    aria-expanded="true" aria-controls="board">
                    <i class="fi fi-sr-flag-alt"></i>
                    <span>게시판</span>
                </a>
                <div id="board" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="#">공지사항</a>
                        <a class="collapse-item" href="#">익명게시판</a>
                        <a class="collapse-item" href="#">부서게시판</a>
                        <a class="collapse-item" href="#">프로그램 일정</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">



            <!-- 사이드바 공통메뉴  -->
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/schedule/schedule.go"/>'>
                    <i class="fi fi-sr-calendar-pen"></i>
                    <span>캘린더</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="fi fi-sr-gift"></i>
                    <span>복지몰</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- 사이드바 토글 (작게) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


        </ul>
        <!-- 여기까지 사이드바 -->
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>


                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">



                        <!-- 상단바 알림 -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- 알림 뱃지- Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- 알림 드롭다운 -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    알림
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">알림 발생 날짜</div>
                                        알림 내용
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">알림 발생 날짜</div>
                                        알림 내용
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">모두 읽기</a>
                            </div>
                        </li>

                        <!-- 알림/유저 아이콘 선-->
                        
                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">사용자</span>
                                <img class="img-profile rounded-circle"
                                    src="<c:url value='/resource/img/undraw_profile.svg'/>"/>
                                    
                                    
                                    
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="<c:url value='/mypage/mypage'/>">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    내정보
                                </a>
                                <a class="dropdown-item" href="<c:url value='/mypage/work'/>">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    주소록
                                </a>
                                <a class="dropdown-item" href="<c:url value='/mypage/address'/>">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    근태기록
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    로그아웃
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- 여기까지 TopBar -->
                <!-- 메인 콘텐츠 영역 -->
                <div class="container-fluid">
				
		
     
                    </div>
            </div>
            <!-- 여기까지 콘텐츠 영역-->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Cocean &copy; since 2023</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- 여기까지 사이드/상단바 -->

    <!-- 페이지 상단 이동버튼-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

<script src="<c:url value='/resource/vendor/jquery/jquery.min.js'/>"></script>
<script	src="<c:url value='/resource/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<script src="<c:url value='/resource/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
<script src="<c:url value='/resource/js/sb-admin-2.min.js'/>"></script>
</body>
<script>


</script>

</html>