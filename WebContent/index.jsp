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
<meta charset="utf-8">
<title>首页_孙连杰个人博客</title>
<meta name="keywords" content="个人博客,孙连杰个人博客" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<%=basePath %>css/base.css" rel="stylesheet">
<link href="<%=basePath %>css/index.css" rel="stylesheet">
<link href="<%=basePath %>css/m.css" rel="stylesheet">
<script src="<%=basePath %>js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=basePath %>js/comm.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header class="header-navigation" id="header">
  <nav><div class="logo"><a href="/">孙连杰个人博客</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="article_showIndex" id="selected">网站首页</a></li>
      <li><a href="album_showAlbumList?currentCount=8">我的相册</a></li>
      <li><a href="article_showlist?type=12">我的日记</a></li>
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
      <div class="about_me">
        <h2>关于我</h2>
        <ul>
          <i><img src="images/logo.png"></i>
          <p><b>孙连杰</b>，大三学生！初级初级Java工程师。个人博客，成神之路的开始。，做好笔记，记录点滴。哦耶</p>
        </ul>
      </div>
      <div class="wdxc">
        <h2>我的相册</h2>
        <ul>
          <c:forEach var="album" items="${albumMap}">
        	  <li><a href="album_showAlbumList?currentCount=8"><img src="${album.value }"></a></li>
          </c:forEach>
          
        </ul>
      </div>
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
          <li><a href="article_showlist?type=12">日记（19）</a></li>
          <li><a href="album_showAlbumList?currentCount=8">相册（520）</a></li>
          <li><a href="/">美文欣赏（40）</a></li>
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
      <div class="links">
        <h2>友情链接</h2>
        <ul>
          <a href="#">孙连杰个人博客</a> <a href="http://wz.henu.edu.cn/">河南大学网站工作室</a>
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
  	<c:forEach var="article" items="${indexlist}">
    <li><i><a href="article_showContent?aid=${article.aid}"><img src="${article.imgUrl}"></a></i>
      <h3><a href="article_showContent?aid=${article.aid}">${article.title}</a></h3>
      <p>${article.digest}</p>
    </li>
    </c:forEach>
    
  </main>
</article>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank">孙连杰个人博客</a> <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">豫ICP备19011032号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
