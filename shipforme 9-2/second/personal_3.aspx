<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_3.aspx.cs" Inherits="second_personal_3" %>

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
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<!---//webfonts--->
	<style type="text/css">
        #Right {
            height: 288px;
            width: 450px;
        }
        #Left {
            height: 129px;
            width: 258px;
        }
    </style>
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
						<h1>个人主页</h1>
					</div>
					<div class="breadcrumbs-right">
						<ul>
							<li><a href="../index.aspx">Home</a> <label>:</label></li>
							<li>个人主页</li>
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
					<div class="contact-grids">
						<div class="contact-left">
							<h3><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label> 送水员 </h3>
                             <h5 style="color:#EC005F">此处是送水处！</h5>
                    <div style="text-align:center">
                <iframe id="Left" name="Left" src="Left_3.aspx" style="width:90%;height:6em;text-align:center;margin-right:1em;margin-top:1em" frameborder=0; scrolling= "no"></iframe>
                    </div>
						</div>
						<div class="contact-right">
							<h2>欢迎登录!</h2>
                            <img src="../images/line_1.png" width="100%" height="5em" alt=""/>
								<div>
									 <iframe id="Right" name="Right" style="width:100%;height:20em;background: #fff;display: block;border-radius: 2px 2px 2px 2px; -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;-moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;" frameborder=0; scrolling= "no"></iframe>
								</div>
								<div>
									
								</div>
						</div>
						<div style="text-align:center">
                          
                        </div>
					</div>
				</div>
		</div>
		<!----退出登录 <a href="../index.aspx" style="margin-top:2em; display: inline-block;outline: none;cursor: pointer;text-align: center;font-size:1em;color:#EC005F;padding: .5em 1em .40em;-webkit-border-radius: .5em; -moz-border-radius: .5em;border-radius: .5em;-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);box-shadow: 0 1px 2px rgba(0,0,0,.2);">退出登录</a>----->
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

