using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Amemberdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            string str11 = "select Id,Name,Mobile,Email,State,City,Wbal from membersignup ";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(str11, con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da = new SqlDataAdapter(cmd1);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
}