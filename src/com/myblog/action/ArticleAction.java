package com.myblog.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.myblog.domain.Album;
import com.myblog.domain.Article;
import com.myblog.domain.PageBean;
import com.myblog.domain.User;
import com.myblog.service.AlbumService;
import com.myblog.service.ArticleService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ArticleAction extends ActionSupport{

	private Article article;
	private ArticleService articleService;
	private PageBean<Article> pageBean = null;
	private int type;
	private int aid;
	//文章标题
	private Map<Long, String> articleMap = null;
	//相册图片
	private Map<Long, String> albumMap = null;
	private User user;
	private AlbumAction albumAction;
	private Map<Long, String> recommendMap = null;
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public PageBean<Article> getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean<Article> pageBean) {
		this.pageBean = pageBean;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getCurrentCount() {
		return currentCount;
	}

	public void setCurrentCount(int currentCount) {
		this.currentCount = currentCount;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	

	public Map<Long, String> getArticleMap() {
		return articleMap;
	}

	public void setArticleMap(Map<Long, String> articleMap) {
		this.articleMap = articleMap;
	}

	public Map<Long, String> getAlbumMap() {
		return albumMap;
	}

	public void setAlbumMap(Map<Long, String> albumMap) {
		this.albumMap = albumMap;
	}

	public AlbumAction getAlbumAction() {
		return albumAction;
	}

	public void setAlbumAction(AlbumAction albumAction) {
		this.albumAction = albumAction;
	}

	


	public Map<Long, String> getRecommendMap() {
		return recommendMap;
	}

	public void setRecommendMap(Map<Long, String> recommendMap) {
		this.recommendMap = recommendMap;
	}




	int currentPage = 1;

	int currentCount = 14;

	private List<Article> indexlist;
	private List<Article> indexlist2;

	public List<Article> getIndexlist2() {
		return indexlist2;
	}

	public void setIndexlist2(List<Article> indexlist2) {
		this.indexlist2 = indexlist2;
	}

	public List<Article> getIndexlist() {
		return indexlist;
	}

	public void setIndexlist(List<Article> indexlist) {
		this.indexlist = indexlist;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public ArticleService getArticleService() {
		return articleService;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	//显示首页文章
	@Action(value="article_showIndex",results= {@Result(name="success",location="/index.jsp")})
	public String showIndex() {
		
			this.indexlist = articleService.showIndex();
			//显示点击排行文章
			this.articleMap = articleService.showRank();
			this.albumMap = albumAction.showIndex();
			
			return "success";
	}

	//显示文章列表
	@Action(value="article_showlist",results= {@Result(name="study",location="/list2.jsp"),
											   @Result(name="life",location="/list.jsp")})
	public String showlist() {
		pageBean = articleService.findPageBean(currentPage, currentCount, type);
		this.recommendMap = articleService.showRecommend();
		//获取浏览排行
		this.articleMap = articleService.showRank();
		if(type<=7) {
			return "study";
		}else{
			return "life";
		}
	}
	
	//显示文章内容
	@Action(value="article_showContent",results= {@Result(name="content",location="/info.jsp")})
	public String showContent() {
		article = articleService.getContent(aid);
		//获取推荐排行
		this.recommendMap = articleService.showRecommend();
		//获取浏览排行
		this.articleMap = articleService.showRank();
		return "content";
	}
	
	//发布文章
	@Action(value="article_saveArticle",results= {@Result(name="save",location="/dark/admin/form.jsp")})
	public String saveArticle() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		article.setDate(df.format(new Date()));
        df = new SimpleDateFormat("yyyy");
       
		articleService.saveArticle(article);
		System.out.println(article.toString());
		return "save";
	}
	
	//展示关于我
	public String saveAbout() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		article.setDate(df.format(new Date()));
        df = new SimpleDateFormat("yyyy");
       
		articleService.saveArticle(article);
		System.out.println(article.toString());
		return "about";
	}
	
	/*------------------------------------后台--------------------------------------*/
	
	private int articleNum;
	private PageBean<Article> darkPageBean;
	
	public PageBean<Article> getDarkPageBean() {
		return darkPageBean;
	}

	public void setDarkPageBean(PageBean<Article> darkPageBean) {
		this.darkPageBean = darkPageBean;
	}

	public int getArticleNum() {
		return articleNum;
	}

	public void setArticleNum(int articleNum) {
		this.articleNum = articleNum;
	}

	//获取文章总数
	@Action(value="article_showDarkIndex",results= {@Result(name="dark_index",location="/dark/admin/index.jsp")})
	public String showDarkIndex() {
		this.articleNum = articleService.showTotalCount();
		return "dark_index";
	}
	
	//获取文章列表
	@Action(value="article_showDarkArticleList",results= {@Result(name="dark_articles",location="/dark/admin/table-list.jsp")})
	public String showDarkArticleList() {
		this.darkPageBean = articleService.findPageBean(currentPage, currentCount, type);
		return "dark_articles";
	}
	//获取内容
	@Action(value="article_showDarkContent",results= {@Result(name="dark_content",location="/dark/admin/form.jsp")})
	public String showDarkContent() {
		article = articleService.getContent(aid);
		
		return "dark_content";
	}
	
	//删除文章
	@Action(value="article_deleteArticle",results= {@Result(name="delete",type="redirectAction", location="article_showDarkArticleList?type=1")})
	public String deleteArticle() {
		articleService.deleteArticle(aid);
		return "delete";
	}
}
