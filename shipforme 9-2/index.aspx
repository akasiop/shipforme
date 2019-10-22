<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
		<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="./js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="./css/style.css" rel='stylesheet' type='text/css' />
		<style type="text/css">
		body,td,th {
	font-family: "Open Sans", sans-serif;
}
        </style>
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!----webfonts--->
 
		<!---//webfonts--->
	</head>
	<body>
	<!---- container ---->
		
		<div class="header">
			<div class="container">
				<!--- logo ----->
				<div class="logo"><img src="./images/logoname.png" width="206" height="32" alt=""/></div>
				<!--- logo ----->
				<!--- top-nav ----->
				<div class="top-nav">
					<span class="menu"></span>
				  <ul>
                      <li><a href="./second/register.aspx">注册</a></li>
					  <li><a href="./second/about.aspx">关于我们</a></li>
					  <li><a href="./second/contact.aspx">联系我们</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<!--- top-nav ----->
					<!----- script-for-nav ---->
				<script>
				    $("span.menu").click(function () {
				        $(".top-nav ul").slideToggle("slow", function () {
				            // Animation complete.
				        });
				    });
				</script>
				<!----- script-for-nav ---->
		<!---- banner --->
		<div class="banner text-center">
			<h1>这是一个 <a><span>S</span></a>Hip for me</h1>
			<h1>互联网+平台</h1>
			<p>采用O2O商业模式，提供贴近广大师生需求的智能校园代打印服务、代送服务综合平台</p>
			<a class="seemore" href="./second/more.aspx">了解更多</a>
		</div>
		<!---- banner --->
		<!---- banner-grids ---->
		<div class="banner-grids">
		  <div class="col-md-4 banner-grid"><a href="./second/login.aspx"><span><img src="./images/icon.png" title="tootls" /></span></a>
		    <h3><a href="./second/login.aspx">学生登录</a></h3>
			  <p>Publish timely printing requirements and water supply requirements through student login platform,</p>
			</div>
		  <div class="col-md-4 banner-grid">
				<a href="./second/login_2.aspx"><span><img src="images/icon2.png" title="tootls" /></span></a>
			<h3><a href="./second/login_2.aspx">服务端登录</a></h3>
			  <p>Print shop login platform, accepting students'need for timely printing,</p>
			</div>
		  <div class="col-md-4 banner-grid">
				<a href="./second/login_3.aspx"><span><img src="./images/icon3.png" title="tootls" /></span></a>
			<h3><a href="./second/login_3.aspx">管理员登录</a></h3>
			  <p>Administrators log in and manage the internal content of the website,</p>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!---- banner-grids ---->
			</div>
			</div>

