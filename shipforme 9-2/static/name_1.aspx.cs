using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class second_2_check_resume : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = "温泽和";
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        string sql = "select * from [personal_resume] where name='" + name + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);

        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            if (name == sdr["name"].ToString())
            {
                tb_name.Text = sdr["name"].ToString();
                tb_myclass.Text = sdr["myclass"].ToString();
                tb_qq.Text = sdr["qq"].ToString();
                tb_telephone.Text = sdr["telephone"].ToString();
                tb_mailbox.Text = sdr["mailbox"].ToString();
                tb_competition_name.Text = sdr["competition_name"].ToString();
                tb_personal_skill.Text = sdr["personal_skill"].ToString();
                tb_pensonal_evaluate.Text = sdr["pensonal_evaluate"].ToString();
                tb_require.Text = sdr["require"].ToString();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../index.aspx");
    }
}