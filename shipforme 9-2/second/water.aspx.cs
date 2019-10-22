using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class second_water : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string water_name = this.water_name.Text;
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        string sql = "select * from [water_name] where water_name='" + water_name + "'";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            if (water_name == sdr["water_name"].ToString())
            {
                Session["price"] = sdr["price"].ToString();
                this.price.Text = Session["price"].ToString();
                conn.Close();
            }

        }
    }
  
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string location = ddllocat.Text;
        string more_location = tbxlocat.Text;
        string mount = ddlmount.Text;
        string telephone = tbxphone.Text;
        string water_name = this.water_name.Text;
        string price = Session["price"].ToString();


        string sql = "insert into water_info (username,location,more_location,mount,telephone,water_name,price) values('" + username + "','" + location + "','" + more_location + "','" + mount + "','" + telephone + "','" + water_name + "','" + price + "')";   
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();

        //写入基本信息
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.ExecuteNonQuery(); 
        //关闭连接
        conn.Close();

        Response.Write("<script>alert('提交成功!正在配送')</script>");
    }
}