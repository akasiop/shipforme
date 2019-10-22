<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3D_0.aspx.cs" Inherits="_3D_3D_0" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
		<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
        <link href="../css/style_2.css" rel='stylesheet' type='text/css' />
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
		<div class="contact">
			<!--- bradcrumbs ---->
			<div class="breadcrumbs">
				<div class="container">
					<div class="breadcrumbs-left">
						<h1>3D图书馆</h1>
					</div>
					<div class="breadcrumbs-right">
						<ul>
							<li><a href="../index.aspx">Home</a> <label>:</label></li>
							<li>3D图书馆</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!--- bradcrumbs ---->
		</div>
		<!---- contact ----->
		<div class="contact">
				<div class="contact-top">
					<div class="map">
						
					</div>
				</div>
				<div class="container">
                    <iframe id="Right" src="../3D/library_default.aspx" name="Right" style="width:100%;height:35em;
background: #fff;display: block;border-radius: 2px 2px 2px 2px; -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;-moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;" frameborder=0;></iframe>
				<div style="text-align:center;">
                    <script src="../js/vallenato.js" type="text/javascript" charset="utf-8"></script>
						<link rel="stylesheet" href="../css/vallenato.css" type="text/css" media="screen" charset="utf-8">
                    <div style="width:18%;float:right">
                    <a href="./4_floor.aspx" target="Right" style="text-decoration:none;color: inherit;text-align:center"><h2 class="accordion-header inactive-header">四 楼</h2></a>
                    </div>
                   <div style="width:18%;float:right;margin-right:2em">
                    <a href="./3_floor.aspx" target="Right" style="text-decoration:none;color: inherit;text-align:center"><h2 class="accordion-header inactive-header">三 楼</h2></a>
                    </div>
                    <div style="width:18%;float:right;margin-right:2em">
                    <a href="./2_floor.aspx" target="Right" style="text-decoration:none;color: inherit;text-align:center"><h2 class="accordion-header inactive-header">二 楼</h2></a>
                    </div>
                    <iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=298 height=52 src="//music.163.com/outchain/player?type=2&id=864711417&auto=1&height=32"></iframe>
				</div>
                </div>
		</div>
		<!---- contact ----->
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
