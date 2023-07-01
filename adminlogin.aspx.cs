using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
            string s = "select * from adminlogin where u=" + "'" + TextBox1.Text + "'" + " and  p=" + "'" + TextBox2.Text + "'";
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
                Session["logname"] = TextBox1.Text.Trim();
                Response.Redirect("bookdetails.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
                clearForm();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
    void clearForm()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}