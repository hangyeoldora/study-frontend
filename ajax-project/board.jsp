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
		            	<div class="board-search-sec">
		                    <input id="inputBbsTitle" placeholder="입력하세요." onkeyup="searchFunc()" type="text" />
		                    <button type="button" onclick="searchFunc();">검색</button>
		                </div>
		            	<ul id="boardWrap">
			                
		            	</ul>
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
			searchFunc();
			$(document).on("click",".detail-link",function(){
				if(localStorage.getItem("userID")==null || localStorage.getItem("userID")==""){
					alert('로그인이 필요합니다.');
					$(this).attr("href","../user/login.jsp");
				}
			});
			$(document).on("click",".board-wrtie-btn",function(){
				if(localStorage.getItem("userID")==null || localStorage.getItem("userID")==""){
					alert('로그인이 필요합니다.');
					$(this).attr("href","../user/login.jsp");
				}
			});
		});
		function searchFunc(){
			var searchText=$('#inputBbsTitle').val();
			var listControls="$('#list-controls')";
			var searchUrl = "./search?bbsTitle="+searchText;
			$.ajax({
				url: searchUrl,
				type: 'POST',
				success : function(data){
					var searchList = JSON.parse(data);
					searchInnerHTML(searchList);
				},
				error:function(){
			        console.log("데이터 읽어오기 실패");
			    }
			});
		}
		function searchInnerHTML(list){
			var ulWrapper= $('#boardWrap');
			ulWrapper.html("");
			var items=list.result;
			if(items.length!=0){
				items.map((item,i)=>{
					var li=$('<li/>').html(
						"<a class=\"detail-link\" href=\"./detail.do?bbsIdx="+item.bbsIdx+"\">"
						+"<p class=\"board-date\">"+item.bbsDate+"</p>"
						+"<h3>"+item.bbsTitle+"</h3>"
						+"<div class=\"user-info-sec\">"
						+"<img class=\"user-image\" src=\"../imgs/user-icon.png\" alt=\"user image\" />"
						+"<p class=\"user-name\">"+item.userID+"</p>"
						+"</div>"
						+"<p class=\"board-content\">"+item.bbsContent+"</p>"
						+"<div class=\"btn-sec\">"
						+"<a href=\"\">Reply</a>"
						+"<a href=\"\">Share</a>"
						+"</div>"
						+"</a>"
					);
					li.addClass('flex column justify-between');
					ulWrapper.append(li);
				});
			} else{
				ulWrapper.html("검색 결과가 없습니다.");
			}
		}
	</script>
</body>
</html>