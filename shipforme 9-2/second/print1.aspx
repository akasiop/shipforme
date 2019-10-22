<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print1.aspx.cs" Inherits="second_test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
       
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../js/jquery.min.js"></script>
        <link href="./css/style.css" rel='stylesheet' type='text/css' />
		<link href="../css/style_2.css" rel='stylesheet' type='text/css' />
		
        <style type="text/css">
button:hover{
 text-decoration:underline;  /*鼠标放上去有下划线*/
}
</style>


   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<!---//webfonts--->
	</head>
<body>
    <form id="form1" runat="server" >
    <div style="text-align:center">
        <p class="font_color_1" style="font-size:1.3em">
            ——选择打印文件——
        </p>
        <p class="font_color_2">
            <asp:FileUpload ID="fileUpload" runat="server" Height="2em" Width="18em" />
        <br />

        <br />

        <p class="font_color_1" style="font-size:1.3em">
            ——打印要求——</p>
        <asp:TextBox ID="tbxrequire" runat="server" Width=20em Height="2em" BorderColor="#EFEFEF"  ></asp:TextBox>
        <p class="font_color_2" style="font-size:0.8em">&nbsp;（例如：黑白，单面，一份）</p>
        <asp:Button ID="btn_Upload" runat="server" CssClass="contact_anniu" Text="打印" OnClick="btn_Upload_Click1" ForeColor="#464646"/>
            <br />
            <br />
        <asp:Label ID="lblMessage" CssClass="print_info" runat="server" Text=""></asp:Label></p>  
      

    </div>
    </form>
</body>
</html>
