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
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/info.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/comm.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header class="header-navigation" id="header">
  <nav>
    <div class="logo"><a href="/">孙连杰个人博客</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="article_showIndex">网站首页</a></li>
      <li><a href="article_showAlbumList?currentCount=8">我的相册</a></li>
       <li><a href="album_showlist?type=8">我的日记</a></li>
      <li><a href="article_showlist?type=1" id="selected">学无止境</a></li>
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
        <li><a href="album_showlist?type=8">日记（19）</a></li>
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
  <main>
    <div class="infosbox">
      <div class="newsview">
        <h3 class="news_title"><c:out value="${article.title}"></c:out></h3>
        <div class="bloginfo">
          <ul>
            <li class="author">作者：<a href="/"><c:out value="${article.author}"/></a></li>
            <li class="lmname"><a href="/">学无止境</a></li>
            <li class="timer">时间：<c:out value="${article.date}"/></li>
            <li class="view">${article.views}人已阅读</li>
          </ul>
        </div>
        <div class="tags"><a href="/" target="_blank"><c:out value="${article.label}"/></a> &nbsp; <a href="/" target="_blank"><c:out value="${article.label}"/></a></div>
        <div class="news_about"><strong>简介</strong><c:out value="${article.digest}"/></div>
        <div class="news_con"> 
        	<c:out value="${article.content}" escapeXml="false"/>
          &nbsp; </div>
      </div>
      <div class="share">
        <p class="diggit"><a href="JavaScript:makeRequest('/e/public/digg/?classid=3&amp;id=19&amp;dotop=1&amp;doajax=1&amp;ajaxarea=diggnum','EchoReturnedText','GET','');"> 很赞哦！ </a>(<b id="diggnum"><script type="text/javascript" src="/e/public/ViewClick/?classid=2&id=20&down=5"></script>13</b>)</p>
      </div>
      <div class="nextinfo">
        <p>上一篇：<a href="/news/life/2018-03-13/804.html">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a></p>
        <p>下一篇：<a href="/news/life/">返回列表</a></p>
      </div>
      <div class="news_pl">
        <h2>文章评论</h2>
        <div class="gbko"> 
          <script src="/e/pl/more/?classid=77&amp;id=106&amp;num=20"></script>
          <c:forEach var="comment" items="${commentList}">
          	<div class="fb">
            	<ul>
              		<p class="fbtime"><span>${comment.date}</span>${comment.name}</p>
              		<p class="fbinfo">${comment.content}</p>
            	</ul>
          	</div>
          </c:forEach>
          
          <script>
		  function CheckPl(obj)
		  {
		  if(obj.saytext.value=="")
		  {
		  alert("您没什么话要说吗？");
		  obj.saytext.focus();
		  return false;
		  }
		  return true;
		  }
		  </script>
          <form action="saveComment" method="post" name="saypl" id="saypl" onsubmit="return CheckPl(document.saypl)">
            <div id="plpost">
              <p class="saying"><span><a href="/e/pl/?classid=77&amp;id=106">共有<script type="text/javascript" src="/e/public/ViewClick/?classid=77&amp;id=106&amp;down=2"></script>2条评论</a></span>来说两句吧...</p>
              <p class="yname"><span>用户名:</span>
                <input name="comment.name" type="text" class="inputText" id="username" value="" size="16">
              </p>
              <p class="yzm"><span>验证码:</span>
                <input name="key" type="text" class="inputText" size="16">
              </p>
              <input name="comment.aid"  type="hidden" id="nomember" value="${article.aid}">
              <textarea name="comment.content" rows="6" id="saytext"></textarea>
              <input name="imageField" type="submit" value="提交">
              
            </div>
          </form>
        </div>
      </div>
    </div>
  </main>
</article>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank">孙连杰个人博客</a> <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">豫ICP备19011032号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
