using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class memberlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
            string s = "select * from membersignup where email=" + "'" + TextBox1.Text + "'" + " and  password=" + "'" + TextBox2.Text + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            string wbal = "";
            while (reader.Read())
            {
                ctr++;
                wbal = reader.GetString(9);
            }
            reader.Close();
            con.Close();
            if (ctr == 1)
            {
                Session["logname"] = TextBox1.Text.Trim();
                Session["wbal"] = wbal;
                Response.Redirect("viewbooks.aspx");
                clearForm();
            }
            else
            {
                Response.Write("<script language=javascript>alert('Invalid credentials')</script>");
            }
            clearForm();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message+ "');</script>");
        }
    }
    void clearForm()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}