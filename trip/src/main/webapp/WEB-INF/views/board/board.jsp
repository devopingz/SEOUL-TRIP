<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SEOUL TRIP 여행공유게시판</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/_css/mainStyle.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/_js/mainJs.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link href="${pageContext.request.contextPath}/_css/list.css" type="text/css" rel="stylesheet">
	
	<script type="text/javascript">
    
        $(document).ready(function () {
            if(${board == "boarddelok"}){
                alert("게시글이 삭제되었습니다.");
            }

            return false;
        });
        
    </script>
    	
   <div>
        <jsp:include page="../header.jsp"/>
   </div>
    
</head>
<body>

<div id="bbsList" style="height:900px; margin-left:17%">

	<div id="bbsList_title">
		서울 여행 후기 공유 게시판
	</div>
	
	<div id="bbsList_header">
		<div id="leftHeader">	
		<form action="boardserach" method="post" name="searchForm" style="height:24px">
			<select name="searchKey" id="searchKey" class="selectField" style="height:30px">
				<option value="title">제목</option>
				<option value="id">작성자</option>
				<option value="email">이메일</option>
			</select>
			<input type="text" name="searchValue" id="searchValue" class="textField" style="height:24px"/>
			<input type="submit" value=" 검 색 " class="btn2" style="height:28px" onclick="javascript: form.action='/boardsearch';"/>		
		</form>				
		</div>
		<div id="rightHeader">
			<input type="button" value=" 글 작성하기 " class="btn2" style="height:30px"
			onclick="javascript:location.href='<%=cp%>/boardwrite';"/>			
		</div>	
	</div>
	
	<div style="text-align:center; margin-top:2%">
		<table width="1200px" style="border-collapse: collapse; border-bottom:1px solid #DBDBDB">
		<tr style="height:35px; line-height: 40px; color: black; font-size: 18px; background-color: #E6E4E6; border-bottom:1px solid #DBDBDB">
			<th style="width:100px">번호</th>	
			<th style="width:500px">제목</th>
			<th style="width:150px">작성자</th>
			<th style="width:150px">닉네임</th>
			<th style="width:200px">이메일</th>
			<th style="width:150px">작성일</th>
		</tr>
		<c:forEach var="board" items="${boardList}">
		<tr style="height:35px; line-height: 30px; text-align:center; font-size: 16px;  border-bottom:2px solid #DBDBDB">
			<td>${board.num}</td>
			<td><a href="/boardread?num=${board.num}">${board.title}</a></td>
			<td>${board.id}</td>
			<td>${board.nickname}</td>
			<td>${board.email}</td>
			<td><fmt:formatDate pattern="yyyy/MM/dd" value="${board.date}"/><td>
		</tr>
		</c:forEach>
		</table>
	</div>
	
		<div style="margin-top:1%; margin-left:2%">
			<c:if test="${boardList.size() == 0 }">
				<h4>등록된 게시글이 없습니다.</h4>
			</c:if>
		</div>
		
	</div>

</body>

 	<div>
        <jsp:include page="../footer.jsp"/>
    </div>
</html>