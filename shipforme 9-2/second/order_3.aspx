<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_3.aspx.cs" Inherits="second_order_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
    <link href="../css/style_2.css" rel='stylesheet' type='text/css' />

</head>
<body>
    <form runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" DeleteCommand="DELETE FROM [water_info] WHERE [id] = @original_id" InsertCommand="INSERT INTO [water_info] ([telephone], [mount], [water_name], [location], [more_location], [username], [state]) VALUES (@telephone, @mount, @water_name, @location, @more_location, @username, @state)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [telephone], [mount], [water_name], [location], [more_location], [username], [state] FROM [water_info] ORDER BY [id], [location] DESC, [more_location] DESC" UpdateCommand="UPDATE [water_info] SET [telephone] = @telephone, [mount] = @mount, [water_name] = @water_name, [location] = @location, [more_location] = @more_location, [username] = @username, [state] = @state WHERE [id] = @original_id">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="mount" Type="String" />
                <asp:Parameter Name="water_name" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="more_location" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="state" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="mount" Type="String" />
                <asp:Parameter Name="water_name" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="more_location" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand" OnRowDataBound="gridView1_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                        <FooterStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="username" HeaderText="学号" SortExpression="username" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="water_name" HeaderText="品牌" SortExpression="water_name" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mount" HeaderText="数量" SortExpression="mount" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="location" HeaderText="区域" SortExpression="location" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="more_location" HeaderText="门牌" SortExpression="more_location" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="telephone" HeaderText="联系电话" SortExpression="telephone" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:ButtonField CommandName="identify" Text="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定已送达？')&quot;&gt;确定送达&lt;/div&gt;">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
            </ContentTemplate></asp:UpdatePanel>
        <asp:Label ID="Label1" runat="server" Text="订单查询："></asp:Label>
        <asp:DropDownList ID="ddl_title" runat="server" Height="25px">
            <asp:ListItem>学号</asp:ListItem>
            <asp:ListItem>区域</asp:ListItem>
            <asp:ListItem>门牌号</asp:ListItem>
            <asp:ListItem>送水状态</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:TextBox ID="tb_detail" runat="server" class="input_out" name=""
   onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
   onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Height="23px"></asp:TextBox>
        &nbsp
<asp:Button ID="Button1" CssClass="inquire" runat="server" Text="查 询" OnClick="Button1_Click" />
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView2" runat="server" OnRowDataBound="gridView1_RowDataBound" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="编号" SortExpression="id" InsertVisible="False" ReadOnly="True" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="username" HeaderText="学号" SortExpression="username" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="water_name" HeaderText="品牌" SortExpression="water_name" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mount" HeaderText="数量" SortExpression="mount" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="location" HeaderText="区域" SortExpression="location" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="more_location" HeaderText="门牌" SortExpression="more_location" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="telephone" HeaderText="联系电话" SortExpression="telephone" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [water_info] WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" OnRowDataBound="gridView1_RowDataBound" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource4">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="编号" ReadOnly="True" SortExpression="id" InsertVisible="False" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="username" HeaderText="学号" SortExpression="username" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="water_name" HeaderText="品牌" SortExpression="water_name" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mount" HeaderText="数量" SortExpression="mount" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="location" HeaderText="区域" SortExpression="location" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="more_location" HeaderText="门牌" SortExpression="more_location" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="telephone" HeaderText="联系电话" SortExpression="telephone" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [water_info] WHERE ([location] = @location)">
                    <SelectParameters>
                        <asp:SessionParameter Name="location" SessionField="location" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView4" runat="server" OnRowDataBound="gridView1_RowDataBound" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource5">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="编号" ReadOnly="True" SortExpression="id" InsertVisible="False" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="username" HeaderText="学号" SortExpression="username" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="water_name" HeaderText="品牌" SortExpression="water_name" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mount" HeaderText="数量" SortExpression="mount" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="location" HeaderText="区域" SortExpression="location" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="more_location" HeaderText="门牌" SortExpression="more_location" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="telephone" HeaderText="联系电话" SortExpression="telephone" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [water_info] WHERE ([more_location] = @more_location)">
                    <SelectParameters>
                        <asp:SessionParameter Name="more_location" SessionField="more_location" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView5" runat="server" OnRowDataBound="gridView1_RowDataBound" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource6">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="编号" ReadOnly="True" SortExpression="id" InsertVisible="False" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="username" HeaderText="学号" SortExpression="username" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="water_name" HeaderText="品牌" SortExpression="water_name" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mount" HeaderText="数量" SortExpression="mount" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="location" HeaderText="区域" SortExpression="location" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="more_location" HeaderText="门牌" SortExpression="more_location" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="telephone" HeaderText="联系电话" SortExpression="telephone" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [water_info] WHERE ([state] = @state)">
                    <SelectParameters>
                        <asp:SessionParameter Name="state" SessionField="state" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br /> 
        <br />
    </div>
    </form>
</body>
</html>
