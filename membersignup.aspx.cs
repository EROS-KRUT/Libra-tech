using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class membersignup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from membersignup";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 1000;
            while (reader.Read())
            {
                ctr++;
            }
            reader.Close();
            con.Close();
            if (ctr == 1000)
            {
                TextBox8.Text = ctr.ToString();
            }
            else
            {
                TextBox8.Text = ctr.ToString();
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
            string s = "select * from membersignup where email= " + "'" + TextBox4.Text + "'";
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
            if (ctr == 0)
            {
                s = "insert into membersignup values(@id,@n,@d,@m,@e,@s,@c,@a,@pw,'0')";
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.AddWithValue("@id", TextBox8.Text);
                cmd1.Parameters.AddWithValue("@n", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@d", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@m", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@e", TextBox4.Text);
                cmd1.Parameters.AddWithValue("@s", DropDownList1.SelectedItem.Value);
                cmd1.Parameters.AddWithValue("@c", TextBox6.Text);
                cmd1.Parameters.AddWithValue("@a", TextBox5.Text);
                cmd1.Parameters.AddWithValue("@pw", TextBox9.Text);
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language=javascript>alert('Registered Successfully')</script>");
                clearForm();
                Response.Redirect("memberlogin.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('You have already registered')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
    void clearForm()
    {
        TextBox8.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        DropDownList1.SelectedValue = "";
        TextBox6.Text = "";
        TextBox5.Text = "";
        TextBox9.Text = "";
        TextBox7.Text = "";
    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hemanth40\source\repos\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True");
        con.Open();
        string query = "select id from membersignup";
        SqlCommand cmd111 = new SqlCommand(query, con);
        SqlDataReader reader;
        reader = cmd111.ExecuteReader();
        while (reader.Read())
        {
            if (reader["id"].ToString() == TextBox8.Text)
            {
                Label1.Text = "Already Exists!!";
            }
            else
            {
                Label1.Text = "";
            }
        }
    }
}