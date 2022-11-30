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

<div><jsp:include page="../header.jsp"/></div>

</head>
<body>

<div id="bbs">
	<div id="bbs_title">
		서울 여행 후기 공유 게시판
	</div>
	
<form method="post" name="board" onsubmit="return boardDeleteCheck()" enctype="multipart/form-data">

	<c:forEach var="board" items="${boardList}">		
	
	<div id="bbsCreated">
		
		<div class="bbsCreated_bottomLine">
			<dl style="margin-top:-2.2%">
				<dt style="font-size:13px; font-family:sans-serif">제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
				<dd style="font-size:13px; font-family:sans-serif">
					${board.title}
				</dd>
			</dl>		
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl style="margin-top:-2.2%">
				<dt style="font-size:13px; font-family:sans-serif">작 성 자</dt>
				<dd style="font-size:13px; font-family:sans-serif">
					${board.id}
			</dl>		
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl style="margin-top:-2.2%">
				<dt style="font-size:13px; font-family:sans-serif">E-Mail</dt>
				<dd style="font-size:13px; font-family:sans-serif">
					${board.email}
				</dd>
			</dl>		
		</div>
		
		<div id="bbsCreated_content">
			<dl style="margin-top:-2.2%">
				<dt style="font-size:13px; font-family:sans-serif">내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
				<dd>
				 <textarea style="border:none; outline:none; resize:none; font-size:13px; font-family:sans-serif; padding-top:2%"
				 rows=8; cols=65; readonly>${board.content}</textarea>
				</dd>
			</dl>
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl style="margin-top:-2.2%">
				<dt style="font-size:13px; font-family:sans-serif">작성일자</dt>
				<dd style="font-size:13px; font-family:sans-serif">
				<fmt:formatDate pattern="yyyy/MM/dd" value="${board.date}"/>
				&nbsp;
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
		<input type="hidden" name="num" id="num" size="30" 
				maxlength="30" class="boxTF" value="${board.num}" />
		<input type="hidden" name="id" id="id" size="30" 
				maxlength="30" class="boxTF" value="${board.id}" />
		<input type="hidden" name="pw" id="pw" size="30" 
				maxlength="30" class="boxTF" value="${board.password}" />		
	</c:forEach>



	<div id="bbsCreated_footer">
		<input type="button" value=" 목록으로 " class="btn2" onclick="location.href='${pageContext.request.contextPath}/board'" style="margin-left:75%; margin-top:2%; height:33px"/>
		<input type="submit" value=" 삭제하기 " class="btn2" onclick="javascript: form.action='/boarddelete';"style="margin-left:3%; margin-top:2%; height:33px"/>
	</div>
	
	
</form>
</div>


</body>

 	<div>
        <jsp:include page="../footer.jsp"/>
    </div>
</html>