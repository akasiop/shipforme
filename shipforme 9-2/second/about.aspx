<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="second_about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
		<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<!---//webfonts--->
	</head>
	<body>
	<!---- container ---->
		<!---- header ----->
		<div class="header about-head">
			<div class="container">
				<!--- logo ----->
				<div class="logo"><img src="../images/logoname.png" width="206" height="32" alt=""/></div>
				<!--- logo ----->
				<!--- top-nav ----->
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
                        <li><a href="../second/register.aspx">注册</a></li>
					  <li><a href="../second/about.aspx">关于我们</a></li>
					  <li><a href="../second/contact.aspx">联系我们</a></li>
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
			
			</div>
			</div>
		<!---- header ----->
		<!------ about ---->
		<div class="about">
			<!--- bradcrumbs ---->
			<div class="breadcrumbs">
				<div class="container">
					<div class="breadcrumbs-left">
						<h1>关于我们</h1>
					</div>
					<div class="breadcrumbs-right">
						<ul>
							<li><a href="../index.aspx">Home</a> <label>:</label></li>
							<li>关于我们</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!--- bradcrumbs ---->
		</div>
		<div class="about-top-grids">
			<div class="container">
				<div class="about-wel wel-head text-center">
					<h3>关于 <span>S</span>hipforme</h3>
					<p>建立校园综合代送平台，提供校园学生材料打印、订购桶装水（生活饮水）等</p>
				</div>
				<!---- about-grids ---->
				<div class="about-grids">
					<div class="about-grids-row1">
						<p>“高校互联网+综合代送平台”采用O2O商业模式，提供贴近广大师生需求的智能校园代送服务，其中包括云打印（用户通过网站、微信公众号或手机APP注册、上传打印文件，线上支付后线下以自助打印云机取件）和校园订购桶装水（用户通过线上支付、勤工助学的学生(送水员)线上获取订购信息，完成配送任务、记录配送员业绩等为基础服务的双向性、综合性的消费服务平台）等服务。</p>
					</div>
					<div class="about-grids-row2">
						<div class="about-grids-row2-grid">
							<p>In the Internet + environment, provide a comprehensive service platform based on O2O business mode for university campuses, making campus life more convenient, and the construction of the integrated service platform will provide basic and integrated consumption service platform for college students, such as campus printing, campus ordering barreled water, </p>
						</div>
						<div class="about-grids-row2-grid">
							<p>To solve the problems of improper distribution of barreled water, duplicate charges and congestion of printing rooms in Colleges and universities. Through this research and analysis, the Internet + integrated service platform has been widely applied in Colleges and universities, </p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<!---- about-grids ---->
		</div>
		<!------ about ---->
		</div>
		<!---- welcome-Note ---->
		<div class="about-note welcome-note">
			<div class="container">
				<div class="wel-head text-center">
					<h3>关于 <span>我</span>们</h3>
					<p>一个有意思的团队！</p>
				</div>
			</div>
		</div>
		<!---- welcome-Note ---->
		<!---- top-grids ---->
		<div class="top-grids">
			<div class="container">
				<div class="col-md-4 top-grid">
					<h4>马友诚</h4>
					<p>男	1998年1月	中华职业学院	计算机技术与科学	技术开发	</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>何昌蔓</h4>
					<p>女	1998年5月	中华职业学院	计算机技术与科学	技术完善</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>宋水林</h4>
					<p>女	1997年11月	中华职业学院	市场营销学	市场分析，模型搭建</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>邵兰清</h4>
					<p>女	1997年12月	中华职业学院	会计学	数据分析</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>单吉浩</h4>
					<p>男	1995年1月	中华职业学院	汉语言	文字处理，论文排版</p>
				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
		<!---- top-grids ---->
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
									  <p>滇ICP备18002319号 <img src="../images/batb1.png" width="20" height="20" alt=""/></p>
									
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
