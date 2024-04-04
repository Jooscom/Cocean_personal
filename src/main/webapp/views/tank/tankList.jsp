<%@ page language="java" contentType="text/html; charset=UTF-8"	
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<style>
#tank_head {
	background-color: #86B0F3;
}
#checkBox {
	justify-content: space-around;
	font-size: 13px;
	display: flex;
}

label {
	padding-right: 25px;
}

#search {
	float: right;
	width: 450px;
	
}

/* #search input { */
/* 	z-index: 99999; */
/* } */

#tankSubmit {
	
	float: right;
	width: 100px;
	
}

@media screen and (max-width: 1457px) {
	#search {
		top: 23%;
	}
	#search button {
		width: 233px;
	}
	#search input {
		margin-bottom: 5px;
	}
}
</style>
</head>
<body>
	<c:import url="/side"/>
	
	<div class="container-fluid contentField">
		<div class="d-sm-flex align-items-center justify-content-between mb-6" style="padding-top: 15px;">
			<h1 class="h3 mb-0 text-gray-800">코션하우스</h1>
		</div>
	
	<div class="row">
	<div class="col-md">
		<div id="checkBox" style="margin-top: 20px;">
        <nav class="navbar navbar" id="search" style="width: 100%; left:78%;">
            <form class="form-inline" action="list.go" method="get" id="frm" style="width: 100%;">
<!--     		<div style="display: flex; align-items: center; width: 75%;"> -->
<!--     		<text style="font-size: 16px; margin-right: 1%;">타입</text> -->
<!-- 				<select class="custom-select" id="type" name="type" style="color: black;  margin-right: 1%;"> -->
<!-- 				<option selected>전체</option> -->
<!-- 				<option value="해수">해수</option> -->
<!-- 				<option value="담수">담수</option> -->
<!-- 				<option value="반수생">반수생</option> -->
<!-- 				<option value="육상">육상</option> -->
<!-- 				</select> -->
<!--     		<text style="font-size: 16px; margin-right: 1%;">상태</text> -->
<!-- 				<select class="custom-select" id="type" name="status" style="color: black;"> -->
<!-- 				<option selected>전체</option> -->
<!-- 				<option value="정상">정상</option> -->
<!-- 				<option value="이상">이상</option> -->
<!-- 				<option value="폐쇄">폐쇄</option> -->
<!-- 				</select> -->
<!-- 			</div>             -->
              <input class="form-control mr-sm-2" type="search" name="search" placeholder="담당자명을 입력하세요." aria-label="Search">
              <input type="hidden" name="startNum" value="1" id="startNum">
              <input type="hidden" name="pageNum" value="" id="pageNum">
              <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">검색</button>
            </form>
          </nav>
    </div>
          
    </div>
    </div>

<div class="mb-4" style="height: 60vh;">
<div class="card shadow mb-4" style="margin-top:15px;">
	<div id="tank_table">
		<table class="table table-hover" >
			<thead id="tank_head">
				<tr>
					<th scope="col">수조 번호</th>
					<th scope="col">수조 이름</th>
					<th scope="col">분류</th>
					<th scope="col">지점</th>
					<th scope="col">상태</th>
					<th scope="col">담당자</th>
				</tr>
			</thead>

			<tbody id=tankList>
				<c:forEach items="${list}" var="item">
					<tr>
						<td scope="row">${item.getTankID()}</td>
						<td><a href="detail.go?tankID=${item.getTankID()}">${item.getTankName()}</a></td>
						<td>${item.getTankType()}</td>
						<td>${item.getBranchName()}</td>
						<td>${item.getTankStatus()}</td>
						<td>${item.getName()}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>	

</div>
</div>

<!-- 페이징 처리 -->
<div class="row" style="width: 100%; justify-content: end;">

  <ul class="pagination" id="paging" style="width: 80%; justify-content: center;">
    <li class="page-item">
  <div class="<c:if test="${pager.pageNum > 1}">p</c:if>" data-list-pn="${pager.pageNum-1}">
      <a class="page-link" data-list-pn="${pager.pageNum-1}">&laquo;</a>
    </div>
    </li>
    	<c:forEach begin="1" end="${pager.totalCount}" var="i">
    	 <li class="${pager.pageNum == i ? "page-item active":"page-item"}">
      		<div class="p" data-list-pn="${i}"><a class="page-link" data-list-pn="${i}">${i}</a></div>
    	</li>
		</c:forEach>
	
	
	<li class="page-item" >
	<div class="<c:if test="${pager.pageNum < pager.totalCount}">p</c:if>" data-list-pn="${pager.pageNum+1}" >
      <a class="page-link" >&raquo;</a>
      </div>
    </li>
    
	  </ul>
<div style="width: 10%;"><button type="button" id="tankSubmit" onclick="location.href='write.go'" class="btn btn-primary">등록</button></div>
</div>
<!-- 여기까지 페이징 -->




<c:import url="/footer"/>
</div>
</body>
<script>


//페이징 처리 클릭 이벤트
$(".p").click(function() {
	const n= $(this).attr("data-list-pn");
	$("#pageNum").val(n);
	$('#frm').submit();
			
});



	
	function selectAll(selectAll){
		const chkBoxes = $('input[type="checkbox"]');
		
		Array.from(chkBoxes).forEach(function(box, index) {
			box.checked = selectAll.checked;
		})
	}

	
	

// $('.p').click(function(){
	
// 	const no = $(this).attr("data-list-pn");
// 	alert(no);
// 	$("#pageNum").val(no);
// 	$('#frm').submit();
// });
	

    

	



	
	

</script>
</html>