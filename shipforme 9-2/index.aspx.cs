using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = null;
        if (!IsPostBack)
        {
            GetListPage();
        }
    }

    private void GetListPage()
    {
        try
        {
            
            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection con = new SqlConnection(url);

            con.Open();

            SqlDataAdapter sda = new SqlDataAdapter("select * from news order by news_id desc  ", con);


            DataSet ds = new DataSet();
            sda.Fill(ds);
            PagedDataSource objPds = new PagedDataSource();
            objPds.DataSource = ds.Tables[0].DefaultView;

            objPds.AllowPaging = true;
            objPds.PageSize = 9;


            dlNews.DataSource = objPds;
            dlNews.DataBind();
        }
        catch
        {

        }
    }

}