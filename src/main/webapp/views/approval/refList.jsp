<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
	
table,th,td{
	border-bottom: 1px solid lightgray;
    border-collapse: collapse;
    padding: 5px 10px;
}

#saveTableHead{
	background-color: #86B0F3;
}

#saveTable{
	width: 500px;
	text-align: center;
}

</style>
</head>
<body>
<jsp:include page="../side.jsp"></jsp:include>	
	
	<form action="searchList.do" method="POST">
	<select id="category" name="formCategory">
	  <option value="전체" selected="selected">전체</option>
	  <option value="일반">일반</option>
	  <option value="근태">근태</option>
	  <option value="인사">인사</option>
	</select>

		<input type="search" name="keyword" placeholder="제목"/>
		<button class="btn btn-primary">검색</button>
	</form>
		
	<table id="saveTable">
		<tr id="saveTableHead">
			<th>기안일</th>
			<th>유형</th>
			<th>제목</th>
			<th>상태</th>
		</tr>
		<c:forEach items="${ref}" var="ref">
		<tr>
			<td>${ref.draftDate}</td>
			<td>${ref.category}</td>
			<td> 
				<c:choose>
	                <c:when test="${ref.title == null}">
	                    <a href="draftDetail.go?idx=${my.idx}&employeeID=${ref.employeeID}">${ref.formTitle}</a>
	                </c:when>
	                <c:when test="${ref.title == ''}">
	                    <a href="draftDetail.go?idx=${ref.idx}&employeeID=${ref.employeeID}">${ref.formTitle}</a>
	                </c:when>
	                <c:otherwise>
	                    <a href="draftDetail.go?idx=${ref.idx}&employeeID=${ref.employeeID}">${ref.title}</a>
	                </c:otherwise>
	            	</c:choose>
            </td>
			<td>${ref.draftStatus}</td>
		</tr>	
		</c:forEach>
	</table>
	
</body>
<script>

    $("#category").change(function () {
        var selectedCategory = $(this).val();
        var keyword = $("input[name='keyword']").val();
        console.log(selectedCategory);
        filterList(selectedCategory, keyword);
    });

    function filterList(category, keyword) {
        if (category === "전체") {
            $("table tr").show();
        } else {
            $("table tr:gt(0)").hide();
            $("table tr").filter(function () {
            	 var categoryMatch = $(this).find("td:first").text() === category;
                 var keywordMatch = $(this).find("td:last").text().includes(keyword);
                 return categoryMatch && keywordMatch;
            }).show();
        }
    }

</script>
</html>