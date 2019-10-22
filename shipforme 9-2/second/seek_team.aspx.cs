using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class second_seek_team : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["competition_name"] = null;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string name = this.name.Text;
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        string sql = "select * from [competition_name] ";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader sdr = cmd.ExecuteReader();
        

        if (sdr.Read())
        {
            if (name != null)
            {
                string competition_name = name;
                Session["competition_name"] = null;
                Session["competition_name"] = competition_name;
                conn.Close();
            }
        }
    }

    protected void OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "check_resume")
        {

            //判断用户点击的是哪行

            int rowIndex = Convert.ToInt32(e.CommandArgument);

            //得到被点击行的数据

            GridViewRow row = GridView1.Rows[rowIndex];


            //得到被点击行的列的值(这里是文件名)
            string name = row.Cells[0].Text;

            Session["name1"] = name;
            //Response.Redirect("./check_resume.aspx");
            Response.Write("<script>window.open('./check_resume.aspx')</script>");
            //Response.Write("<script language='javascript'>window.open('./check_resume.aspx');</script>");
        }
    }
    protected void gridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)//数据行
        {
            string Str = e.Row.Cells[2].Text; //第二列内容
            e.Row.Cells[2].ToolTip = Str;//鼠标放上去显示全部信息
            if (Str.Length > 16) //第二列内容大于20个
            {
                e.Row.Cells[2].Text = Str.Substring(0, 16) + "..."; //截取20个显示，其他用“...”号代替
            }

        }

    }

}