<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_print.aspx.cs" Inherits="second_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
       
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="gridView1_RowDataBound"  CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="FileName" HeaderText="文件名" SortExpression="FileName">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FileRequire"  HeaderText="打印要求" SortExpression="FileRequire" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Print" HeaderText="状态" SortExpression="Print" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="id" HeaderText="编号" SortExpression="id" InsertVisible="False" ReadOnly="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定删除吗？')&quot;&gt;删除&lt;/div&gt;" ShowDeleteButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" DeleteCommand="DELETE FROM [file] WHERE [id] = @original_id" InsertCommand="INSERT INTO [file] ([FileName], [FileRequire], [FileUser], [Print]) VALUES (@FileName, @FileRequire, @FileUser, @Print)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [FileName], [FileRequire], [FileUser], [Print] FROM [file] WHERE ([FileUser] = @FileUser)" UpdateCommand="UPDATE [file] SET [FileName] = @FileName, [FileRequire] = @FileRequire, [FileUser] = @FileUser, [Print] = @Print WHERE [id] = @original_id">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FileName" Type="String" />
                <asp:Parameter Name="FileRequire" Type="String" />
                <asp:Parameter Name="FileUser" Type="String" />
                <asp:Parameter Name="Print" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="FileUser" SessionField="username" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FileName" Type="String" />
                <asp:Parameter Name="FileRequire" Type="String" />
                <asp:Parameter Name="FileUser" Type="String" />
                <asp:Parameter Name="Print" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
    </div>
    </form>
</body>
</html>
