<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>글 작성</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
    body{
        font-family: 'Noto Sans KR', sans-serif;
    }
    h2{
       
    }
    form{
        max-width: 600px;
        text-align: right;

    }
    textarea{
        height: 200px;
    }
</style>
</head>
<body>
    <center>
        <h2 class="m-5">새글 작성하기</h2>
        
        <form action="insertBoard" method="post">

            <div class="input-group mb-3">
                <span class="input-group-text">제목</span>
                <input type="text" class="form-control" name="title">
            </div>

            <div class="input-group mb-3" style="width: 50%;">
                <span class="input-group-text">작성자</span>
                <input type="text" name="writer" class="form-control" size="10">
            </div>

            <div class="input-group">
                <span class="input-group-text">내용</span>
                <textarea name="content" class="form-control"></textarea>
            </div>
            

            <input id="submitbutton" type="submit" value="등록하기" class="btn btn-primary mt-4"/>
            
        </form>
    </center>

</body>
</html>