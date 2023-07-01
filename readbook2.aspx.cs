using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class readbook2 : System.Web.UI.Page
{
    String s = "";
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        s = Request.QueryString.Get(0);
        Label1.Text = s;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {        
        String un = Session["logname"].ToString();
        string wbal = Session["wbal"].ToString();
        double wb = Convert.ToDouble(wbal);
        wb = wb - 10;
        s = "update membersignup set wbal=@w where email=@u";
        SqlCommand cmd11 = new SqlCommand(s, con);
        cmd11.Parameters.AddWithValue("@w", wb.ToString());
        cmd11.Parameters.AddWithValue("@u", un);
        con.Open();
        cmd11.ExecuteNonQuery();
        con.Close();
        Response.Redirect(Label1.Text);
    }
}