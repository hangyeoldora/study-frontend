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
                             <p>회원가입</p>
                         </div>
                         <div class="form-group">
                         <p>아이디</p>
						<input type="text" class="form-control" placeholder="아이디" id="userID" maxlength="15"/>
					</div>
					<div class="form-group">
					<p>비밀번호</p>
						<input type="password" class="form-control" placeholder="비밀번호" id="userPW" maxlength="20"/>
					</div>
					<div class="form-group">
					<p>이름</p>
						<input type="text" class="form-control" placeholder="이름" id="userName" maxlength="20"/>
					</div>
					<div class="form-group">
					<p>이메일</p>
						<input type="email" class="form-control" placeholder="이메일" id="userEmail" maxlength="20"/>
					</div>
					<div class="form-group" style="text-align:center;">
						<p>성별</p>
						<div>
							<label>남자</label><input type="radio" id="userGender" autocomplete="off" value="남자" checked/><br/>
							<label>여자</label><input type="radio" id="userGender" autocomplete="off" value="여자"/><br/>
						</div>
						<div>
                        	<button onclick="signUpFunc();">회원가입</button>
                        </div>
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
		function signUpFunc(){
			
			var userID=$('#userID').val();
			console.log(userID);
			var userPW=$('#userPW').val();
			var userName=$('#userName').val();
			var userGender=$('input[name="userGender"]:checked').val();
			var userEmail=$('#userEmail').val();
			if(userID==null || userID==""){
				alert("아이디를 입력하세요.");
				$('#userID').focus();
				return;
			}
			if(userPW==null || userPW==""){
				alert("비밀번호를 입력하세요.");
				$('#userPW').focus();
				return;
			}
			if(userName==null || userName==""){
				alert("닉네임을 입력하세요.");
				$('#userName').focus();
				return;
			}
			
			var signUpUrl="./join.do?userID="
					+encodeURIComponent(userID)
					+"&userPW="+encodeURIComponent(userPW)
					+"&userName="+encodeURIComponent(userName)
					+"&userGender="+encodeURIComponent(userGender)
					+"&userEmail="+encodeURIComponent(userEmail)
			console.log(signUpUrl);
			$.ajax({
				url: signUpUrl,
				type: 'POST',
				success: function(data){
					alert('회원가입에 성공하였습니다.');
					location.replace('../index.do');
				},
				error:function(){
					alert('회원가입에 실패하였습니다.');
					location.replace('../index.do');
			    }
			});
		}
	</script>
</body>
</html>