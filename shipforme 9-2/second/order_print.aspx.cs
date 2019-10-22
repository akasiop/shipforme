using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class second_order : System.Web.UI.Page
{

         protected void Page_Load(object sender, EventArgs e)
    {

    }
         protected void gridView1_RowDataBound(object sender, GridViewRowEventArgs e)
         {
             if (e.Row.RowType == DataControlRowType.DataRow)//数据行
             {
                 string Str = e.Row.Cells[0].Text; //第二列内容
                 if (Str.Length > 10) //第二列内容大于20个
                 {
                     e.Row.Cells[0].Text = Str.Substring(0, 10) + "..."; //截取20个显示，其他用“...”号代替
                     e.Row.Cells[0].ToolTip = Str;//鼠标放上去显示全部信息
                 }

                 string print = e.Row.Cells[2].Text; //Cells[0]为第一列 
                 //查找关键字 
                 if (print.Contains("未打印"))
                 {
                     string wei = "<font color='#EC005F'>" + print;

                     e.Row.Cells[2].Text = print.Replace("未打印", wei);
                 }
                 if (print.Contains("已打印"))
                 {
                     string yi = "<font color='#464646'>" + print;

                     e.Row.Cells[2].Text = print.Replace("已打印", yi);
                 }

               
             }
         }

}
