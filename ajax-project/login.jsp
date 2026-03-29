<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<jsp:include page="../component/header.jsp"></jsp:include>
	<section class="login-section flex justify-center align-center">
     <div class="inner">
         <div class="login-container flex justify-between">
             <div class="left-wrap">
            
                 <img src="./imgs/chosun.jpg" alt="">
             </div>
             <div class="right-wrap flex justify-center align-center">
                 <div class="form-table flex align-center justify-center" id="#">
                 <div>
                     	<div>
                             <p>로그인</p>
                         </div>
                         <div>
                             <p>아이디</p>
                             <input type="text" placeholder="아이디를 입력하세요." id="userID" name="userID" maxlength="15" />
                         </div>
                         <div>
                             <p>비밀번호</p>
                             <input type="password" placeholder="비밀번호를 입력하세요." id="userPW"  name="userPW" maxlength="20" />
                         </div>
                         <div>
                        	<button onclick="loginFunc();">Login</button>
                        </div>
                         <div>
                             <p>아이디가 없으신가요?</p>
                             <a href="./join.do">회원가입</a>
                         </div>
                 </div>
                 </div>
             </div>
         </div>
     </div>
 </section>
	<jsp:include page="../component/footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
			function loginFunc(){
				var $userID=$('#userID');
				var $userPW=$('#userPW');
				if($userID.val()==null){
					alert("아이디를 입력하세요");
					$userID.focus();
				}
				if($userPW.val()==null){
					alert("비밀번호를 입력하세요.");
					$userPW.focus();
				}
				var loginUrl="./login.do?userID="+encodeURIComponent($userID.val())
						+"&userPW="+encodeURIComponent($userPW.val());
				$.ajax({
					url: loginUrl,
					type: 'POST',
					success: function(data){
						if(data==1){
							alert($userID.val() + " 님 환영합니다.");
							location.href="../bbs/board.do";
							localStorage.setItem("userID", $userID.val());
						} else if(data==0){
							alert("아이디 혹은 비밀번호를 확인해주세요.");
						} else if(data==-1){
							alert("아이디가 없습니다.");
						} else if(data==-2 || data==-9){
							alert("서버 에러 발생");
						}
					},
					error: function(){
						alert("로그인 처리 불가");
					}
				});
			};	
	</script>
</body>
</html>