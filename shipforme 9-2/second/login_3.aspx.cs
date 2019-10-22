using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class second_login_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (tbusername.Text == "")
        {
            this.lblMessage.Text = "用户名不可以为空！";
        }
        else if (tbpsw.Text == "")
        {
            this.lblMessage.Text = "密码不可以为空！";
        }
        else
        {


            string username = tbusername.Text;

            string password = tbpsw.Text;

            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection conn = new SqlConnection(url);
            conn.Open();
            string sql = "select * from [user_admin] where username='" + username + "'";

            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataReader sdr = cmd.ExecuteReader();



            if (sdr.Read())
            {
                if (password == sdr["password"].ToString())
                {
                    Session["username"] = sdr["username"].ToString();
                    this.lblMessage.Text = "登录成功！";
                    System.Threading.Thread.Sleep(200);//延迟5秒
                    //Response.Write("<script>alert('该功能还在测试中，敬请期待!')</script>");
                    Response.Redirect("../admin/index/index.aspx");
                }
                else
                {
                    this.lblMessage.Text = "用户名或密码错误！";
                }
            }
            else
            {
                this.lblMessage.Text = "用户名或密码错误！";
            }
            sdr.Close();
            conn.Close();
        }
    }
}