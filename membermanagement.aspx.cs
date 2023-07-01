using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class membermanagement : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
        try
        {
            string str11 = "select Id,Name,Mobile,Email,State,City from membersignup ";
            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd1 = new SqlCommand(str11, con);          
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