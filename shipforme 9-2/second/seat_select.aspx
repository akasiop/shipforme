<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seat_select.aspx.cs" Inherits="second_seat_select" %>

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
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="楼层："></asp:Label>
                <asp:DropDownList ID="ddl_floor" Height="25px" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True">--请选择--</asp:ListItem>
                    <asp:ListItem>二楼</asp:ListItem>
                    <asp:ListItem>三楼</asp:ListItem>
                    <asp:ListItem>四楼</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<asp:Label ID="Label2" runat="server" Text="区域："></asp:Label>
                <asp:DropDownList ID="ddl_area" Height="25px" runat="server"  DataSourceID="SqlDataSource2" DataTextField="area" DataValueField="area" >
                    <asp:ListItem>--请选择--</asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT distinct[area] FROM [library_info] WHERE ([floor] = @floor)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddl_floor" Name="floor" PropertyName="SelectedValue" Type="String" DefaultValue="二楼"  />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;<asp:Button ID="Button2" runat="server" Text="查 看" CssClass="check" OnClick="Button2_Click" />
                <br />
                <asp:GridView ID="GridView1" CssClass="GridViewStyle" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand">
                    <Columns>
                        <asp:BoundField DataField="floor" HeaderText="楼层" SortExpression="floor" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="area" HeaderText="区域" SortExpression="area" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="number" HeaderText="标号" SortExpression="number" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" >
                        <ItemStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:ButtonField CommandName="identify" Text="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定选座？')&quot;&gt;选 座&lt;/div&gt;">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [library_info] WHERE (([area] = @area) AND ([floor] = @floor) AND ([state] = @state))">
                    <SelectParameters>
                        <asp:SessionParameter Name="area" SessionField="area" Type="String" />
                        <asp:SessionParameter Name="floor" SessionField="floor" Type="String" />
                        <asp:SessionParameter Name="state" SessionField="state" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
