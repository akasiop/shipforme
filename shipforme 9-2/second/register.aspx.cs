using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class second_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
         string username = tbusername.Text;
         string password = tbpsw.Text;
         string name_0 = name.Text;


         string sql = "insert into user_info (username,password,name) values('" + username + "','" + password + "','" + name_0 + "')";
        string sql2 = "select * from [user_info] where username='" + username + "'";
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlCommand read = new SqlCommand(sql2, conn);

        if (username == "")
        {
            this.lblMessage.Text = "学号不可以为空！";
        }
        else if (name_0 == "")
        {
            this.lblMessage.Text = "请填写姓名！";
        }

        else if (tbpsw.Text == "")
        {
            this.lblMessage.Text = "密码不可以为空！";
        }
        else if (tbpsw2.Text != tbpsw.Text)
        {
            this.lblMessage.Text = "两次密码输入不一致！";
        }
        else
        {
            DataSet ds = new DataSet();
            SqlDataReader sdr=read.ExecuteReader();

            if (sdr.Read())
            {

                if (username == sdr["username"].ToString())
                {
                    this.lblMessage.Text = "该学号已注册！";
                    sdr.Close();
                }
            }
            else
            {
                //this.lblMessage.Text = "注册成功！";
                cmd.ExecuteNonQuery();
                System.Threading.Thread.Sleep(500);
                //Response.Redirect("./login.aspx");
                Response.Write("<script Language=Javascript>alert('注册成功！');location.href = './login.aspx';</script>");
            }
            }
        }
    }
