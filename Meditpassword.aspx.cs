using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Meditpassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");   
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string un = "";
            string s = "";
            un = Session["logname"].ToString();
            s = "select * from membersignup where email=" + "'" + un + "'" + " and  password=" + "'" + TextBox1.Text + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            while (reader.Read())
            {
                ctr++;
            }
            reader.Close();
            con.Close();
            if (ctr == 1)
            {
                s = "update membersignup set password=@p where email=@u";
                SqlCommand cmd11 = new SqlCommand(s, con);
                cmd11.Parameters.AddWithValue("@u", un);
                cmd11.Parameters.AddWithValue("@p", TextBox9.Text);
                con.Open();
                cmd11.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password updated successfully');</script>");
                Response.Redirect("memberlogin.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");              
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
}