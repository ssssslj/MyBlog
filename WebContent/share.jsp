<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="gbk">
<title>首页_孙连杰个人博客</title>
<meta name="keywords" content="个人博客,杨青个人博客,个人博客模板,杨青" />
<meta name="description" content="杨青个人博客，是一个站在web前端设计之路的女程序员个人网站，提供个人博客模板免费资源下载的个人原创网站。" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/comm.js"></script>
<script src="js/scrollReveal.js"></script>
</head>
<body>
<header class="header-navigation" id="header">
  <nav><div class="logo"><a href="/">孙连杰个人博客</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="article_showIndex">网站首页</a></li>
      <li><a href="album_showAlbumList?currentCount=8" id="selected">我的相册</a></li>
       <li><a href="article_showlist?type=8">我的日记</a></li>
      <li><a href="article_showlist?type=1">学无止境</a></li>
      <li><a href="about.jsp">关于我</a></li>
      <li><a href="gbook.jsp">留言</a></li>
      <!-- <li><a href="info.jsp">内容页</a></li>
      <li><a href="infopic.jsp">内容页</a></li> -->
    </ul>
</nav>
</header>
<article>
  <div class="picbox">
  	<c:forEach var="album" items="${pageBean.articleList }">
  	<ul>
      <li data-scroll-reveal="enter bottom over 1s" ><a href="album_showContent?alid=${album.alid }"><i><img src="${album.img }"></i>
        <div class="picinfo">
          <h3>${album.title }</h3>
          <span>${album.digest }</span> </div>
        </a></li>
       
    </ul>
  	</c:forEach>
    
  </div>
   <c:choose>
    	<c:when test="${pageBean.totalPage<=9}">
    		<c:set var="begin" value="1"/>
    		<c:set var="end" value="9"/>
    	</c:when>
    	<c:otherwise>
    		<c:set var="begin" value="${pageBean.totalPage-4}"/>
    		<c:set var="end" value="${pageBean.totalPage+4}"/>
    	
    		<!-- 头溢出 -->
    		<c:if test="${begin < 1 }">
    			<c:set var="begin" value="1"/>
    			<c:set var="end" value="9"/>
    		</c:if>
    		
    		<!-- 尾溢出 -->
    		<c:if test="${end>pageBean.totalPage}">
    			<c:set var="begin" value="${pageBean.totalPage-8}"/>
    			<c:set var="end" value="${pageBean.totalPage }"/>
    		</c:if>
    	</c:otherwise>
    </c:choose>
    <div class="pagelist"><a class="allpage"><b><c:out value="${pageBean.totalPage}"></c:out></b></a>&nbsp;&nbsp;
    <a href="album_showAlbumList?type=1&currentPage=${pageBean.currentPage-1}">上一页</a>
    <c:forEach var="i" begin="${begin }" end="${end }">
    	<c:if test="${i== pageBean.currentPage}">
    		<a href="#" class="curPage">${i}</a>&nbsp;&nbsp;
    	</c:if>
    	<c:if test="${i!= pageBean.currentPage}">
    		<a href="album_showAlbumList?type=1&currentPage=${i}">${i}</a>&nbsp;&nbsp;
    	</c:if>
    </c:forEach>
    
    <a href="album_showAlbumList?type=1&currentPage=${pageBean.currentPage+1}" >下一页</a></div>
  </main>
</article>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank">孙连杰个人博客</a> <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">豫ICP备19011032号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
<script>
	if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
		(function(){
			window.scrollReveal = new scrollReveal({reset: true});
		})();
	};
</script>
</body>
</html>
