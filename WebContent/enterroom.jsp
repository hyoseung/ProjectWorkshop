<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	boolean isSession = false;
	String user_email = null;
	user_email = (String)session.getAttribute("user_email");
	
	if(user_email != null)
		isSession = true;
	System.out.println("세션 ID : " + user_email);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>공작소 들어가기</title>
<link href="./css/master.css" type="text/css" rel="stylesheet"/>
<link href="./css/enterroom.css?ver=5" type="text/css" rel="stylesheet"/>
<script src="./js/jquery-1.9.1.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="./js/enterroom.js?ver=3"></script>
<script src="./js/master.js"></script> 
</head>

<body>
<input id="user-email" type="hidden" value="<%=user_email%>">
	<div class="boxA">
		<div class="top-back">
    	</div>
		<div class="title-div">
	    	<p class="top-big-p">프로젝트<span id="big-p-span">공작소</span></p>
	        <p class="top-small-p">Project Workshop</p>
	    </div>
	    <div class="login">
        	<%if(!isSession){%>
        		<a id="login-label">로그인</a>
        	<%} else{%>
        		<a id="logout-label">로그아웃</a>
        	<%}%>
	    </div>
        <div class="regist">
        	<%if(!isSession){%>
        		<a id="regist-label">회원가입</a>
        	<%} else{%>
        		<a id="modify-label">정보수정</a>
        	<%}%>
	    </div>
    </div>
    
	<table id="room-list-table" align="center">
    	<tr>
    		<td id="enter-room-title" colspan="3">내 공작소 목록</td>
    	</tr>
    </table>
</body>
</html>
