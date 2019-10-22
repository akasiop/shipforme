<%@ Page Language="C#" AutoEventWireup="true" CodeFile="template.aspx.cs" Inherits="second_template" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="gridView1_RowDataBound" CssClass="GridViewStyle" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand">
            <Columns>
                <asp:BoundField DataField="FileName" HeaderText="文件名" SortExpression="FileName" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FileTime" HeaderText="更新时间" SortExpression="FileTime" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="（打印要求）">
                    <ItemTemplate>
                    <asp:TextBox id="textbox1" runat="server" Text="" Width="90%"></asp:TextBox>
                    </ItemTemplate>
                     <HeaderStyle ForeColor="#626262" />
                     <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:ButtonField CommandName="Download" Text="下载" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="print" Text="打印" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [FileName], [FileTime], [FileContent] FROM [template_file]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

