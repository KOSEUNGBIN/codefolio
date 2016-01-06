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
    <script src="<%=cp%>/resources/bootstrap/js/bootstrap.js"></script>
   
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
<!-- 첫번째 층 중간의 "codeFOLIO" 마크버튼 구현 -->
<!-- script 이용 id=Cf -->
<div  style="background-color: #75A3A3;height:12%;width:100% ; float:left; " >
 	<a href="#this"  id="Cf">
 	<span style="color:#ffffff; " ><button  style=" WIDTH: 100%; HEIGHT: 100%; padding:0%;margin:0%; font-size: 40pt; background-color:#75A3A3;border:0;float:left;"   type="button"><em>CodeFOLIO</em></button></span>
	</a>
</div>



<!-- 페이지 변경에 대한 내용과 검색기능이  있는 두번째 층 -->
<div style="width:100%;height:50pt;float:left;background-color :#75A3A3;">

<div style="background-color :#75A3A3; height:100%;width:10%;float:left;" ></div>

<!--  두번째 층 왼쪽의 계정관리등을 위한 메뉴형식 -->
<div  class="dropdown" style="background-color :#75A3A3; height:100%;width:25%;float:left;" >
      	
 <ul class="nav nav-tabs" style="border-bottom:none;">  <!-- list 시작 -->
  <li ><a href="http://localhost:8080/codefolio/"><span style="color:#000000 " ><strong>홈</strong></span></a></li>
  <li role="presentation" class="dropdown">	 <!-- 두번째 List는 dropdown형식으로 구현 -->
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
      <span style="color:#000000 " ><strong>계정 관리</strong></span> <span class="caret"></span>
    </a>
    <!-- dropdown 안쪽의 내용 -->
    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li ><a href="#">비밀번호 변경</a></li>
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



<!--  두번째 층 중간의 페이지 이동에 대한 버튼 -->
<div style="height:100%;width:30%;float:left;">
<ul class="nav nav-pills">
  <li role="presentation" ><a href="/codefolio/front/codeHubList.do">소스 저장소</a></li>
  <li role="presentation" ><a href="/codefolio/front/blog.do">코드 포스팅</a></li>
  <li role="presentation" ><a href="">개인 포트폴리오 관리</a></li>

</ul>
</div>

<div style="background-color :#75A3A3; height:100%;width:8%;float:left;" ></div>


<!-- 두번째 층 오른쪽 검색기능 -->
<div style="height:100%;width:2	8%;float:left;">
<form class="navbar-search pull-left" >
  <input type="text" class="search-query" placeholder="검색" style="background-color :#FFFFFF; height:30pt;width:200pt ">
	<button type="submit" class="btn btn-default-center" style="height:30pt;width:60pt">Submit</button>
</form>
</div>

</div>



    
    
    
<!-- 세번째 층에 대한 내용 -->
<div  style=" width:100%;height:1500px;border:none;" >


<!-- 세번째 층의 왼쪽 메뉴목록 -->
<!-- 밑의 script 참고 -->
<!-- 스크롤 이동에 대한 menu_bar에 스타일을 지정 -->
<div id="menu_bar" style="height:100%;width:15%;float:left; ">
<div class="btn-group-vertical" role="group" aria-label="..." style="height:100%;width:95%;">

</div>

</div>

<div id="menu_bar_after" style="float:left; ">
</div>

<!-- 메뉴와 게시판 사이의 빈 공간 -->
<div style=" height:100%;float:left;width:5%;"></div>


<!-- 소스 저장소 내용   -->
<div id="title" style="display:none;">${title}</div>
<div id="filepathTemp" style="display:none;">${filepath}</div>
<div style=" height:100%;float:left;width:70%;overflow:auto;">

<h2 align="center"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> ${title}  </h2> <!-- bootstrap 기호 추가 -->
<c:set var="currentPath" value= "${filepath}" />
 <c:set var="currentPathLength" value="${fn:length(currentPath)}"/>
