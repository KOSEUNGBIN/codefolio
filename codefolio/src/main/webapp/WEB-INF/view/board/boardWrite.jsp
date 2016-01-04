<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>

</head>
<body>
<%@ include file="/WEB-INF/include/include-body.jspf" %>


	<form id="frm" enctype="multipart/form-data">
	
	<div class="row" style="padding:15px 15px 15px 15px;">
		<div class="col-md-1"></div>
  		<div class="col-md-10">
  			<div class="dropdown">
  			<button class="btn btn-default btn-lg dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
    				주제
    			<span class="caret"></span>
  			</button>
  			
  			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
  				<c:forEach var="topic" items="${topicList }">
            		<li role="presentation">
            			<input type="hidden" id="TOPIC_IDX" value="${topic.TOPIC_IDX }">
            			<a role="menuitem" tabindex="${topic.TOPIC_IDX }">"${topic.NAME }"</a>
            		</li>
        		</c:forEach>
  			</ul>
			</div>
  		</div>
	</div>
	
	<div class="row" style="padding:15px 15px 15px 15px;">
		<div class="col-md-1"></div>
  		<div class="col-md-10"">
  			<div class="form-group">
    			<label for="TITLE">제목 </label>
    			<input type='text' class="form-control" id="TITLE" name="TITLE" placeholder="제목을 입력하세요" style="height:40px;">
    		</div>
  		</div>
	</div>
	<div class="row" style="padding:5px 15px 15px 15px;">
		<div class="col-md-1"></div>
  		<div class="col-md-10"">
  			<div class="form-group">
    			<label for="CONTENTS">내용 </label>
    			<textarea id="CONTENTS" name="CONTENTS"></textarea>
  			</div>
  		</div>
	</div>
	<div class="row" style="padding:5px 15px 15px 15px;">
		<div class="col-md-1"></div>
  		<div class="col-md-10"">
  			<a href="#this" class="btn" id="write">작성하기</a>
			<a href="#this" class="btn" id="list">목록으로</a>
  		</div>
	</div>
	
	</form>
	
	
	<script type="text/javascript">
	
	
	 var ckeditor_config = {
			 	
	            resize_enabled : true, // 에디터 크기를 조절가
	            enterMode : CKEDITOR.ENTER_BR , // 엔터키를 <br> 로 적용함.
	            shiftEnterMode : CKEDITOR.ENTER_P ,  // 쉬프트 +  엔터를 <p> 로 적용함.
	            toolbarCanCollapse : true ,
	            height:'400',
	            removePlugins : "elementspath",
	            filebrowserUploadUrl: "http://localhost:9090/codefolio/board/insertFile.do" , // 파일 업로드를 처리 할 경로 설정.
	            
	            // 에디터에 사용할 기능들 정의
	            toolbar : [
	              [ 'Source', '-' , 'NewPage', 'Preview' ],
	              [ 'Cut', 'Copy', 'Paste', 'PasteText', '-', 'Undo', 'Redo' ],
	              [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript'],
	              [ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock' ],
	              '/',
	              [ 'Styles', 'Format', 'Font', 'FontSize' ],
	              [ 'TextColor', 'BGColor' ],
	              [ 'Image', 'Flash', 'Table' , 'SpecialChar' , 'Link', 'Unlink']

	            ]

	          };

	 CKEDITOR.replace( "CONTENTS" , ckeditor_config );
	
	 	$(".dropdown-menu li a").click(function(){ // 버튼 이름 변경 
	 		
	 		$("#dropdownMenu1").html($(this).text()+' <span class="caret"></span>');
	 		topic_idx = $(this).parent().find("#TOPIC_IDX").val();
		}); 
	 
	  $(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});

			$("#write").on("click", function(e) { //작성하기 버튼
				e.preventDefault();
				fn_insertBoard();
			});
			
		});
	  

		function fn_openBoardList() { //목록 버튼
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/front/blog.do' />");
			comSubmit.submit();

		}

		function fn_insertBoard() { //작성 버튼 
			var comSubmit = new ComSubmit('frm');
			comSubmit.setUrl("<c:url value='/board/insertBoard.do' />");
			if(topic_idx == null){
				topic_idx = 0;
			}
			comSubmit.addParam("TOPIC_IDX",topic_idx);
			comSubmit.submit();
		}
		
		
	</script>
</body>
</html>