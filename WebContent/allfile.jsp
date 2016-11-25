<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	boolean isSession = false;
	String user_email = null;
	user_email = (String)session.getAttribute("user_email");
	String roomId = request.getParameter("roomId");
	System.out.println("Chat.jsp Room ID : " + roomId);
	if(user_email != null)
		isSession = true;
	
	System.out.println("채팅방 세션 ID : " + user_email);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="./css/chatmaster.css" type="text/css" rel="stylesheet"/>
<link href="./css/allfile.css" type="text/css" rel="stylesheet"/>
<script src="./js/jquery-1.9.1.min.js"></script>
<script src="./js/allfile.js"></script>
</head>
<body>
<input id="user-email" type="hidden" value="<%=user_email%>">
<input id="room-id" type="hidden" value="<%=roomId%>">
<table id="chatLayout">
	<tr>
    	<td rowspan="2" class="left-side">
            <div class="profile-div">
                <div class="profile-img-div">
                    <img class="profile-img" src="./images/null_profile.png">
                </div>
                <div class="profile-name">박효신</div>
            </div>
            <div class="left-menu">
                <div class="all-menu" id="all-menu-label">전체 메뉴</div>
                <div class="all-menu" id="workshop-info-menu">공작소정보</div>
                <div class="all-menu" id="chat-room-menu">회의실</div>
                <div class="all-menu" id="file-menu">공작소창고보기</div>
                <div class="all-menu" id="schedule-menu">공작소일정보기</div>
            </div>
        </td>
        <td id="allfile-info-content">
        	<table id="content-table">
            	<tr>
                	<td></td>
                </tr>
            </table>
        </td>
     </tr>
</table>
</body>
</html>