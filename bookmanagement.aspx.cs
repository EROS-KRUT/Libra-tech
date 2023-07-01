using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class bookmanagement : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");  
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from bookadd";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 100;
            while (reader.Read())
            {
                ctr++;
            }
            reader.Close();
            con.Close();
            if (ctr == 100)
            {
                TextBox1.Text = "ID-" + ctr.ToString();
            }
            else
            {                
                TextBox1.Text = "ID-" + ctr.ToString();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Files/") + FileUpload1.FileName);
            }
            string s = "insert into bookadd values(@b,@n,@pub,@yopu,@a,@c,@noc,@l,@dpur,@bt,@p,@fn)";
            SqlCommand cmd1 = new SqlCommand(s, con);
            cmd1 = new SqlCommand(s, con);
            cmd1.Parameters.AddWithValue("@b", TextBox1.Text.Trim());
            cmd1.Parameters.AddWithValue("@n", TextBox2.Text.Trim());
            cmd1.Parameters.AddWithValue("@pub", TextBox10.Text.Trim());
            cmd1.Parameters.AddWithValue("@yopu", TextBox3.Text.Trim());
            cmd1.Parameters.AddWithValue("@a", TextBox4.Text.Trim());
            cmd1.Parameters.AddWithValue("@c", DropDownList1.SelectedItem.Value);
            cmd1.Parameters.AddWithValue("@noc", DropDownList2.SelectedItem.Value);
            cmd1.Parameters.AddWithValue("@l", TextBox5.Text.Trim());
            cmd1.Parameters.AddWithValue("@dpur", TextBox7.Text.Trim());
            cmd1.Parameters.AddWithValue("@bt", DropDownList3.SelectedItem.Value);
            cmd1.Parameters.AddWithValue("@p", TextBox6.Text.Trim());
            cmd1.Parameters.AddWithValue("@fn", FileUpload1.FileName);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language=javascript>alert('Book Added Successfully')</script>");
            clearForm();
            Response.Redirect("bookdetails.aspx");
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
        TextBox10.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox5.Text = "";
    } 
}    