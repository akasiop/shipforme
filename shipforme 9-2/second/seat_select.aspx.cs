using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class second_seat_select : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["floor"] = null;
        Session["area"] = null;
        Session["state"] = null;
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string floor = this.ddl_floor.Text;
        string area = this.ddl_area.Text;
        string state = "未选";
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        string sql = "select * from [library_info]";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader sdr = cmd.ExecuteReader();


        if (sdr.Read())
        {
            if (floor != null&area!=null)
            {
                
                Session["floor"] = floor;
                Session["area"] = area;
                Session["state"] = state;
                conn.Close();
            }
        }
    }

    protected void OnRowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "identify")
        {
            string username = Session["username"].ToString();
            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection conn = new SqlConnection(url);
            conn.Open();
            //判断用户点击的是哪行
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            //得到被点击行的数据
            GridViewRow row = GridView1.Rows[rowIndex];
            //得到被点击行的第2列的值
            String floor = row.Cells[0].Text;
            String area = row.Cells[1].Text;
            String number = row.Cells[2].Text;
            string sql = "Update [sfm].[dbo].[library_info] set [state]='已选',[username]='" + username + "' where floor= '" + floor + "' and area= '" + area + "' and number= '" + number + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();

        }
    }
    }
