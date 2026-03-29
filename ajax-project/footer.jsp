<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String root = request.getContextPath(); %>
		<footer id="footer">
		    <div class="container">
		        <div class="inner flex justify-between">
		            <div class="copyright-wrap flex">
		                <span>© 2023 LHG</span>
		                <span>·</span>
		                <span>sitemap</span>
		            </div>
		            <div class="translate-wrap">
		                <ul class="flex justify-between">
		                    <li><img src="<%=root %>/imgs/earth.png" alt="earth icon"></li>
		                    <li class="translator">language</li>
		                    <li>contact</li>
		                </ul>
		            </div>
		        </div>
		    </div>
		</footer>
	</main>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="<%=root %>/js/jquery-ui-1.10.4.custom.min.js"></script>
<script src="<%=root %>/js/index.js"></script>
<script type="text/javascript">
	$(function(){
		var localUserID=localStorage.getItem("userID");
		var userStatus=$('#user-status');
		var loginLink=$('<a/>');
		if(localUserID!=null){
			userStatus.html("<button onclick=\"logoutFunc();\">Logout</button>");
		} else{
			userStatus.html("<a href=\"<%=root %>/user/login.do\">Login</a>");
		}
	});
	function logoutFunc(){
		localStorage.removeItem("userID");
		alert('로그아웃 성공');
		location.href="<%=root %>/index.do";
	}
</script>