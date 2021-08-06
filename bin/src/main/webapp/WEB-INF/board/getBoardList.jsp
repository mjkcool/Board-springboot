<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>글 목록</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
    body{
        font-family: 'Noto Sans KR', sans-serif;
    }
    table{
        max-width: 1000px;
    }
    tr{
        cursor: pointer;
    }
</style>
</head>
<body>
<center>
	<h2 class="m-5">게시글 목록</h2>
	<table class="table table-hover">
		<thead><tr>
			<th scope="col">번호</th>
			<th scope="col">제목</th>
			<th scope="col">작성자</th>
			<th scope="col">등록일</th>
			<th scope="col">조회수</th>
        </tr></thead>
        <tbody>
            <c:forEach var="board" items="${boardList }">
            <tr onclick="location.href='getBoard?seq=${board.seq}'">
                <th scope="row">${board.seq }</td>
                <td>${board.title }</td>
                <td>${board.writer }</td>
                <td><fmt:formatDate value="${board.createDate}" pattern="yyyy/MM/dd"></fmt:formatDate></td>
                <td>${board.cnt }</td>		
            </tr>
            </c:forEach>
        </tbody>
	</table>
	<br>
	<input onclick="location.href='insertBoard'" value="새글 등록하기" class="btn btn-primary mt-4"/>
</center>
</body>
</html></html>