using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class readbook1 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            String str = "select BookId,BookName,Author,Category,pdffilename from bookadd";
            SqlCommand cm = new SqlCommand(str, conn);
            SqlDataReader reader;
            conn.Open();           
            reader = cm.ExecuteReader();
            Response.Write("<table id=customers align=center border=4><tr><td>BookID</td><td>BookName</td><td>Author</td><td>Category</td><td>File Name</td></tr><tr>");
            String s = "", fn = "";
            while (reader.Read())
            {
                for (int i = 0; i <= 4; i++)
                {
                    s = reader.GetString(i).Trim();
                    if (i == 4)
                    {
                        fn = s;
                        Response.Write("<td>" + s + " </td>");
                    }
                    else
                    {
                        Response.Write("<td>" + s + " </td>");
                    }
                }              
                Response.Write("<td><a href=readbook2.aspx?id=" + fn + " >Read Book</a></td>");
                Response.Write("</tr>");
            }         
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}