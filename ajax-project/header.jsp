<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String root=request.getContextPath();

		String userID=null;
		if(session.getAttribute("userID")!=null){
			userID=(String)session.getAttribute("userID");
		}
    %>
<div class="wrap">
	 <div id="translate-modal">
	    <div class="inner">
	        <div class="translate-container">
	            <p>translate</p>
	            <p><a class="close-btn" href="#!">X</a></p>
	            <hr />
	            <div class="translate-lang-wrap flex justify-between align-center">
	                <a class="ko" href="">한국어</a>
	                <a class="en" href="">English</a>
	                <a class="ja" href="">Japanese</a>
	                <a class="cn" href="">Chinese</a>
	                <a class="ko" href="">Spanish</a>
	                <a class="sa" href="">lang1</a>
	                <a class="sa" href="">lang2</a>
	                <a class="sa" href="">lang3</a>
	            </div>
	        </div>
	    </div>
	</div>
    <main class="container">
 		<header id="header">
 			<div class="user-sec flex align-center">
				<div id="user-status" class="inner flex flex-end align-center">
					
				</div>
			</div>
        	<div class="inner">
  				
           		<nav id="nav" class="flex justify-between align-center">
                	<a class="logo" href="<%=root %>/index.do"><img class="logo-img" src="<%=root %>/imgs/logo_origin.png" alt="메인 로고" /></a>
                	<ul class="menu-list flex justify-between align-center">
                    	<li class="menu"><a href="<%=root %>/index.do">home</a></li>
                    	<li class="menu">
                        	<a href="<%=root %>/about.do">about</a>
                        	<ul class="dropdown">
                            	<li><a href="<%=root %>/about.do">부산</a></li>
                            	<li><a href="<%=root %>/contact.do">contact</a></li>
                        	</ul>
                    	</li>
                    	<li class="menu">
                        	<a href="<%=root %>/place.do">place</a>
                        	<ul class="dropdown">
                            	<li><a href="<%=root %>/place.do">여행지</a></li>
                            	<li><a href="<%=root %>/walk.do">도보여행</a></li>
                            	<li><a href="<%=root %>/culture.do">문화&축제</a></li>
	                        </ul>
	                    </li>
	                    <li class="menu"><a href="<%=root %>/bbs/board.do">board</a></li>
	                    
	                    <div class="menu-background"></div>
                	</ul>
            	</nav>
	        </div>
		</header>