using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class second_order_water : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)//数据行
        {

            string distribution = e.Row.Cells[7].Text; //Cells[0]为第一列 
            //查找关键字 
            if (distribution.Contains("未配送"))
            {
                string wei = "<font color='#EC005F'>" + distribution;

                e.Row.Cells[7].Text = distribution.Replace("未配送", wei);
            }
            if (distribution.Contains("已配送"))
            {
                string yi = "<font color='#464646'>" + distribution;

                e.Row.Cells[7].Text = distribution.Replace("已配送", yi);
            }


        }
    }
}