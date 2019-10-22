using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class second_order_library : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
    }
    protected void OnRowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "identify")
        {
            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection conn = new SqlConnection(url);
            conn.Open();
            //判断用户点击的是哪行
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            //得到被点击行的数据
            GridViewRow row = GridView1.Rows[rowIndex];
            //得到被点击行的第2列的值
            String floor = row.Cells[0].Text;
            String area = row.Cells[1].Text;
            String number = row.Cells[2].Text;
            string sql = "Update [sfm].[dbo].[library_info] set [state]='未选',[username]='' where floor= '" + floor + "' and area= '" + area + "' and number= '" + number + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();

        }
    }
}