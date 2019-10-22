<%@ Page Language="C#" AutoEventWireup="true" CodeFile="more.aspx.cs" Inherits="second_more" %>

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
						<h1>了解更多</h1>
					</div>
					<div class="breadcrumbs-right">
						<ul>
							<li><a href="../index.aspx">Home</a> <label>:</label></li>
							<li>了解更多</li>
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
					<h3>Ship <span>for </span>me平台的概念</h3>
				</div>
				<!---- about-grids ---->
				<div class="about-grids">
					<div class="about-grids-row1">
						<p>&nbsp;&nbsp;&nbsp; 起初建立Ship for me平台是为了提供贴近广大师生需求的智能校园代打印、代送、参赛组队，图书馆选座服务的一个综合性平台。它是主要通过用户登录www.shipforme.top网址，在里面完成注册后选择自己所需要的一种服务。平台上目前共有代打印、代送水、组队参赛、团书馆选座功能。该平台是指基于无线移动网络、互联网、数字资源。使字媒体系统和无线结合，突破时间和空间限制。可以随时随地使用移动设备登录、完成自己所需。可以为广大用户提供许多方便。</p>
					</div>
				</div>
				<!---- about-grids ---->
		        <br />
		</div>
		<!------ about ---->
		</div>
		<!---- welcome-Note ---->
		<div class="about-note welcome-note">
			<div class="container">
				<div class="wel-head text-center">
					<h3>运营模式简介</h3>
					<p></p>
				</div>
			</div>
		</div>
		<!---- welcome-Note ---->
		<!---- top-grids ---->
		<div class="top-grids">
			<div class="container">
				<div class="col-md-4 top-grid">
					<h4>（一）第一平台现状分析</h4>
					<p>&nbsp;目前各大学很少有为大学生提供代打印、代送水、组队参赛、图书馆选座为一体的服务平台，专业的代打印、代送水市场目前在呈贡还是一块没有开垦的土地，我们的平台设定的代打印专门针对在校学生全体而打造，各方面始终为学生着想，并且适应社会和校园潮流会不断的产生各种效益。鉴于当前许多大学会组织的各种比赛，有些同学非常想参加，但苦于自己找不到搭档，我们搭建了组队参赛这个平台，学生可以在这个平台上非常方便的了解到各种比赛，同时选择比赛队员参加比赛。针对学校图书馆选座情况，我们搭建了图书馆选座平台，学生只要进入我们的网站便可以在里面选择自己的位置。</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>（二）消费者分析</h4>
					<p>www.shipforme.top平台主要是针对各大高校的的在校学生，现在越来越多的大学生因为课业繁重、有事在外等各种原因，希望快点拿到自己需要打印的东西而选择校园代打印服务，而且代打印的费用也在自己可以接受的范围内。许多宿舍总会出现断水现象，有了这个平台就可以解决此问题。通过平台了解学校最新比赛，同时可以在平台上组队，这样既方便又快捷高效，丰富了同学们的大学生活。对于图书馆选座平台，则是为了方便同学们的读书而开发的，一方面让学生可以在手机上选择自己的位置，或者在手机上了解图书馆是否还有位置，方便高效。</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>（三）第三方平台分析</h4>
					<p>我们可以与学校打印店的老板和水站老板协商，把我们网站登录窗口的商家端告诉老板，当消费者在网站上提交了要打印的东西，复印店老板（商家）就可收到消息，进而对这份文件编序号，打印好后学生就可以去复印店拿，当消费者在网站上提交了订水订单，水站老板就会收到信息，安排送水。方便快捷。</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>（四）宣传分析</h4>
					<p>我们还可以在校园APP首页、微信公众号、微信群、微信朋友圈、QQ空间里等进行有效的宣传，并给予宣传者相应的奖励，以便能让更多的消费者看到我们的宣传信息，扩大我们的信息影响力，从而增加学生的使用力。</p>
				</div>
			</div><br />
            		<div class="container">
				<div class="about-wel wel-head text-center">
					<h3>平台开发的特色</h3>
				</div>
				<!---- about-grids ---->
				<div class="about-grids">
					<div class="about-grids-row1">
						<p>1.方便快捷，文件信息展现丰富。Ship for me作为一个网站平台，它能
给使用者提供许多文件信息。许多学生在打印时，如果苦于找不到打印模板，那么就可以在Ship for me平台搜素模板，实现打印。如果在选择订水时就可以在上面填写自己的信息和选择订水，方便快捷。同时，学生在参加比赛时也可以尽快找到自己的搭档和了解队友信息。
</p>
                        <p>2.工作人员贴近用户群。Ship for me平台是由学生群体创立的， 所以他们的想法和思维习惯更贴近现在的大学生， 他们更知道大学生们需要什么， 想得到什么样的服务，从而就针对需求，提供相应的服务，满足他们的需求。
</p>
                        <p>3.平台反馈机制设计合理。 网站上的顾客留言板和聊天室等都是对平台服务进行监管和了解使用情况的有效工具。这在很大程度上督促平台开发商不断提升自己的平台质量，也能使众多好评的消费者吸引更多的客户。</p>
					</div>
				</div>
				<!---- about-grids ---->
		        <br />
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
