<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="gbk">
<title>首页_孙连杰个人博客</title>
<meta name="keywords" content="个人博客,孙连杰个人博客" />
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
       <li><a href="article_showlist?type=8">我的日记</a></li>
      <li><a href="article_showlist?type=1">学无止境</a></li>
      <li><a href="about.jsp">关于我</a></li>
      <li><a href="gbook.jsp" id="selected">留言</a></li>
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
        <li><a href="/"><img src="images/7.jpg"></a></li>
        <li><a href="/"><img src="images/8.jpg"></a></li>
        <li><a href="/"><img src="images/9.jpg"></a></li>
        <li><a href="/"><img src="images/10.jpg"></a></li>
        <li><a href="/"><img src="images/11.jpg"></a></li>
        <li><a href="/"><img src="images/12.jpg"></a></li>
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
        <li><a href="/">学无止境（33）</a></li>
        <li><a href="/">日记（19）</a></li>
        <li><a href="/">慢生活（520）</a></li>
        <li><a href="/">美文欣赏（40）</a></li>
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
<div class="gbook">
      <div class="fb">
        <ul>
          <p class="fbtime"><span> 2018-07-21 </span> 夜月归途</p>
          <p class="fbinfo">从青姐朋友圈分享的文章《我为什么要做个人网站》过来的，自习看了下你的网站非常不错，看的出来你一直在坚持!</p>
        </ul>
      </div>
      <div class="hf">
        <ul>
          <p class="zzhf"><font color="#FF0000">站长回复:</font>感谢捧场啊！看了你的网站，有两个月没更新了哦~</p>
        </ul>
      </div>
      <div class="fb">
        <ul>
          <p class="fbtime"><span> 2018-07-10 </span> 周宏</p>
          <p class="fbinfo">读《从今日起，我永久卸载今日头条》有感。正如作者所说，这个APP抓住了很多人性的特点，在简单、重复、爽这三点上做到了极致。但是我认为永久卸载这个想法比较荒诞，任何东西你只要有自控力，就能将它为我所用。曾经一度我也是刷头条根本停不下来</p>
        </ul>
      </div>
      <div class="hf">
        <ul>
          <p class="zzhf"><font color="#FF0000">站长回复:</font>嗯，我也是自制力有限，删除头条就是矫枉过正而已，这个因人而异，不强求他人，也不想标题党。</p>
        </ul>
      </div>
      <div class="fb">
        <ul>
          <p class="fbtime"><span> 2018-07-09 </span> 文颖</p>
          <p class="fbinfo">加油吖</p>
        </ul>
      </div>
      <div class="hf">
        <ul>
          <p class="zzhf"><font color="#FF0000">站长回复:</font>感谢第一条留言的支持！：）</p>
        </ul>
      </div>
      <div class="gbox">
        <form action="../../enews/index.php" method="post" name="form1" id="form1">
          <p> <strong>来说点儿什么吧...</strong></p>
          <p><span> 您的姓名:</span>
            <input name="name" type="text" id="name">
            *</p>
          <p><span>联系邮箱:</span>
            <input name="email" type="text" id="email">
            *</p>
          <p><span class="tnr">留言内容:</span>
            <textarea name="lytext" cols="60" rows="12" id="lytext"></textarea>
          </p>
          <p>
            <input type="submit" name="Submit3" value="提交">
            <input name="enews" type="hidden" id="enews" value="AddGbook">
          </p>
        </form>
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
