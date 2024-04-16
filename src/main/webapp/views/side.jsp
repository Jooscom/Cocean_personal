<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Cocean</title> 


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- icon-->
<link	href="<c:url value='/resource/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">


<link rel="icon" href="<c:url value='/resource/img/favi.png'/>" type="image/x-icon">
<!-- Custom styles template-->
<link href="<c:url value='/resource/css/sb-admin-2.css'/>" rel="stylesheet">
<!-- sweetalert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- icon CDN-->
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.1.0/uicons-solid-rounded/css/uicons-solid-rounded.css'>  
</head>

<style>
	#accordionSidebar {
		height: 100%;
		position: fixed;
		top: 0;
		z-index: 2;
		overflow-y: scroll;
	}
	#accordionSidebar::-webkit-scrollbar{
		width: 0;
	}
	#content-wrapper{
		width: 100%;
		position: fixed;
		top: 0;
		z-index: 1;
	}
	.contentField{
		padding-left: 250px;
		margin-top: 80px;
	}
	.heightcontrol{
		max-height: 200px;
		overflow-y: scroll;
	}
	.heightcontrol::-webkit-scrollbar{
		width: 0;
	}
	.alarmclick:hover{
		cursor: pointer;
	}
	.alarmDel:hover{
		cursor: pointer;
	}
	#alarmDiv{
 		display: none;
		position: fixed;
		width: 280px;
		right: 30px;
		bottom: 10px;
		z-index: 100;
	}
	#alarmText{
		width: 220px;
	}
	
</style>

