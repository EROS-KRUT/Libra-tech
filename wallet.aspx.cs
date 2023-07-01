using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class wallet : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
    string un = "",s = "", wbal = "";   
        protected void Page_Load(object sender, EventArgs e)
    {
        un = Session["logname"].ToString();
        TextBox1.Text = un.ToString();
        wbal = Session["wbal"].ToString();
        Label2.Text = wbal;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        TextBox5.Text = "100";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
        {
            TextBox5.Text = "200";
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            TextBox5.Text = "500";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
            s = "insert into wallet values(@email,@card,@cvv,@month,@year,@amt)";
                SqlCommand cmd1 = new SqlCommand(s, con);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.AddWithValue("@email", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@card", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@cvv", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@month", DropDownList1.SelectedValue);
                cmd1.Parameters.AddWithValue("@year", TextBox6.Text);
                cmd1.Parameters.AddWithValue("@amt", TextBox5.Text);
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language=javascript>alert('TopUp successful')</script>");
                double wbal1 = Convert.ToDouble(wbal);
                double nbal = Convert.ToDouble(TextBox5.Text);
                double nbal1 = wbal1 + nbal;
                Label2.Text = nbal1.ToString();  
                s = "update membersignup set wbal=@w where email=@e";
                SqlCommand cmd11 = new SqlCommand(s, con);
                cmd11 = new SqlCommand(s, con);
                cmd11.Parameters.AddWithValue("@w", Label2.Text);
                cmd11.Parameters.AddWithValue("@e", un);
                con.Open();
                cmd11.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox6.Text = "";
                TextBox5.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }