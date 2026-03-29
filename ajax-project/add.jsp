<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="../css/style.css">
</head>
<body>
	<jsp:include page="../component/header.jsp"></jsp:include>
	<section class="busan-info-section">
    	<div class="inner">
			<div class="container">
				<section class="board-container">
		            <div class="board-select-wrap">
		                <a class="board-wrtie-btn" href="./add.do">글쓰기</a>
		                <ul class="board-select-tab">
		                    <li>all</li>
		                    <li>nice</li>
		                </ul>
		            </div>
		            <div class="board-list-wrap">
		            	<div class="board-form-container">
			            	<div class="board-form-title-wrap">
				                <h1 class="board-title">입력 페이지</h1>
				            </div>
			            <div class="board-form-wrap">
			                <div>
			                    <h4>제목</h4>
			                    <input type="text" id="bbsTitle"/>
			                </div>
			                <div>
			                    <h4>본문</h4>
			                    <textarea id="bbsContent"></textarea>
			                </div>
			                <div class="board-detail-btn-wrap">
			                	<button class="detail-cancle-btn" onclick="history.back();">취소</button>
								<button id="modifyBtn" onclick="insertFunc();">작성</button>
			                </div>
			            </div>
			        </div>
		            	<div id="list-controls"></div>
		            </div>
		            <div class="board-recommend-wrap">
		                <div class="board-about-recommend">
		                    <h4>Top Trend</h4>
		                    <p>1.asd</p>
		                    <p>2.asd</p>
		                    <p>3.asdasd</p>
		                    <p>4.asdasd</p>
		                </div>
		            </div>
        		</section>
			</div>
		</div>
	</section>

	<jsp:include page="../component/footer.jsp"></jsp:include>
		
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		var $userID=localStorage.getItem("userID");
		function insertFunc(){
			var $bbsTitle=$('#bbsTitle').val();
			var $bbsContent=$('#bbsContent').val();
			if($bbsTitle==null || $bbsTitle==""){
				alert('제목을 입력하세요.');
				$('#bbsTitle').focus();
				return;
			}
			if($bbsContent==null || $bbsContent==""){
				alert('내용을 입력하세요.');
				$('#bbsContent').focus();
				return;
			}
			var detailUrl = "./insert.do?userID="+encodeURIComponent($userID)
					+"&bbsTitle="+encodeURIComponent($bbsTitle)
					+"&bbsContent="+encodeURIComponent($bbsContent);
			console.log(detailUrl);
			$.ajax({
				url: detailUrl,
				type: 'POST',
				success : function(data){
					alert('작성 완료');
					location.href="./board.do";
				},
				error:function(){
					alert('작성 실패');
					location.href="./board.do";
			    }
			});
		};
	</script>
</body>
</html>