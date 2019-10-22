using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class second_personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            string username = Session["username"].ToString();
            this.lblMessage.Text = username;

            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection conn = new SqlConnection(url);
            conn.Open();
            string sql = "select * from [user_info] where username='" + username + "'";

            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                Session["username"] = sdr["username"].ToString();
                Session["name"] = sdr["name"].ToString();
                Session["identity"] = sdr["identity"].ToString();
                Session["club"] = sdr["club"].ToString();
            }
        }
        else
        {
            Response.Write("<script Language=Javascript>alert('请先登录！');location.href = './login.aspx';</script>");
        }
    }
}