using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class second_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session.Abandon();
        Session["username"] = null;
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
            string id = tbusername.Text;
            string password = tbpsw.Text;

            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection conn = new SqlConnection(url);
            conn.Open();
            string sql = "select * from [user_info] where username='" + username + "'";
            
            SqlCommand cmd = new SqlCommand(sql, conn);                                

            SqlDataReader sdr = cmd.ExecuteReader();
            


            if (sdr.Read())
            {
                if (password == sdr["password"].ToString())
                {
                    Session["username"] = sdr["username"].ToString();
                    //this.lblMessage.Text = "登陆成功！";
                    System.Threading.Thread.Sleep(200);//延迟5秒
                    Response.Redirect("../second/personal.aspx");
                    //Response.Write("<script Language=Javascript>alert('登陆成功！');location.href = '../second/personal.aspx';</script>");
                }
                else
                {
                    this.lblMessage.Text = "学号（ID）或密码错误！";
                }
            
            }
            else
            {
                this.lblMessage.Text = "学号（ID）或密码错误！";
            }
            sdr.Close();
            conn.Close();
        }
    }

   
    }