<div class="welcome-note">
			<div class="container">
				<div class="wel-head text-center">
					<h3>WE l <span>c</span>ome</h3>
					<p>找到并选择你想加入的参赛队伍；分享并下载你需要的文件</p>
				</div>
			</div>
		</div>
		<!---- welcome-Note ---->
		<!---- top-grids ---->
		<div class="top-grids">
			<div class="container">
				<div class="col-md-4 top-grid">
					<a href="./static/name_1.aspx" target="_blank"><h4>温泽和</h4></a>
					<p>有想法，实干</p>
				</div>
				<div class="col-md-4 top-grid">
					<a href="./static/name_2.aspx" target="_blank"><h4>蒋蓉</h4></a>
					<p>丰富的知识储备,努力奋斗的决心</p>
				</div>
				<div class="col-md-4 top-grid">
					<a href="./static/name_3.aspx" target="_blank"><h4>宋水林</h4></a>
					<p>想参加互联网＋大学生创新创业大赛，有一定的文案功底，会影视包装的各个软件</p>
				</div>
				<div class="col-md-4 top-grid">
					<a href="./static/name_4.aspx" target="_blank"><h4>张小秀</h4></a>
					<p>财务管理基础知识，初级会计职称已过</p>
				</div>
				<div class="col-md-4 top-grid">
					<a href="./static/name_5.aspx" target="_blank"><h4>杨紫薇</h4></a>
					<p>会展策划大赛，创意策划技能</p>
				</div>
				<div class="col-md-4 top-grid">
					<a href="./static/name_6.aspx" target="_blank"><h4>邵兰清</h4></a>
					<p>大二就了解了，也有过一年的时间去研究过相关的课题</p>
				</div>
				<div class="clearfix" style="border-bottom:0.5px solid #d2d2d2"> </div>
			</div>
		</div>
		<!---- top-grids ---->
		<!---- mid-grids ---->
        <p></p>
		<div class="mid-grids">
			<div class="container">
				<div class="col-md-8 mid-grids-left">
					<h2>免费教程资源<span><label>聚</label>合</span></h2>
					<p>这里有各个平台的PS、PR、CDR、绘画、比赛等公开资源</p>
					<!---- latest-news-grids---->
					<div class="latest-news-grids">
						<div class="latest-news-grid">
                            <img src="./images/index_01.png" title="name" />
							&nbsp;<h4><a href="#">国家助学金申请表.doc</a></h4>
							<span>2019-01-17 12:45, by <a href="#">Admin</a></span>
							<p>国家助学金党和政府对普通本科高校、高等职业学校家庭经济困难学生的关怀。</p>
							<a class="news-btn" href="file/国家助学金申请表.doc">下 载</a>
						</div>
						<div class="latest-news-grid">
                            <img src="./images/index_02.png" title="name" />
							&nbsp;<h4><a href="#">本科生研究与创新奖申请表.doc</a></h4>
							<span>2018-11-15 18:02, by <a href="#">Admin</a></span>
							<p>通过参加一系列的学科竞赛，获得很高荣誉称号的，可以申报《研究与创新奖学金》。</p>
							<a class="news-btn" href="file/本科生研究与创新奖申请表.doc">下 载</a>
						</div>
						<div class="latest-news-grid">
                            <img src="./images/index_03.png" title="name" />
							&nbsp;<h4><a href="#">个人综合考评综合量化考评表.xls</a></h4>
							<span>2018-10-08 09:31, by <a href="#">Admin</a></span>
							<p>通过一年的认真学习和努力奋斗，让我们填写综测来证明自己！</p>
							<a class="news-btn" href="file/个人综合考评综合量化考评表.xls">下 载</a>
						</div>
						<div class="latest-news-grid">
                            <img src="./images/index_04.png" title="name" />
							&nbsp;<h4><a href="#">入党申请书格式.docx</a></h4>
							<span>2019-01-03 13:59, by <a href="#">Admin</a></span>
							<p>中国共产党是为人民服务的，成为他！是每个人的最高荣耀。</p>
							<a class="news-btn" href="file/入党申请书格式.docx">下 载</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!---- latest-news-grids---->
				</div>
				<div class="col-md-4 mid-grids-right">
					<h3><span><label>S</label>hip</span> FOR ME服务信息</h3>
					<p>包含但不仅限于网站更新动态、内容通知公告..</p>
					<div class="services-list">
                    <asp:DataList ID="dlNews" runat="server">
                    <ItemTemplate>
						<ul>
							<li>
                                <a href='second/news_list.aspx?id=<%#Eval("news_id")%>'><span> </span><%#Eval("news_adddate")%> <%#Eval("news_title")%> </a></li>
						</ul>
                         </ItemTemplate>
                </asp:DataList>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>


	<!---- container ---->
	<div class="footer">
				<div class="top-footer">
					<div class="container">
						<div class="top-footer-grids">
							<div class="top-footer-grid">
								<h3>联系我们</h3>
								<ul class="address">
									<li><span class="map-pin"> </span>云南财经大学（呈贡校区）</li>
									<li><span class="mob"> </span>(0871) 159-1157-3832</li>
									<li><span class="msg"> </span><a>myc520hcm@qq.com</a></li>
								</ul>
							</div>
							<div class="top-footer-grid">
								<h3>最新动态</h3>
								<ul class="latest-post">
									<li><a href="#"><span class="icon1"> </span> Shipforme 平台即将上线！</a> </li>
                                    
								</ul>
							</div>
							<div class="top-footer-grid">
								<h3>版权申明</h3>
								<div class="tweet-box">
								  <div class="tweet-box-info">
									  <p>&copy; Copyright 2018 Template by 无言的叶 | Web项目开发组</p>
									  <p>滇ICP备18002319号 <img src="images/batb1.png" width="20" height="20" alt=""/></p>
									
									</div>
									<div class="clear"> </div>
							  </div>
								<div class="tweet-box">
								  <div class="clear"> </div>
							  </div>
							</div>
							<div class="clear"> </div>
						</div>
					</div>
				</div>
				<!----start-bottom-footer---->
				<div class="bottom-footer">
					<div class="container">
					  <div class="clear"> </div>
					</div>
				</div>
				<!----//End-bottom-footer---->
			</div>
	</body>
</html>
