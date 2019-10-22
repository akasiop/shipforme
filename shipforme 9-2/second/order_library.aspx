<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_library.aspx.cs" Inherits="second_order_library" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="refresh" content="2"/>
    <title>Shipforme</title>
    <link href="../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" CssClass="GridViewStyle" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="floor" HeaderText="楼层" SortExpression="floor">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="area" HeaderText="区域" SortExpression="area">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="number" HeaderText="标号" SortExpression="number">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state">
                <ItemStyle ForeColor="#EC005F" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField CommandName="identify" Text="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定离开？')&quot;&gt;释放座位&lt;/div&gt;">
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [floor], [area], [number], [state] FROM [library_info] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
