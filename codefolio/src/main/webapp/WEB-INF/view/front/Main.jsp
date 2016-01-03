<%@ page contentType="text/html;charset=UTF-8" language="java"%>


<% String cp = request.getContextPath(); %>

<%--ContextPath 선언 --%>
<html>
<head>

<%@ include file="/WEB-INF/include/include-header.jspf" %>
<%@ include file="/WEB-INF/include/include-body.jspf" %>


	<!-- timelineJS -->
	<link title="timeline-styles" rel="stylesheet" href="//cdn.knightlab.com/libs/timeline3/latest/css/timeline.css">
    <script src="//cdn.knightlab.com/libs/timeline3/latest/js/timeline.js"></script>
    <script type="text/javascript" src="https://cdn.knightlab.com/libs/timeline/latest/js/timeline-min.js"></script>
   
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
      	text-align: right;
      }
      .tl-timeline {
      
      }
      
    </style> 
  </head>
  <body>
 
    
    
     
    </style> 
  </head>
  <body >

  <div style="height:18%;width:100% ; float:left; " >
  <!-- 좌측 상단  -->	
    <div style="background-color: #3498db; height:100%;width:20% ;float:left; " >
		
 		<a href="#this"  id="Cf">
 		<span style="color:#ffffff; " ><button  style=" WIDTH: 100%; HEIGHT: 100%; padding:0%;margin:0%; font-size: 50pt; background-color:#3498db;border:0;float:left;"   type="button"><em>CodeFOLIO</em></button></span>
		 </a>
		 
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
	</div>

		<!-- 상단 중간(검색) -->
	
<div style="background-color :#34e8fb; padding:50pt; height:100%;width:50%;float:left ;" >

	<form class="navbar-search pull-left" >
  <input type="text" class="search-query" placeholder="검색" style="background-color :#FFFFFF; height:40pt;width:300pt ">
	<button type="submit" class="btn btn-default-center" style="height:40pt;width:60pt">Submit</button>
</form>

</div>



	<!-- 상단 우측 -->
 <div class="dropdown" style="background-color :#34e8fb;  padding:60pt; height:100%;width:30% ;float:left;" >
      	
   	<ul class="nav nav-tabs">
  <li><a href="#"><span style="color:#9b59b6 " ><strong></strong>홈</span></a></li>
  <li role="presentation" class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
      <span style="color:#9b59b6 " ><strong>계정 관리</strong></span> <span class="caret"></span>
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">비밀번호 변경</a></li>
    <li><a href="#">회원 탈퇴</a></li>
    <li><a href="#">로그아웃</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">고객 센터</a></li>
  </ul>
  
    
  </li>
  <li><a href="#"><span style="color:#9b59b6 " ><strong>메시지</strong></span></a></li>
  <li><a href="#"><span style="color:#9b59b6 " ><strong>알림</strong></span></a></li>
</ul>
 		
</div><!-- /.row -->
</div>

	<!--중간 좌측 -->
<div  style=" width:100%;height:67%;float:left;">
<div  style=" float:left;width:20%;height:100%;" >


  <a href="http://localhost:8080/codefolio/front/blog.do" ><button type="button"  class="btn btn-default" style="width:100%; "><span style="color:#000000;"><strong>소스 저장소 </strong></span></button></a>
<a href="http://localhost:8080/codefolio/front/test_2.do" target="_self" ><button type="button"  class="btn btn-default" style="width:100%; "><span style="color:#000000;"> <strong>코드 포스팅 </strong></span></button></a>
<a href=""><button type="button"  class="btn btn-default" style="width:100%; "><span style="color:#000000;"><strong>개인 포트폴리오 관리</strong></span></button></a>
<a href=""><button type="button"  class="btn btn-default" style="width:100%; "><span style="color:#000000;"><strong>팀 프로젝트 내역 </strong></span></button></a>

 
  
  
 	<h3><center><strong><span class="glyphicon glyphicon-download" aria-hidden="true"></span>목차<span class="glyphicon glyphicon-download" aria-hidden="true"></span> </strong></center></h3>

 
  
  </div>


<!--중간  timeline -->
<div id="timeline"   style=" float:left;width:60%;height:100%;" ></div>

<!-- 중간 우측 -->
<div  style=" float:left;width:20%;height:100%" >
<strong>광고</strong></div>
</div>

  
 

    <!-- JavaScript-->
    
    <script>

    var additionalOptions = {
            start_at_end: true,
            default_bg_color: {r:70, g:0, b:0},
            timenav_height_percentage : 30,
            timenav_height_min : 100,
            //timenav_mobile_height_percentage : 40
            //track_events: 'zoom_in'
            //hash_bookmark:true
          }
    
    var timelineJson  = {
 			"eras":{ 
				"start_date": {
	                "year":			"2010",
	                "month":		"1",
	                "day": 			"1",
	                "hour": 		"0",
	                "minute": 		"0",
	                "second": 		"0",
	                "millisecond": 	"",
	                "format": 		""
	            },
	            "end_date" :{
	            	 "year":			"2020",
		             "month":			"12",
		             "day": 			"31",
		             "hour": 			"11",
		             "minute": 			"59",
		             "second": 			"59",
		             "millisecond": 	"",
		             "format": 			""
	            },
	            "text": {
	                "headline": "The Code Folio??"
	            }
				
			},
		    "scale": "human",
		    "events": [ 		
				<c:forEach items="${timelineJson }" var="timeline">
				
				{
		            "start_date": {
		                "year":			fn_dateParse("${timeline.DATE}")[0],
		                "month":		fn_dateParse("${timeline.DATE}")[1],
		                "day": 			fn_dateParse("${timeline.DATE}")[2],
		                "hour": 		fn_dateParse("${timeline.DATE}")[3],
		                "minute": 		fn_dateParse("${timeline.DATE}")[4],
		                "second": 		fn_dateParse("${timeline.DATE}")[5],
		                "millisecond": 	"",
		                "format": 		""
		            },
		            "media": {
		                	"url": fn_urlDefault("${timeline.IMAGE_URL}"),
		                	"credit": "<a href ='openBoardList.do' id = 'board'>게시판으로</a>"
		            },
		            "text": {
		            	
		                "headline":"${timeline.TITLE}", 
		                "text": fn_contentSlice("${timeline.CONTENTS}")
		            },
		            "autolink" : "true"
		        },
				</c:forEach>
		       
		    ]
		
    };
    window.timeline = new TL.Timeline('timeline', timelineJson,additionalOptions);
    
   
      
      function fn_dateParse(str){ //date parse
  		var dateList = new Array();
      	var date = str.split(/[-:. ]/);
      	dateList.push(date[0]);	//year
      	dateList.push(date[1]);	//month
      	dateList.push(date[2]);	//day
      	dateList.push(date[3]);	//hour
      	dateList.push(date[4]);	//minute
      	dateList.push(date[5]);	//second
      	
      	return dateList;
  	}
      function fn_urlDefault(url){
      	if(url == ""){
      		return "http://dev.naver.com/dbimage.php?id=3955";
      	}
      		
      	return url;
      }
      
      function fn_contentSlice(content){ 	//content를 200글자 이하로 축소 
      	if(content.length>200){
      		return content.slice(0,200);
      	}
      	return content;
      
      }
   
        
    
     /*  $(document).ready(function(){
			$("#board").on("click", function(e){ //제목 
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
      });
      function fn_openBoardDetail(obj){
			 var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/sample/openBoardDetail.do' />");
			comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
			comSubmit.submit(); 
		}
		 */
    
     
      </script>
 
    
      
    
  </body>
</html>

</body>
</html>