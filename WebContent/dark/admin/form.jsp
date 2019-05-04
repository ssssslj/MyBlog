<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="<%=basePath %>/dark/admin/assets/i/favicon.png">

    <link rel="apple-touch-icon-precomposed" href="<%=basePath %>/dark/admin/assets/i/app-icon72x72@2x.png">
    <script type="text/javascript" charset="utf-8" src="<%=basePath %>admin/lib/ueditor/ueditor.config.js"></script> 
	<script type="text/javascript" charset="utf-8" src="<%=basePath %>admin/lib/ueditor/ueditor.all.min.js"> </script>  
	<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
	<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	<script type="text/javascript" charset="utf-8" src="<%=basePath %>admin/lib/ueditor/lang/zh-cn/zh-cn.js"></script>
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="<%=basePath %>/dark/admin/assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="<%=basePath %>/dark/admin/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="<%=basePath %>/dark/admin/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="<%=basePath %>/dark/admin/assets/css/app.css">
    <script src="<%=basePath %>/dark/admin/assets/js/jquery.min.js"></script>
   

</head>

<body data-type="widgets">
    <script src="<%=basePath %>/dark/admin/assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
        <header>
            <!-- logo -->
            <div class="am-fl tpl-header-logo">
                <a href="javascript:;"><img src="<%=basePath %>/dark/admin/assets/img/logo.png" alt=""></a>
            </div>
            <!-- 右侧内容 -->
            <div class="tpl-header-fluid">
                <!-- 侧边切换 -->
                <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span>

                </span>
                </div>
                <!-- 搜索 -->
                <div class="am-fl tpl-header-search">
                    <form class="tpl-header-search-form" action="javascript:;">
                        <button class="tpl-header-search-btn am-icon-search"></button>
                        <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
                    </form>
                </div>
                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                        <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span>Amaze UI</span> </a>
                        </li>

                        <!-- 新邮件 -->
                        <li class="am-dropdown tpl-dropdown" data-am-dropdown>
                            <a href="javascript:;" class="am-dropdown-toggle tpl-dropdown-toggle" data-am-dropdown-toggle>
                                <i class="am-icon-envelope"></i>
                                <span class="am-badge am-badge-success am-round item-feed-badge">4</span>
                            </a>
                            <!-- 弹出列表 -->
                            <ul class="am-dropdown-content tpl-dropdown-content">
                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="<%=basePath %>/dark/admin/assets/img/user04.png" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            3小时前
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                                <i class="am-icon-circle-o am-text-success"></i>
                                                <span>夕风色</span>
                                            </div>
                                            <div class="am-text-truncate"> Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </div>
                                            <div class="menu-messages-content-time">2016-09-21 下午 16:40</div>
                                        </div>
                                    </a>
                                </li>

                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="<%=basePath %>/dark/admin/assets/img/user02.png" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            5天前
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                                <i class="am-icon-circle-o am-text-warning"></i>
                                                <span>禁言小张</span>
                                            </div>
                                            <div class="am-text-truncate"> 为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。 </div>
                                            <div class="menu-messages-content-time">2016-09-16 上午 09:23</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <i class="am-icon-circle-o"></i> 进入列表…
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- 新提示 -->
                        <li class="am-dropdown" data-am-dropdown>
                            <a href="javascript:;" class="am-dropdown-toggle" data-am-dropdown-toggle>
                                <i class="am-icon-bell"></i>
                                <span class="am-badge am-badge-warning am-round item-feed-badge">5</span>
                            </a>

                            <!-- 弹出列表 -->
                            <ul class="am-dropdown-content tpl-dropdown-content">
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-line-chart"></i>
                                            <span> 有6笔新的销售订单</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            12分钟前
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-star"></i>
                                            <span> 有3个来自人事部的消息</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            30分钟前
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-folder-o"></i>
                                            <span> 上午开会记录存档</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            1天前
                                        </div>
                                    </a>
                                </li>


                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <i class="am-icon-bell"></i> 进入列表…
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- 退出 -->
                        <li class="am-text-sm">
                            <a href="javascript:;">
                                <span class="am-icon-sign-out"></span> 退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </header>
        <!-- 风格切换 -->
        <div class="tpl-skiner">
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <!-- 侧边导航栏 -->
        <div class="left-sidebar">
            <!-- 用户信息 -->
            <div class="tpl-sidebar-user-panel">
                <div class="tpl-user-panel-slide-toggleable">
                    <div class="tpl-user-panel-profile-picture">
                        <img src="<%=basePath %>/dark/admin/assets/img/user04.png" alt="">
                    </div>
                    <span class="user-panel-logged-in-text">
              <i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
              禁言小张
          </span>
                    <a href="javascript:;" class="tpl-user-panel-action-link"> <span class="am-icon-pencil"></span> 账号设置</a>
                </div>
            </div>

            <!-- 菜单 -->
            <ul class="sidebar-nav">
                <li class="sidebar-nav-heading">Components <span class="sidebar-nav-heading-info"> 附加组件</span></li>
                <li class="sidebar-nav-link">
                    <a href="article_showDarkIndex">
                        <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="tables.jsp">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 表格
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="calendar.jsp">
                        <i class="am-icon-calendar sidebar-nav-link-logo"></i> 日历
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="article_showDarkArticleList?type=1" class="active">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 文章

                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="form2.jsp">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 相册

                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="chart.jsp">
                        <i class="am-icon-bar-chart sidebar-nav-link-logo"></i> 图表

                    </a>
                </li>

                <li class="sidebar-nav-heading">Page<span class="sidebar-nav-heading-info"> 常用页面</span></li>
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 数据列表
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub">
                        <li class="sidebar-nav-link">
                            <a href="table-list.jsp">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 文字列表
                            </a>
                        </li>

                        <li class="sidebar-nav-link">
                            <a href="table-list-img.jsp">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 图文列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-nav-link">
                    <a href="sign-up.jsp">
                        <i class="am-icon-clone sidebar-nav-link-logo"></i> 注册
                        <span class="am-badge am-badge-secondary sidebar-nav-link-logo-ico am-round am-fr am-margin-right-sm">6</span>
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="login.jsp">
                        <i class="am-icon-key sidebar-nav-link-logo"></i> 登录
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="404.jsp">
                        <i class="am-icon-tv sidebar-nav-link-logo"></i> 404错误
                    </a>
                </li>

            </ul>
        </div>

        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">

            <div class="container-fluid am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                        <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 表单 <small>Amaze UI</small></div>
                        <p class="page-header-description">Amaze UI 有许多不同的表格可用。</p>
                    </div>
                    <div class="am-u-lg-3 tpl-index-settings-button">
                        <button type="button" class="page-header-button"><span class="am-icon-paint-brush"></span> 设置</button>
                    </div>
                </div>

            </div>

            <div class="row-content am-cf">


                

                <div class="row">

                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">边框表单</div>
                                <div class="widget-function am-fr">
                                    <a href="javascript:;" class="am-icon-cog"></a>
                                </div>
                            </div>
                            <div class="widget-body am-fr">

                                <form action="article_saveArticle" method="post" class="am-form tpl-form-border-form tpl-form-border-br">
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-3 am-form-label">标题 <span class="tpl-form-line-small-title">Title</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" name="article.title" value="<c:out value='${article.title}'/>" class="tpl-form-input" id="user-name" placeholder="请输入标题文字">
                                            <small>请填写标题文字10-20字左右。</small>
                                        </div>
                                    </div>
                                    <c:if test="${article.aid != null }">
                                    	<input name="article.aid" value="<c:out value='${article.aid}'/>" type="text" style="display:none">
                                    </c:if>
                                    <div class="am-form-group">
                                        <label class="am-u-sm-3 am-form-label">标签 <span class="tpl-form-line-small-title">Label</span></label>
                                        <div class="am-u-sm-9">
                                            <input name="article.label" value="<c:out value='${article.label}'/>" type="text" placeholder="输入标签">
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <label for="user-email" class="am-u-sm-3 am-form-label">发布时间 <span class="tpl-form-line-small-title">Time</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" name="article.date" value="<c:out value='${article.date}'/>" class="am-form-field tpl-form-no-bg" placeholder="发布时间" data-am-datepicker="" readonly="">
                                            <small>发布时间为必填</small>
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <label for="user-phone" class="am-u-sm-3 am-form-label">作者 <span class="tpl-form-line-small-title">Author</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" value="Sunlj"  name="article.author" placeholder="Sunlj">

                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <label class="am-u-sm-3 am-form-label">摘要 <span class="tpl-form-line-small-title">Abstract</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" value="<c:out value='${article.digest}'/>"  name="article.digest" placeholder="输入摘要">
                                        </div>
                                    </div>

									<div class="am-form-group">
                                        <label for="user-intro" class="am-u-sm-3 am-form-label">推荐 <span class="tpl-form-line-small-title">Recommend</span></label>
                                        <div class="am-u-sm-9">
                                            <div class="tpl-switch">
                                                <input name="article.recommand" type="checkbox" class="ios-switch bigswitch tpl-switch-btn" checked="">
                                                <div class="tpl-switch-btn-view">
                                                    <div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
									
                                    <div class="am-form-group">
                                        <label for="user-weibo" class="am-u-sm-3 am-form-label">封面图 <span class="tpl-form-line-small-title">Images</span></label>
                                        <div class="am-u-sm-9">
                                            <div class="am-form-group am-form-file">
                                                <script id="uploadEditor" type="text/plain"></script>
												<input type="text" value="<c:out value='${article.imgUrl}'/>" id="pictureUpload" name="article.imgUrl"  />
												<input type="button" id="upImage" value="上传图片"> 
                                            </div>

                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <label for="user-weibo" class="am-u-sm-3 am-form-label">添加分类 <span class="tpl-form-line-small-title">Type</span></label>
                                        <div class="am-u-sm-9">
                                            
                                            
												<select data-am-selected="{searchBox: 1}" value="<c:out value='${article.type}'/>" name="article.type" style="display: none;">
  													<option value="2">Java</option>
  													<option value="3">JavaWeb</option>
  													<option value="4">Android</option>
  													<option value="5">Linux</option>
  													<option value="6">算法</option>
  													<option value="7">电脑相关</option>
  													<option value="12">日记</option>
												</select>
                                            
                                        </div>
                                    </div>
                                    
                                    <div class="am-form-group">
                                        <label for="user-intro" class="am-u-sm-3 am-form-label">文章内容</label>
                                        <div class="am-u-sm-9">
                                            <script id="editor" type="text/plain"  name="article.content" style="width:890px;height:500px;">
												<c:out value="${article.content}" escapeXml="false"/>
											</script>
                                        </div>
                                        
                                    </div>
									
                                    <div class="am-form-group">
                                        <div class="am-u-sm-9 am-u-sm-push-3">
                                            <button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                        </div>
                                    </div>
                                </form>
                                <script type="text/javascript">
										var ue = UE.getEditor('editor');
										window.onresize = function() {
											window.location.reload();
										}
										var _uploadEditor;
										
										$(function() {
											//重新实例化一个编辑器，防止在上面的editor编辑器中显示上传的图片或者文件
											_uploadEditor = UE.getEditor('uploadEditor');
											_uploadEditor.ready(function() {
												//设置编辑器不可用
												//_uploadEditor.setDisabled();
												//隐藏编辑器，因为不会用到这个编辑器实例，所以要隐藏
												_uploadEditor.hide();
												//侦听图片上传
												_uploadEditor.addListener('beforeInsertImage',
												function(t, arg) {
													//将地址赋值给相应的input,只去第一张图片的路径
													var s = "";
													for (var i = 0; i < arg.length; i++) {
														s = s + arg[i].src;
													}
													;
													$("#pictureUpload").attr("value", s);
												})
												//侦听文件上传，取上传文件列表中第一个上传的文件的路径
												_uploadEditor.addListener('afterUpfile', function(t, arg) {
													$("#fileUpload").attr("value",
																	_uploadEditor.options.filePath + arg[0].url);
												})
											});
										});
										//弹出图片上传的对话框
										$('#upImage').click(function() {
											var myImage = _uploadEditor.getDialog("insertimage");
											myImage.open();
										});
										//弹出文件上传的对话框
										function upFiles() {
											var myFiles = _uploadEditor.getDialog("attachment");
											myFiles.open();
										}
									</script>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
    <script src="<%=basePath %>/dark/admin/assets/js/amazeui.min.js"></script>
    <script src="<%=basePath %>/dark/admin/assets/js/amazeui.datatables.min.js"></script>
    <script src="<%=basePath %>/dark/admin/assets/js/dataTables.responsive.min.js"></script>
    <script src="<%=basePath %>/dark/admin/assets/js/app.js"></script>

</body>

</html>