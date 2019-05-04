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
<title>首页_杨青个人博客 - 一个站在web前端设计之路的女技术员个人博客网站</title>
<meta name="keywords" content="个人博客,杨青个人博客,个人博客模板,杨青" />
<meta name="description" content="杨青个人博客，是一个站在web前端设计之路的女程序员个人网站，提供个人博客模板免费资源下载的个人原创网站。" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/hc-sticky.js"></script>
<script type="text/javascript" src="js/comm.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header class="header-navigation" id="header">
  <nav><div class="logo"><a href="/">孙连杰个人博客</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="article_showIndex">网站首页</a></li>
      <li><a href="album_showAlbumList?currentCount=8">我的相册</a></li>
       <li><a href="article_showlist?type=8" id="selected">我的日记</a></li>
      <li><a href="article_showlist?type=1">学无止境</a></li>
      <li><a href="about.jsp">关于我</a></li>
      <li><a href="gbook.jsp">留言</a></li>
       <!-- <li><a href="info.jsp">内容页</a></li>
      <li><a href="infopic.jsp">内容页</a></li> -->
    </ul>
</nav>
</header>
<article>
  <aside class="l_box">
 <div class="search">
      <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
        <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
        <input name="show" value="title" type="hidden">
        <input name="tempid" value="1" type="hidden">
        <input name="tbname" value="news" type="hidden">
        <input name="Submit" class="input_submit" value="搜索" type="submit">
      </form>
    </div>
    <div class="fenlei">
      <h2>文章分类</h2>
      <ul>
        <li><a href="article_showlist?type=1">学无止境（33）</a></li>
        <li><a href="#">日记（19）</a></li>
        <li><a href="album_showAlbumList?currentCount=8">相册（520）</a></li>
        <li><a href="/">美文欣赏（40）</a></li>
      </ul>
    </div>
    <div class="tuijian">
      <h2>站长推荐</h2>
      <ul>
        <c:forEach var="recommend" items="${recommendMap}">
        	<li><a href="article_showContent?aid=${recommend.key}">${recommend.value}</a></li>
        </c:forEach>
        
      </ul>
    </div>
     <div class="tuijian">
      <h2>点击排行</h2>
      <ul>
      	<c:forEach var="rank" items="${articleMap}">
        	<li><a href="article_showContent?aid=${rank.key}">${rank.value}</a></li>
        </c:forEach>
      </ul>
    </div>
<div class="cloud">
      <h2>标签云</h2>
      <ul>
        <a href="/">陌上花开</a> <a href="/">校园生活</a> <a href="/">html5</a> <a href="/">SumSung</a> <a href="/">青春</a> <a href="/">温暖</a> <a href="/">阳光</a> <a href="/">三星</a><a href="/">索尼</a> <a href="/">华维荣耀</a> <a href="/">三星</a> <a href="/">索尼</a>
      </ul>
    </div>
    <div class="guanzhu">
      <h2>关注我 么么哒</h2>
      <ul>
        <img src="images/wechat.jpg">
      </ul>
    </div>
  </aside>
  <main class="r_box">
  <c:forEach var="article" items="${pageBean.articleList }">
  	 <li><i><a href="article_showContent?aid=${article.aid}"><img src="${article.imgUrl }"></a></i>
      <h3><a href="article_showContent?aid=${article.aid}">${article.title }</a></h3>
      <p>${article.digest }</p>
    </li>
  </c:forEach>
    
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
    <a href="article_showlist?type=0&currentPage=${pageBean.currentPage+1}">上一页</a>
    <c:forEach var="i" begin="${begin }" end="${end }">
    	<c:if test="${i== pageBean.currentPage}">
    		<a href="#" class="curPage">${i}</a>&nbsp;&nbsp;
    	</c:if>
    	<c:if test="${i!= pageBean.currentPage}">
    		<a href="article_showlist?type=0&currentPage=${i}">${i}</a>&nbsp;&nbsp;
    	</c:if>
    </c:forEach>
    
    <a href="article_showlist?type=0&currentPage=${pageBean.currentPage+1}" >下一页</a></div>
  </main>
</article>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank">孙连杰个人博客</a> <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">豫ICP备19011032号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
