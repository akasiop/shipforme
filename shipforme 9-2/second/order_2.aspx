<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_2.aspx.cs" Inherits="second_order_2" %>

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
    
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="gridView1_RowDataBound"  CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FileUser" HeaderText="学号" SortExpression="FileUser" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FileName" HeaderText="文件名" SortExpression="FileName" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FileRequire" HeaderText="打印要求" SortExpression="FileRequire" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Print" HeaderText="状态" SortExpression="Print">
                <ItemStyle  HorizontalAlign="Center"/>
                </asp:BoundField>
                <asp:BoundField DataField="FileTime" HeaderText="时间" SortExpression="FileTime" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField CommandName="Download" Text="下载打印" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" DeleteCommand="DELETE FROM [file] WHERE [id] = @original_id AND (([FileName] = @original_FileName) OR ([FileName] IS NULL AND @original_FileName IS NULL)) AND (([FileRequire] = @original_FileRequire) OR ([FileRequire] IS NULL AND @original_FileRequire IS NULL)) AND (([FileUser] = @original_FileUser) OR ([FileUser] IS NULL AND @original_FileUser IS NULL)) AND [Print] = @original_Print AND (([FileTime] = @original_FileTime) OR ([FileTime] IS NULL AND @original_FileTime IS NULL))" InsertCommand="INSERT INTO [file] ([FileName], [FileRequire], [FileUser], [Print], [FileTime]) VALUES (@FileName, @FileRequire, @FileUser, @Print, @FileTime)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [FileName], [FileRequire], [FileUser], [Print], [FileTime] FROM [file]" UpdateCommand="UPDATE [file] SET [FileName] = @FileName, [FileRequire] = @FileRequire, [FileUser] = @FileUser, [Print] = @Print, [FileTime] = @FileTime WHERE [id] = @original_id AND (([FileName] = @original_FileName) OR ([FileName] IS NULL AND @original_FileName IS NULL)) AND (([FileRequire] = @original_FileRequire) OR ([FileRequire] IS NULL AND @original_FileRequire IS NULL)) AND (([FileUser] = @original_FileUser) OR ([FileUser] IS NULL AND @original_FileUser IS NULL)) AND [Print] = @original_Print AND (([FileTime] = @original_FileTime) OR ([FileTime] IS NULL AND @original_FileTime IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_FileName" Type="String" />
                <asp:Parameter Name="original_FileRequire" Type="String" />
                <asp:Parameter Name="original_FileUser" Type="String" />
                <asp:Parameter Name="original_Print" Type="String" />
                <asp:Parameter Name="original_FileTime" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FileName" Type="String" />
                <asp:Parameter Name="FileRequire" Type="String" />
                <asp:Parameter Name="FileUser" Type="String" />
                <asp:Parameter Name="Print" Type="String" />
                <asp:Parameter Name="FileTime" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FileName" Type="String" />
                <asp:Parameter Name="FileRequire" Type="String" />
                <asp:Parameter Name="FileUser" Type="String" />
                <asp:Parameter Name="Print" Type="String" />
                <asp:Parameter Name="FileTime" Type="DateTime" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_FileName" Type="String" />
                <asp:Parameter Name="original_FileRequire" Type="String" />
                <asp:Parameter Name="original_FileUser" Type="String" />
                <asp:Parameter Name="original_Print" Type="String" />
                <asp:Parameter Name="original_FileTime" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
