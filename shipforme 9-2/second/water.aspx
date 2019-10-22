<%@ Page Language="C#" AutoEventWireup="true" CodeFile="water.aspx.cs" Inherits="second_water" %>

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
</head>
<body>
    <form id="form1" runat="server" >
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [water_name]"></asp:SqlDataSource>
    <div>
        <div style="padding-left:2em;padding-top:1em">
        <div>
        <asp:Label ID="Label1" runat="server" Text="地址:"></asp:Label>
        <asp:DropDownList ID="ddllocat" runat="server" Height="25px">
            <asp:ListItem>--请选择--</asp:ListItem>
            <asp:ListItem>敏一</asp:ListItem>
            <asp:ListItem>敏二</asp:ListItem>
            <asp:ListItem>慧心</asp:ListItem>
            <asp:ListItem>乐群</asp:ListItem>
            <asp:ListItem>博爱</asp:ListItem>
            <asp:ListItem>其他</asp:ListItem>
        </asp:DropDownList>
            </div>
        <br />
        <div>
        <asp:Label ID="Label2" runat="server" Text="具体地址："></asp:Label>
            <asp:TextBox ID="tbxlocat" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="（例如：东520、炎培308）"></asp:Label>
            </div>
        <br />
        <div><asp:Label ID="Label4" runat="server" Text="数量："> </asp:Label>
            <asp:DropDownList ID="ddlmount" runat="server" Height="25px">
            <asp:ListItem>--请选择--</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
            </div>
        <br /><div>
        <asp:Label ID="Label5" runat="server" Text="联系方式："></asp:Label>
        <asp:TextBox ID="tbxphone" runat="server"></asp:TextBox>
            </div>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
      
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div><asp:Label ID="Label6" runat="server" Text="品牌："></asp:Label>
                <asp:DropDownList Height="25px" ID="water_name" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="water_name" DataValueField="water_name" >
                </asp:DropDownList></div>
                <br />
                <asp:Label ID="Label7" runat="server" Text="单价："></asp:Label>
                <asp:Label ID="price" runat="server" Text=""></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
        <br />
        <div style="text-align:center">
        <asp:Button ID="Button1" runat="server" CssClass="contact_anniu" Text="提交订单" OnClick="Button1_Click" />
            <br />    
            <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="print_info" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
