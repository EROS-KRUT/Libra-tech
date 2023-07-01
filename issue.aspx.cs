using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class issue : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox8.Text = DateTime.Now.ToShortDateString();
        TextBox1.Text = DateTime.Now.AddDays(15).ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "insert into issue values(@id,@bid,@doi,@dor)";
            SqlCommand cmd1 = new SqlCommand(s, con);
            cmd1 = new SqlCommand(s, con);
            cmd1.Parameters.AddWithValue("@id", DropDownList2.Text);
            cmd1.Parameters.AddWithValue("@bid", DropDownList3.Text);
            cmd1.Parameters.AddWithValue("@doi", TextBox8.Text);
            cmd1.Parameters.AddWithValue("@dor", TextBox1.Text);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language=javascript>alert('Issued successfully')</script>");
            clearForm();
            s = "select * from bookadd where bid=" + "'" + DropDownList3.Text + "'";
            string bookcount = "";
            con.Open();
            SqlCommand cmd11 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd11.ExecuteReader();
            int ctr = 0;
            string wbal = "";
            while (reader.Read())
            {
                bookcount = reader.GetString(6);
            }
            reader.Close();
            con.Close();
            int nbookcount = Convert.ToInt16(bookcount);
            nbookcount--;
            string nbookcount1 = Convert.ToString(nbookcount);
            s = "update bookadd set copies=@n where bid=@i";
            SqlCommand cmd111 = new SqlCommand(s, con);
            cmd111.Parameters.AddWithValue("@n", nbookcount);
            cmd111.Parameters.AddWithValue("@i", DropDownList3.Text);
            con.Open();
            cmd111.ExecuteNonQuery();
            con.Close();
            TextBox8.Text = "";
            TextBox1.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string str11 = "select * from bookadd where category=" + "'" + DropDownList1.Text + "'";      
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            string str11 = "select * from bookadd where author=" + "'" + TextBox2.Text + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(str11, con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da = new SqlDataAdapter(cmd1);
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from membersignup";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();

            while (reader.Read())
            {
                DropDownList2.Items.Add(reader.GetString(0));
            }

            reader.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from bookadd";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                DropDownList3.Items.Add(reader.GetString(0));
            }
            reader.Close();
            con.Close();
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
    }
}