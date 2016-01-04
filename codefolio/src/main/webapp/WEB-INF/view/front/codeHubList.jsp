<%@ page contentType="text/html;charset=UTF-8" language="java"%>


<% String cp = request.getContextPath(); %>

<%--ContextPath 선언 --%>
<html>
<head>

	
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<%@ include file="/WEB-INF/include/include-body.jspf" %>

 
   

	 <!-- bootstrap -->
   <link href="<%=cp%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <script src="<%=cp%>/resources/bootstrap/js/bootstrap.min.js"></script>
   
	 <!-- CSS-->
    <link rel="stylesheet" href="../css/timeline.css?v1">
   
    <!--FONT-->
    <link rel="stylesheet" href="../css/fonts/font.default.css?v1">
    
     <!-- Style-->
       <style>
      html, body {
      	height:100%;
      	width:100%;
      	padding: 0px;
      	margin: 0px;
      	text-align: left;
      
      }  
</style> 
</head>
<body >


 <!-- 첫 번째 층에 대한 내용 -->	
<div style="height:12%;width:100% ; float:left; " >
 
<!-- 첫 번째 층의 왼쪽 홈 버튼 -->
<div style="background-color :#75A3A3; height:100%;width:30%;float:left ;" >
<button type="button" class="btn btn-default btn-lg " style="float:left ;background-color :#75A3A3;" ><span class="glyphicon glyphicon-home" aria-hidden="true" style="color:#000000" ></span></button>
</div>

<!-- 첫번째 층 중간의 "codeFOLIO" 마크버튼 구현 -->
<!-- script 이용 id=Cf -->
<div style="background-color: #75A3A3; height:100%;width:40% ;float:left; " >
 	<a href="#this"  id="Cf">
 	<span style="color:#ffffff; " ><button  style=" WIDTH: 100%; HEIGHT: 100%; padding:0%;margin:0%; font-size: 40pt; background-color:#75A3A3;border:0;float:left;"   type="button"><em>CodeFOLIO</em></button></span>
	</a>
</div>



<!--  첫번째 층 오른쪽의 계정관리등을 위한 메뉴형식 -->
<div class="dropdown" style="background-color :#75A3A3; height:100%;width:30% ;float:left;" >
      	
 <ul class="nav nav-tabs">  <!-- list 시작 -->
  <li><a href="#"><span style="color:#000000 " ><strong></strong>홈</span></a></li>
  <li role="presentation" class="dropdown">	 <!-- 두번째 List는 dropdown형식으로 구현 -->
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
      <span style="color:#000000 " ><strong>계정 관리</strong></span> <span class="caret"></span>
    </a>
    <!-- dropdown 안쪽의 내용 -->
    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">비밀번호 변경</a></li>
    <li><a href="#">회원 탈퇴</a></li>
    <li><a href="#">로그아웃</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">고객 센터</a></li>
  	</ul>
  </li>
  <li><a href="#"><span style="color:#000000 " ><strong>메시지</strong></span></a></li>
  <li><a href="#"><span style="color:#000000 " ><strong>알림</strong></span></a></li>
</ul>	
</div>

</div>



<!-- 페이지 변경에 대한 내용과 검색기능이  있는 두번째 층 -->
<div  style="width:100%;height:50pt;float:left;background-color :#75A3A3;">

<!-- 두번째 층 왼쪽 검색기능 -->
<div style="height:100%;width:35%;float:left;">
<form class="navbar-search pull-left" >
  <input type="text" class="search-query" placeholder="검색" style="background-color :#FFFFFF; height:30pt;width:200pt ">
	<button type="submit" class="btn btn-default-center" style="height:30pt;width:60pt">Submit</button>
</form>
</div>

<!--  두번째 층 오른쪽의 페이지 이동에 대한 버튼 -->
<div style="height:100%;width:40%;float:left;">
<ul class="nav nav-pills">
  <li role="presentation" ><a href="/codefolio/front/codeHub.do">소스 저장소</a></li>
  <li role="presentation" ><a href="/codefolio/front/blog.do">코드 포스팅</a></li>
  <li role="presentation" ><a href="">개인 포트폴리오 관리</a></li>
  <li role="presentation" class="disabled"><a href="">팀 프로젝트 내역</a></li>
</ul>
</div>
<div style="height:100%;width:25%;float:left;"></div>

</div>



<!--페이지에 대한 설명이 있는 세번째 층 -->
<div  style=" width:100%;height:20%;float:left;background-color :#CFD4C5;align:center;" >
<h1>설명</h1>
</div>
    

    
    
    
<!-- 네번째 층에 대한 내용 -->
<div  style=" width:100%;height:64%;float:left;" >

<!-- 네번째 층의 왼쪽 메뉴목록 -->
<!-- 밑의 script 참고 -->
<!-- 스크롤 이동에 대한 menu_bar에 스타일을 지정 -->
<div id="menu_bar" style="height:100%;width:15%;float:left; ">
<div class="btn-group-vertical" role="group" aria-label="..." style="height:100%;width:70%;">
  <button type="button" class="btn btn-default">1</button>
  <button type="button" class="btn btn-default">2</button>

  <div class="btn-group" role="group">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu">
      <li><a href="#">Dropdown link</a></li>
      <li><a href="#">Dropdown link</a></li>
    </ul>
  </div>
</div>

</div>



<!-- 소스 저장소 내용   -->
<div style=" height:100%;float:left;width:70%;overflow:auto;">
<h2 align="center"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> Code Hub </h2> <!-- bootstrap 기호 추가 -->
	<table class="board_list">
		<colgroup>
			<col width="10%"/>
			<col width="*"/>
			<col width="15%"/>
			<col width="20%"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">프로젝트명</th>
				<th scope="col">언어</th>
				<th scope="col">시작일</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list}" var="row">
						<tr>
							<td>${row.PRJ_IDX }</td>
							<td class="title">
							<input type='hidden' id='IDX' value="${row.TITLE }">
								<a href='#this' name='title'>${row.TITLE }</a>
							</td>
							<td>${row.LANG }</td>
							<td>${row.DATE }</td>
							
						</tr>
						
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>


</div>


<!-- 부가적인 꼬리말에 대한 층 -->
<footer style="height:50px;width:100%;float:left;background-color: #B26B69;">

</footer>


<!-- script -->

<!-- 첫번째 "codeFOLIO" 버튼에 대한 script -->
<script type="text/javascript">
	$(document).ready(function(){
		$("#Cf").on("click", function(e){ //목록으로 버튼
		e.preventDefault();
		fn_backHome();
		});
	});
	function fn_backHome(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/front/Main.do' />");
		comSubmit.submit();
	}
</script>		

 <!-- 네번째 층의 왼쪽  메뉴 스크롤시 상단 고정에 대한 스크립트 -->
 <script type="text/javascript"> 
 function menuScroll() { 
     var menu_bar = document.getElementById('menu_bar');

    if($(window).scrollTop() > 300 ) 	// 300이상 일때 부터 상단에 고정
    	{
    	hold_bar.style.position = 'fixed';
    	hold_bar.style.left=0;
    	hold_bar.style.right=0;
    	hold_bar.style.top=0;
    	
    	}
     else hold_bar.style.position = ''; //300 이하일때는 아무동작 하지 않는다.

}

$(window).scroll(menuScroll);
</script>

<script type="text/javascript">
		$(document).ready(function(){
				
			$("a[name='title']").on("click", function(e){ //제목 
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
		});
	
		
		
		function fn_openBoardDetail(obj){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/front/codeHubDetail.do' />");
			comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
			comSubmit.submit();
		}
		
	</script>	



</body>
</html>