<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String filePath = request.getParameter("filePath"); 
if(filePath==null){
	filePath="a";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<style type="text/css">
*{
margin: 0px;
padding: 0px;
box-sizing: border-box;
}


#container{
/* width : 500px;
height : 300px;
border: 1px solid;
display: flex;
justify-content: space-around;
text-align: center;
margin: 0 auto; */
overflow: hidden;
width: 500px;
height: 300px;
border: 1px solid red;
}

nav{
/* margin: auto; */
float: left;
width: 30%;
}


ul{
margin-top: 70px;
}
li{
margin-bottom: 10px;
}

li a{
text-decoration: none;

}

article{
/* margin: auto; */
float: left;
width: 70%;
text-align: center;
}

article h1{
margin-top: 70px;
}



</style>
</head>
<body>
<div id=container>

<nav>
<h3>메뉴영역</h3>
<jsp:include page="menu.jsp"></jsp:include>
</nav>

<article>
<h3>내용영역</h3>
<jsp:include page='<%=filePath+".jsp"%>'></jsp:include>
</article>

</div>
</body>
</html>