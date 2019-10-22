using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class second_library_state : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string floor = this.Label1.Text;
        string area = this.Label2.Text;
        string number = this.Label3.Text;
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        string sql = "select * from [library_info] where floor= '" + floor + "' and area= '" + area + "' and number= '" + number + "'";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader sdr = cmd.ExecuteReader();
            
        if (sdr.Read())
        {
            string state = sdr["state"].ToString();
            this.lblMessage.Text = state;
            conn.Close();
            if (state.Contains("未选"))
                 {
                     this.Body1.Style.Value = "background:#89c997";
                 }
            if (state.Contains("已选"))
                 {
                     this.Body1.Style.Value = "background:#aaaaaa";  
                 }
        }
    }

    
}