<body id="page-top">

    <!-- Page Wrapper -->


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
                <a class="nav-link" href="<c:url value='/statistics/list.go'/>">
                    <i class="fi fi-sr-chart-pie-alt"></i>
                    <span>통계</span></a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/store/storeList.go'/>">
                    <i class="fi fi-sr-bullhorn"></i>
                    <span>스토어 관리</span>
                </a>
            </li>
            
			<c:if test="${userInfo.departmentID eq 5}">
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo" id="personnel-click">
                    <i class="fi fi-sr-clipboard-user"></i>
                    <span>인사 관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href='<c:url value="/personnel/orgManage.go"/>'>조직 관리</a>
                        <a class="collapse-item" href='<c:url value="/personnel/personnelList.go?category=&inputSearch=&branch=0&pageNum=1"/>'>사원 관리</a>
                        <a class="collapse-item" href='<c:url value="/personnel/annualManage.go"/>'>연차 관리</a>
                    </div>
                </div>
            </li>
			</c:if>
			
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/facility/facility.go"/>'>
                    <i class="fi fi-sr-hammer-crash"></i>
                    <span>시설 관리</span>
                    </a>
            </li>


            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree"
                    aria-expanded="true" aria-controls="collapseThree" id="approval-click">
                    <i class="fi fi-sr-assept-document"></i>
                    <span>전자결재</span>
                </a>
                <div id="collapseThree" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href='<c:url value="/approval/formList.go"/>' >결재문서작성</a>
                        <a class="collapse-item" href='<c:url value="/approval/waitingList.go"/>'>결재대기함</a>
                        <a class="collapse-item" href='<c:url value="/approval/refList.go"/>'>참조/열람함</a>
                        <a class="collapse-item" href='<c:url value="/approval/myDraftList.go"/>'>나의 기안함</a>
                        <a class="collapse-item" href='<c:url value="/approval/myApprovalList.go"/>'>나의 결재함</a>
                        <a class="collapse-item" href='<c:url value="/approval/department.go"/>'>부서함</a>
                        <a class="collapse-item" href='<c:url value="/approval/tempSaveList.go"/>' >임시저장함</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#board"
                    aria-expanded="true" aria-controls="board" id="board-click">
                    <i class="fi fi-sr-flag-alt"></i>
                    <span>게시판</span>
                </a>
                <div id="board" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href='<c:url value="/board/notice/list?searchCategory=&search=&page=1"/>' >공지사항</a>
                        <a class="collapse-item" href='<c:url value="/board/anony/list?searchCategory=&search=&page=1"/>' >익명게시판</a>
                        <a class="collapse-item" href='<c:url value="/board/department/list?searchCategory=&search=&page=1"/>' >부서게시판</a>
                        <a class="collapse-item" href='<c:url value="/board/program/list?searchCategory=&search=&page=1"/>' >프로그램 일정</a>
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
<!--             <li class="nav-item"> -->
<!--                 <a class="nav-link" href="#"> -->
<!--                     <i class="fi fi-sr-gift"></i> -->
<!--                     <span>복지몰</span></a> -->
<!--             </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- 사이드바 토글 (작게) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


        </ul>
        <!-- 여기까지 사이드바 -->

       
       
        <div id="content-wrapper" class="d-flex flex-column">
			
			<!-- Topbar -->
			<nav	class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
				<!-- Sidebar Toggle (Topbar) -->
				<button id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>
			
				<!-- Topbar Navbar -->
				<ul class="navbar-nav ml-auto">
			
					<!-- 상단바 알림 -->
					<li class="nav-item dropdown no-arrow mx-1">
						<a  class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							<i class="fas fa-bell fa-fw"></i> 
							<!-- 알림 뱃지- Alerts -->
							<span class="badge badge-danger badge-counter" id="alarmCnt">1</span>
						</a> 
					
						<!-- 알림 드롭다운 -->
						<div	id="alarmDrop" class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
							<h6 class="dropdown-header">알림</h6>
							<div class="dropdown-item text-center small text-gray-500">알림이 없습니다.</div>
						</div>
					</li>
			
					<!-- 알림/유저 아이콘 선-->
			
					<div class="topbar-divider d-none d-sm-block"></div>
			
					<!-- Nav Item - User Information -->
					<li class="nav-item dropdown no-arrow">
						<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<span class="mr-2 d-none d-lg-inline text-gray-600 small">${sessionScope.userInfo.name}</span>
							<img	 class="img-profile rounded-circle"	src="/photo/cocean/profile/${sessionScope.userInfo.serverFileName}"/>
						</a>
						
						<!-- Dropdown - User Information -->
						<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
							<a class="dropdown-item" href="<c:url value='/mypage/mypage'/>">
								<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
								내정보
							</a>
							<a class="dropdown-item" href="<c:url value='/mypage/work'/>">
								<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
								근태기록
							</a>
							<a class="dropdown-item" href="<c:url value='/mypage/address'/>">
								<i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
								주소록
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item"  onclick="logoutConfirm()" style="cursor:pointer;">
								<i	class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
								로그아웃
							</a>
						</div>
					</li>
			
				</ul>
			
			</nav>
			
		</div>

    <!-- 여기까지 사이드/상단바 -->

    <!-- 페이지 상단 이동버튼-->
    <a class="scroll-to-top rounded" href="#page-top" style="display: list-item">
        <i class="fas fa-angle-up"></i>
    </a>
    
    
    <!-- 알림오면 생기는 창 -->
	<div id="alarmDiv" class="alert alert-primary" role="alert">
	 	<div id="alarmText" class="float-left"></div>
		<div class="float-right alarmDel"><i class="fas fa-times" onclick="alarmHidden()"></i></div>
	</div>
	
	<!-- 조직도 모달 -->
<!-- 	<div class="modal fade" id="chartModal" tabindex="-1" role="dialog" -->
<!-- 		aria-labelledby="modal" aria-hidden="true"> -->
<!-- 		<div class="modal-dialog"> -->
<!-- 			<div class="modal-content"> -->
<!-- 				<div class="modal-header"> -->
<!-- 					모달창 제목 -->
<!-- 					<h5 class="modal-title">조직도</h5> -->
<!-- 					<button type="button" class="close" data-dismiss="modal" -->
<!-- 						aria-label="Close"> -->
<!-- 						<span aria-hidden="true">&times;</span> -->
<!-- 					</button> -->
<!-- 				</div> -->
<!-- 				<div class="modal-body"> -->
<%-- 					<c:import url="/personnel/organization/1"/> --%>
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	
	
<%-- <script src="<c:url value='/resource/vendor/jquery/jquery.min.js'/>"></script> --%>
<script	src="<c:url value='/resource/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<%-- <script src="<c:url value='/resource/vendor/jquery-easing/jquery.easing.min.js'/>"></script> --%>
<script src="<c:url value='/resource/js/sb-admin-2.min.js'/>"></script>


</body>

<script>


