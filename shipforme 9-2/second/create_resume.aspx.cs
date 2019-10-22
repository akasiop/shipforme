using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class second_create_resume : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string name = tb_name.Text;
        string myclass = tb_myclass.Text;
        string qq = tb_qq.Text;
        string telephone = tb_telephone.Text;
        string mailbox = tb_mailbox.Text;
        string competition_name = this.ddl_competition_name.Text;
        string personal_skill = Request.Form["tb_personal_skill"];
        string pensonal_evaluate = Request.Form["tb_pensonal_evaluate"];
        string require = Request.Form["tb_require"];



        if (name == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写名字！')</script>");
        }
        else if(myclass == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写班级！')</script>");
        }
        else if (qq == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写QQ！')</script>");
        }
        else if (telephone == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写电话！')</script>");
        }
        else if (mailbox == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写邮箱！')</script>");
        }
        else if (competition_name == "--请选择--")
        {
            Response.Write("<script Language=Javascript>alert('请选择参赛意向！')</script>");
        }
        else if (personal_skill == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写技能条件！')</script>");
        }
        else if (pensonal_evaluate == "")
        {
            Response.Write("<script Language=Javascript>alert('请填写自我评价！')</script>");
        }
        else
        {


            string sql = "insert into personal_resume (name,myclass,qq,telephone,mailbox,competition_name,personal_skill,pensonal_evaluate,require) values('" + name + "','" + myclass + "','" + qq + "','" + telephone + "','" + mailbox + "','" + competition_name + "','" + personal_skill + "','" + pensonal_evaluate + "','" + require + "')";
            /*  string sql1 = "insert into resume_info2 (competition_name,personal_skill,pensonal_evaluate,exprience,require) values('" + competition_name + "','" + personal_skill + "','" + pensonal_evaluate + "','" + exprience + "','" + require + "')";*/
            string sql2 = "select * from [personal_resume] where name='" + name + "'";
            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection conn = new SqlConnection(url);
            conn.Open();


            //写入信息
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlCommand read = new SqlCommand(sql2, conn);
            DataSet ds = new DataSet();
            SqlDataReader sdr = read.ExecuteReader();

            if (sdr.Read())
            {
            if (name == sdr["name"].ToString())
            {
                Response.Write("<script Language=Javascript>alert('已存在您的简历，如需修改请联系管理员！');</script>");
                sdr.Close();
            }
            }
            else { 
            /*    SqlCommand cmd1 = new SqlCommand(sql1, conn);*/
            
            cmd.ExecuteNonQuery();
            /*    cmd1.ExecuteNonQuery();*/
            //关闭连接
            conn.Close();
            System.Threading.Thread.Sleep(500);
            //Response.Redirect("./login.aspx");
            Response.Write("<script Language=Javascript>alert('恭喜你，提交成功！');location.href = '../second/personal.aspx';</script>");
            }
            
        }
    }
}