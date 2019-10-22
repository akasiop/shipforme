<%@ Page Language="C#" AutoEventWireup="true" CodeFile="net_disk1.aspx.cs" Inherits="second_net_disk1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
		<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="./js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="../css/style_2.css" rel='stylesheet' type='text/css' />
		<style type="text/css">
		
        </style>
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<!---//webfonts--->
	</head>
    <form id="form1" runat="server">
    <div>
       
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="gridView1_RowDataBound"  CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="FileKey" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand" >
            <Columns>
                <asp:BoundField DataField="FileKey" HeaderText="文件编号" SortExpression="FileKey" ReadOnly="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FileName"  HeaderText="文件名" SortExpression="FileName" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定删除吗？')&quot;&gt;删除&lt;/div&gt;" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
                <asp:ButtonField CommandName="Download" Text="下载" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" DeleteCommand="DELETE FROM [net_disk] WHERE [FileKey] = @original_FileKey" InsertCommand="INSERT INTO [net_disk] ([FileKey], [FileName], [FileType]) VALUES (@FileKey, @FileName, @FileType)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [FileKey], [FileName], [FileType] FROM [net_disk] WHERE ([FileUser] = @FileUser)" UpdateCommand="UPDATE [net_disk] SET [FileName] = @FileName, [FileType] = @FileType WHERE [FileKey] = @original_FileKey">
            <DeleteParameters>
                <asp:Parameter Name="original_FileKey" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FileKey" Type="String" />
                <asp:Parameter Name="FileName" Type="String" />
                <asp:Parameter Name="FileType" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="FileUser" SessionField="username" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FileName" Type="String" />
                <asp:Parameter Name="FileType" Type="String" />
                <asp:Parameter Name="original_FileKey" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
    </div>
    </form>
</body>
</html>

