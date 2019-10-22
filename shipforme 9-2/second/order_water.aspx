<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_water.aspx.cs" Inherits="second_order_water" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
    <link href="../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="gridView1_RowDataBound" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="编号" SortExpression="id" InsertVisible="False" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="location" HeaderText="区域" SortExpression="location" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="more_location" HeaderText="门牌" SortExpression="more_location" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="water_name" HeaderText="品牌" SortExpression="water_name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="单价" SortExpression="price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mount" HeaderText="数量" SortExpression="mount" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="total_price" HeaderText="总价" SortExpression="total_price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定取消吗？')&quot;&gt;取消订单&lt;/div&gt;" ShowDeleteButton="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" DeleteCommand="DELETE FROM [water_info] WHERE [id] = @id" InsertCommand="INSERT INTO [water_info] ([location], [more_location], [water_name], [price], [mount], [total_price], [state]) VALUES (@location, @more_location, @water_name, @price, @mount, @total_price, @state)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [location], [more_location], [water_name], [price], [mount], [total_price], [state] FROM [water_info] WHERE ([username] = @username)" UpdateCommand="UPDATE [water_info] SET [location] = @location, [more_location] = @more_location, [water_name] = @water_name, [price] = @price, [mount] = @mount, [total_price] = @total_price, [state] = @state WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="more_location" Type="String" />
                <asp:Parameter Name="water_name" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="mount" Type="String" />
                <asp:Parameter Name="total_price" Type="Int32" />
                <asp:Parameter Name="state" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="username" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="more_location" Type="String" />
                <asp:Parameter Name="water_name" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="mount" Type="String" />
                <asp:Parameter Name="total_price" Type="Int32" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
