<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SEOUL TRIP 여행공유게시판 글쓰기</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/_css/mainStyle.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/_css/created.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/_js/mainJs.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

   <div>
        <jsp:include page="../header.jsp"/>
    </div>
</head>
<body>

<div id="bbs">
	<div id="bbs_title">
		서울 여행 후기 공유 게시판
	</div>
	
	<form method="post" name="board" onsubmit="return BoardMakeCheck()" enctype="multipart/form-data">
	<div id="bbsCreated">
		
		<div class="bbsCreated_bottomLine">
			<dl style="margin-top:-2.3%">
				<dt style="font-size:13px; font-family:sans-serif">제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
				<dd >
				<input type="text" name="title" id="title" size="80" 
				maxlength="100" class="boxTF" style="font-size:13px; font-family:sans-serif"/>
				</dd>
			</dl>		
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl style="margin-top:-2.2%">
				<dt style="font-size:13px; font-family:sans-serif">작 성 자</dt>
				<dd>
				<input type="text" name="id" id="id" size="35"
				maxlength="20" class="boxTF" value="${member.id}" style="font-size:13px; font-family:sans-serif" readonly/>
				</dd>
			</dl>		
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl style="margin-top:-2.2%">
				<dt style="font-size:13px; font-family:sans-serif">닉 네 임</dt>
				<dd>
				<input type="type" name="nickname" id="nickname" size="35" 
				maxlength="7" class="boxTF" value="${member.nickname}" style="font-size:13px; font-family:sans-serif" readonly/>
				&nbsp;
				</dd>
			</dl>		
		</div>	
	
		
		<div class="bbsCreated_bottomLine">
			<dl style="margin-top:-2.2%">
				<dt style="font-size:13px; font-family:sans-serif">E-Mail</dt>
				<dd>
				<input type="text" name="email" id="email" size="35" 
				maxlength="50" class="boxTF" value="${member.email}" style="font-size:13px; font-family:sans-serif" readonly/>
				</dd>
			</dl>		
		</div>
		
		<div id="bbsCreated_content" style="height:200px";>
			<dl style="margin-top:-2.2%">
				<dt style="height:200px; font-size:13px; font-family:sans-serif"">내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
				<dd>
				<textarea rows="10" cols="80" name="content" id="content" resize="none"
				class="boxTA" style="resize:none; height:180px; font-size:13px; font-family:sans-serif"></textarea>
				</dd>
			</dl>
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl style="margin-top:-2.2%">
				<dt style="font-size:13px; font-family:sans-serif">비밀번호</dt>
				<dd>
				<input type="text" name="password" id="password" size="35" 
				maxlength="50" class="boxTF" style="font-size:13px; font-family:sans-serif"/>
				</dd>
			</dl>		
		</div>
		
	
	</div>
	
	<div id="bbsCreated_footer" style="margin-top:1.5%; margin-bottom:-1%">
		<input type="submit" value=" 등록하기 " class="btn2" onclick="javascript: form.action='/boardwriteok';" 
		style="margin-right:5%; height:33px"/>
		<input type="reset" value=" 다시입력 " class="btn2" 
		onclick="document.myForm.subject.focus();" style="margin-right:2%;  height:33px"/>
		<input type="button" value=" 작성취소 " class="btn2" 
		onclick="javascript:location.href='<%=cp%>/board';" style="margin-left:3%;  height:33px"/>	
	</div>
</form>

</div>


</body>

 	<div>
        <jsp:include page="../footer.jsp"/>
    </div>
</html>