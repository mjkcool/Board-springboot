<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>글 상세</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
    body{
        font-family: 'Noto Sans KR', sans-serif;
    }
    form{
        max-width: 600px;
        text-align: left;

    }
    textarea{
        height: 200px;
    }
    #btns{
        text-align: right;
    }

</style>
</head>
<body>
<center>
	<h2 class="m-5">게시글 상세</h2>
	
	<form action="updateBoard" method="post">
        <input name="seq" type="hidden" value="${board.seq }"/>
        <div class="input-group mb-3">
            <span class="input-group-text">제목</span>
            <input type="text" class="form-control" name="title" value="${board.title }">
        </div>

        <div class="input-group mb-3" style="width: 50%;">
            <span class="input-group-text">작성자</span>
            <input type="text" name="writer" class="form-control" size="10" value="${board.writer }" disabled>
        </div>

        <div class="input-group">
            <span class="input-group-text">내용</span>
            <textarea name="content" class="form-control">${board.content}</textarea>
        </div>
        <label class="col-form-label">등록일 <fmt:formatDate value="${board.createDate }" pattern="yyyy-MM-dd"></fmt:formatDate></label>
         / 
        <label class="col-form-label">조회수 ${board.cnt }</label>
        
        <div id="btns">
            <input type="submit" value="수정하기" class="btn btn-warning mt-4"/>
            <button onclick="location.href='?seq=${board.seq }'" class="btn btn-danger mt-4">삭제하기</button>
            <button onclick="location.href='getBoardList'" class="btn btn-primary mt-4">목록</button>
        </div>
	</form>
		
</center>
</body>
</html>