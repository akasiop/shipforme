<%@ Page Language="C#" AutoEventWireup="true" CodeFile="library_state.aspx.cs" Inherits="second_library_state" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="refresh" content="1"/>
    <title>图书馆系统 v2.6</title>
    <style type="text/css">
html, body {
margin:0;
padding:0;
}
.container {

width:100%;
height:1500px;
/*width: 100%;*/
border: 1px solid green;
text-align:center;
margin-top:20%;
}
        .font {
            font-size:300px;
            color:#EC005F;
        }
        .font_2 {
            font-size:45px;
            color:#EC005F;
            letter-spacing:20px
        }
</style>

</head>
    <body id="Body1" runat="server">
    <form runat="server" class="container">
                <a>图书馆 v2.6</a>
    <div style="margin-top:0%">

        <h1><asp:Label ID="lblMessage" runat="server" CssClass="font" Text=""></asp:Label></h1>
        <br />
        <br />
        </div>
         <div style="margin-top:-4%">
        <asp:Label ID="Label1" runat="server" CssClass="font_2" Text="">二楼</asp:Label>
        &nbsp;<asp:Label ID="Label2" runat="server" CssClass="font_2" Text="">A</asp:Label>
        &nbsp;<asp:Label ID="Label3" runat="server" CssClass="font_2" Text="">1</asp:Label>
        </div>
    </form>
</body>
</html>