<table class="board_list">
		<colgroup>
			<col width="100%"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">${currentPath}</th>
			</tr>
		</thead>
		<tbody>
		<tr>
							<td class="title">
								<a href='#this' name='back'>  ... </a>
							</td>
						</tr>
		  <c:set var="temp" value="0"/>
			<c:set var="init" value="0"/>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list}" var="row"  varStatus="status">
					
					<c:set var="originalPath" value="${row}"/>    
					<c:set var="originalPathLength" value="${fn:length(originalPath)}"/>     
					<c:set var="length" value= "${fn:indexOf(originalPath, \"/\")}"/>
					<c:set var="partialPath" value= "${fn:substring(originalPath, currentPathLength, originalPathLength)}"/>
					<c:set var="test" value= "${fn:contains(partialPath,\"/\" )}"/>
					
					<c:if test = "${fn:startsWith(originalPath, currentPath)}" >    <!-- 현재 경로 해당 -->
					<c:if test = "${fn:contains(partialPath,\"/\" )}" >                  <!-- 디렉토리의 경우 경로 해당 -->
					<c:set var="directoryLength" value="${fn:indexOf(partialPath, \"/\")}"/>      
					<c:set var="directory" value= "${fn:substring(partialPath, 0,directoryLength)}"/>
					 
					<c:if test = "${(directory ne temp)||(temp eq init)}" >        <!-- 디렉토리의 경우 경로 해당 -->
					<tr>
							<td class="title">
							<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
							
							<input type='hidden' id='DIR' value="${directory}">
								<a href='#this' name='directory'> &nbsp ${directory} </a>
								<c:set var="temp" value="${directory}"/>
								<c:set var="init" value="1"/>
							</td>
						</tr>
					</c:if>
					</c:if>
					</c:if>
			    	 <c:if test = "${fn:startsWith(originalPath, currentPath)}" > 
					<c:if test = "${not fn:contains(partialPath,\"/\" )}" > 
						<tr>
							<td class="title">
							 	<span class="glyphicon glyphicon-file" aria-hidden="true"></span>
							<input type='hidden' id='IDX' value="${row}">
								<a href='#this' name='title'>&nbsp${partialPath}</a>
								
							</td>
						</tr>
					</c:if>
					</c:if>
					<c:set var="tempNum" value="${status.index}"/>
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
     var menu_bar_after = document.getElementById('menu_bar_after');
    
     
     
     if($(window).scrollTop() > 300 ) 	// 300이상 일때 부터 상단에 고정
  	{
  	menu_bar.style.position = 'fixed';
  	menu_bar.style.top=0;
  	menu_bar_after.style.position='';
  	menu_bar_after.style.height='100%';
  	menu_bar_after.style.width='15%';
  	
  	}
   else 
  	 {
  	 menu_bar.style.position = ''; //300 이하일때는 기존의 자리로 이동.
  	 menu_bar_after.style.height='';
   	 menu_bar_after.style.width='';
  	 
  	 }

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
		
		$(document).ready(function(){
			
			$("a[name='directory']").on("click", function(e){ //제목 
				e.preventDefault();
				fn_openDirectory($(this));
			});
		});
		

	
		
		
		function fn_openBoardDetail(obj){
			var comSubmit = new ComSubmit();
			var TITLE = $('#title').html();
			comSubmit.setUrl("<c:url value='/front/codeHubViewer.do' />");
			comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
			comSubmit.addParam("TITLE", TITLE);
			
			comSubmit.submit();
		}
		
		function fn_openDirectory(obj){
			var comSubmit = new ComSubmit();
			var TITLE = $('#title').html();
			var PATH = $('#filepathTemp').html();
			comSubmit.setUrl("<c:url value='/front/codeHubBrowser.do' />");
			comSubmit.addParam("FILEPATH",PATH+ obj.parent().find("#DIR").val());
			comSubmit.addParam("IDX", TITLE);
			comSubmit.addParam("TITLE", TITLE);
			
			comSubmit.submit();
			
		}
		
	
		
	</script>	
</body>
</html>