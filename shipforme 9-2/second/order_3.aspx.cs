using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class second_order_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void gridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)//数据行
        {
            string print = e.Row.Cells[7].Text; //Cells[0]为第一列 
            //查找关键字 
            if (print.Contains("未配送"))
            {
                string wei = "<font color='#EC005F'>" + print;

                e.Row.Cells[7].Text = print.Replace("未配送", wei);
            }
            if (print.Contains("已配送"))
            {
                string yi = "<font color='#464646'>" + print;

                e.Row.Cells[7].Text = print.Replace("已配送", yi);
            }
        }
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
            String id = row.Cells[0].Text;
            string sql = "Update [sfm].[dbo].[water_info] set [state]='已配送' where id= '" + id + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string title = this.ddl_title.Text;
        string detail = this.tb_detail.Text;
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        string sql = "select * from [water_info] ";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader sdr = cmd.ExecuteReader();
            Session["username"] = null;        
            Session["location"] = null;
            Session["more_location"] = null;
            Session["state"] = null;
            if (sdr.Read())
            {
                if (title == "学号")
                {
                    string username = detail;
                    Session["username"] = username;
                    conn.Close();
                  

                }
                else if (title == "区域")
                {
                    string location = detail;
                    Session["location"] = location;
                    conn.Close();
                    
                }
                else if (title == "门牌号")
                {
                    string more_location = detail;
                    Session["more_location"] = more_location;
                    conn.Close();
                   
                }
                else if (title == "送水状态")
                {

                    string state = detail;
                    Session["state"] = state;
                    conn.Close();
                }
                else
                {
                    this.lblMessage.Text = "输入查询条件有误！";
                }

            }
        
    }
    
}