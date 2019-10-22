<%@ Page Language="C#" AutoEventWireup="true" CodeFile="name_6.aspx.cs" Inherits="static_name_6" %>


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
						<h1>个人简历</h1>
					</div>
					<div class="breadcrumbs-right">
						<ul>
							<li><a href="../index.aspx">Home</a> <label>:</label></li>
							<li>个人简历</li>
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
							<h2>Check resumes</h2>
							<span>查看他人的简历</span>
							<p>&nbsp;</p>
						</div>
						<div class="contact-right" >
							<form id="Form1" runat="server">
								<div style="float:left;width:50%">
									<span>姓名</span>
									<asp:TextBox Width="70%" ID="tb_name" runat="server"></asp:TextBox>
								</div>
								<div style="float:left;width:50%">
									<span>班级</span>
                                    <asp:TextBox Width="70%" ID="tb_myclass" runat="server"></asp:TextBox>
								</div>
								<div style="float:left;width:50%">
									<span>QQ</span>
									<asp:TextBox Width="70%" ID="tb_qq" runat="server"></asp:TextBox>
								</div>
                                <div style="float:left;width:50%">
									<span>电话</span>
									<asp:TextBox Width="70%" ID="tb_telephone" runat="server"></asp:TextBox>
								</div>
                                <div style="width:80%;padding-top:27%">
									<span>邮箱</span>
									<asp:TextBox ID="tb_mailbox" runat="server"></asp:TextBox>
								</div>
                                <div>
									<span>参赛意向</span>
									<asp:TextBox Width="70%" ID="tb_competition_name" runat="server"></asp:TextBox>
								</div>
                                <div>
									<span>她的技能条件<i style="font-weight:400">（其具备的技能和特长）</i></span>
                                    <asp:TextBox Width="90%" TextMode="MultiLine" ID="tb_personal_skill" runat="server"></asp:TextBox>
								</div>
                                <div>
									<span>她的参赛经历及自我介绍</span>
                                    
                                     <asp:TextBox Width="90%" TextMode="MultiLine" ID="tb_pensonal_evaluate" runat="server"></asp:TextBox>
								</div>
                                <div>
									<span>她的队友要求</span>
                                    
                                     <asp:TextBox Width="90%" Height="8em" ID="tb_require" runat="server"></asp:TextBox>
								</div>
                                <asp:Button ID="Button1" class="contact-anniu" runat="server" Text="返回首页" OnClick="Button1_Click" />
						</form>
                                </div>
						<div class="clearfix"> </div>
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


