using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class second_personal_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            string username = Session["username"].ToString();
            this.lblMessage.Text = username;
        }
        else
        {

            Response.Write("<script Language=Javascript>alert('请先登录！');location.href = './login_3.aspx';</script>");
        }

    }
}