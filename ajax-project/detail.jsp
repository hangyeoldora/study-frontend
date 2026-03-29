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
				                <h1 class="board-title">수정 페이지</h1>
				            </div>
			            <div class="board-form-wrap">
			            <input type="hidden" id="userID"/>
			                <div>
			                    <h4>제목</h4>
			                    <input type="text" id="bbsTitle"/>
			                </div>
			                <div>
			                    <h4>본문</h4>
			                    <textarea id="bbsContent"></textarea>
			                </div>
			                <div class="board-detail-btn-wrap">
			                    
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
		$(function(){
			var urlParams = new URL(location.href).searchParams;
			var $bbsIdx = urlParams.get("bbsIdx");
			detailFunc($bbsIdx);
			$(document).on("click","#modifyBtn",function(){
				var $bbsTitle=$('#bbsTitle');
				var $bbsContent=$('#bbsContent');
					var updateUrl="./update.do?bbsIdx="+$bbsIdx+"&bbsTitle="+encodeURIComponent($bbsTitle.val())
					+"&bbsContent="+encodeURIComponent($bbsContent.val());
					$(this).attr("onclick",updateFunc(updateUrl));
			});
			$(document).on("click","#deleteBtn",function(){
					var deleteUrl="./delete.do?bbsIdx="+$bbsIdx;
					var deleteConfirm = confirm('삭제를 진행하시겠습니까?');
					if(deleteConfirm)
						$(this).attr("onclick",deleteFunc(deleteUrl));
			});
		});
		function updateFunc(updateUrl){
			$.ajax({
				url: updateUrl,
				type: 'POST',
				success : function(data){
					alert('수정에 성공했습니다.');
					location.href="./board.do";
				},
				error:function(){
			        alert("수정에 실패했습니다.");
			        location.href="./board.do";
			    }
			});
		}
		function deleteFunc(deleteUrl){
			$.ajax({
				url: deleteUrl,
				type: 'POST',
				success : function(data){
					alert('삭제에 성공했습니다.');
					location.href="./board.do";
				},
				error:function(){
			        alert("삭제에 실패했습니다.");
			        location.href="./board.do";
			    }
			});
		}
		function detailFunc($bbsIdx){
			var searchUrl = "./detail.do?bbsIdx="+$bbsIdx;
			$.ajax({
				url: searchUrl,
				type: 'POST',
				success : function(data){
					var detailList = JSON.parse(data);
					detailInnerHTML(detailList);
				},
				error:function(){
			        console.log("데이터 읽어오기 실패");
			    }
			});
		};
		function detailInnerHTML(list){
			var $bbsTitle=$('#bbsTitle');
			var $bbsContent=$('#bbsContent');
			var $boardBtnWrap=$('.board-detail-btn-wrap');
			var $boardTitleWrap=$('.board-form-title-wrap');
			var userID=localStorage.getItem("userID");
			var items=list.result;
			if(items.length!=0){
				items.map((item,i)=>{
					$bbsTitle.val(item.bbsTitle);
					$bbsContent.val(item.bbsContent);
					var $div=$('<div/>').html(
						"<p>작성자 - "+item.userID+"</p>"
						+"<p>작성일자 - "+item.bbsDate+"</p>"
					);
					$boardTitleWrap.append($div);
					if(item.userID===userID){
						$boardBtnWrap.html(
							"<button class=\"detail-cancle-btn\" onclick=\"history.back();\">취소</button>"
							+"<button id=\"modifyBtn\" onclick=\"\">수정</button>"
							+"<button id=\"deleteBtn\" onclick=\"\">삭제</button>"
						);
					} else {
						$boardBtnWrap.html("<a class=\"detail-list-btn\" href=\"./board.do\">목록</button>");
					}
				});
			} else{
				alert('상세 정보 불러오기에 실패했습니다.');
				location.href="./board.do";
			}
		}
	</script>
</body>
</html>