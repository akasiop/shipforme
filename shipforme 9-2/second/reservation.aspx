<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reservation.aspx.cs" Inherits="second_reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
    <link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
        <link href="../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="请选择所要查看的比赛名称："></asp:Label>
        <asp:DropDownList ID="name" runat="server" Height="25px" DataSourceID="SqlDataSource1" DataTextField="competition_name" DataValueField="competition_name">
        </asp:DropDownList>
        &nbsp;<asp:Button ID="Button1" runat="server" Text="查找" CssClass="inquire" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [competition_name] FROM [competition_name]"></asp:SqlDataSource>
    
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
<asp:PostBackTrigger ControlID="GridView1" />
</Triggers>
            <ContentTemplate>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [name], [telephone], [personal_skill] FROM [personal_resume] WHERE ([competition_name] = @competition_name)">
                    <SelectParameters>
                        <asp:SessionParameter Name="competition_name" SessionField="competition_name" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView1" runat="server" OnRowDataBound="gridView1_RowDataBound" CssClass="GridViewStyle" OnRowCommand="OnRowCommand"  AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" >
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="telephone" HeaderText="电话号码" SortExpression="telephone" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="personal_skill" HeaderText="个人能力" SortExpression="personal_skill" > 
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                <asp:ButtonField CommandName="check_resume" Text="查看简历" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>

                    </Columns>
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [name], [telephone], [personal_skill] FROM [personal_resume]"></asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>

</html>