function logoutConfirm() {
	 
	swal({
		title: "로그아웃하시겠습니까?",
		text:"",
		icon:"info",
		buttons:["취소","확인"]
	})
	.then((isOkey)=>{
		if(isOkey){
		location.href='<c:url value="/mypage/logout"/>';
		}
	})
}
	
	var msg = "${msg}";
	if(msg != ""){
		swal({
			title: msg,
			button: '확인'
		});
	}
	
	$('#sidebarToggle').on('click',function(){
		var width = $('#accordionSidebar').width();
		//console.log(width);
		if(width <= 150){
			$('.contentField').css({'padding-left':'130px'});
			$('#accordionSidebar').css({'overflow-y':'clip'});
		}else{
			$('.contentField').css({'padding-left':'250px'});
			$('#accordionSidebar').css({'overflow-y':'scroll'});
		}
		
	});

	// 알람창
	var employeeID = '${userInfo.employeeID}';
	var eventSource = new EventSource(	'<c:url value="/sse/subscibe/'+employeeID+'"/>');

	eventSource.addEventListener('connect', function(event) {
		console.log(event.data);
	});
	
	eventSource.addEventListener('alarm', function(event) {
		//console.log(event.data);
		$('#alarmText').html(event.data);
		$('#alarmDiv').css({'display':'block'});
		setTimeout(function () {
			alarmHidden();
        }, (1000*60));
		alarmList();
	});

	function alarmHidden(){
		$('#alarmDiv').css({'display':'none'});
	}
	
	alarmList();

	function alarmList() {
		$.ajax({
			type : 'post',
			url : '<c:url value="/alarm/getList"/>',
			data : {},
			success : function(data) {
				//console.log(data);
				drawAlarm(data.alarmList);
			},
			error : function(e) {
				console.log(e);
			}
		});
	}

	function drawAlarm(list) {
		
		$('#alarmCnt').html(list.length);
		
		$('#alarmDrop').html('');
		
		var dropdown = '<h6 class="dropdown-header">알림</h6>';
		
		if(list.length == 0){
		 	dropdown += '<div class="dropdown-item text-center small text-gray-500">알림이 없습니다.</div>';
		}else{
			dropdown += '<div class="heightcontrol">';
			for(var i = 0; i < list.length; i++){
				var currentPath = location.pathname.split('/')[1];
				currentPath = currentPath == 'Cocean' ? '/Cocean' : '';
				var con = '<div class="dropdown-item d-flex align-items-center"><div class="mr-3">';

				if(list[i].url.includes('/approval')){
					con += '<div class="icon-circle bg-success"><i class="fi fi-sr-assept-document text-white">';
				}else if(list[i].url.includes('/schedule')){
					con += '<div class="icon-circle bg-info"><i class="fi fi-sr-calendar-pen text-white">';
				}else{
					con += '<div class="icon-circle bg-light"><i class="far fa-bell text-black">';
				}
				
				con += '</i></div></div><div class="alarmclick mr-5" style="width: 100%" onclick="location.href=\'';
				con += currentPath+list[i].url+'\'"><div class="small text-gray-500">';
				con += list[i].notificationTime;
				con += '</div><div>';
				con += list[i].content;
				con += '</div></div><div class="float-right alarmDel"><i class="fas fa-times hover" onclick="alarmDel('
				con += list[i].historyID;
				con += ')"></i></div></div>';
				dropdown += con;
			}
			dropdown +='</div><div class="dropdown-item text-center small text-gray-500 alarmDel" onclick="alarmDel(\'all\')">모두 삭제</div>';					
		}		
		$('#alarmDrop').html(dropdown);
		
	}
	
	function alarmDel(id){
		var url = '<c:url value="/alarm/del/"/>'+employeeID+'/'+id;
		if(id == 'all'){
			url = '<c:url value="/alarm/allDel/"/>'+employeeID;
		}
		
		$.ajax({
			type:'get',
			url:url,
			data:{},
			dataType:'JSON',
			success:function(data){
				drawAlarm(data.alarmList);
			},
			error:function(e){
				console.log(e);
			}
		});
	}
	
	var currentAction =location.pathname.split('/')[2];
	if(currentAction == 'board'){
		$('#board-click').click();
	}else if(currentAction == 'approval'){
		$('#approval-click').click();
	}else if(currentAction == 'personnel'){
		$('#personnel-click').click();
	}else if(currentAction == 'store'){
		$('#store-click').click();
	}
	
</script>

</html>


















