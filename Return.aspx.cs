using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Return : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string str11 = "select memid as MemberId,BookId as bookid,dofissue as DateOfIssue ,dofret as DateOfReturn from issue ";
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
            Label1.Text = ex.ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from issue ";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                DropDownList1.Items.Add(reader.GetString(1));
            }
            reader.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from bookadd where BookId=" + "'" + DropDownList1.Text + "'";
            string bookcount = "";
            con.Open();
            SqlCommand cmd11 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd11.ExecuteReader();
            while (reader.Read())
            {
                bookcount = reader.GetString(6);
            }
            reader.Close();
            con.Close();
            int nbookcount = Convert.ToInt16(bookcount);
            nbookcount++;
            string nbookcount1 = Convert.ToString(nbookcount);
            s = "update bookadd set copies=@n where BOOKID=@i";
            SqlCommand cmd111 = new SqlCommand(s, con);
            cmd111.Parameters.AddWithValue("@n", nbookcount);
            cmd111.Parameters.AddWithValue("@i", DropDownList1.Text);
            con.Open();
            cmd111.ExecuteNonQuery();
            con.Close();
            s = "delete from issue where BOOKID=@i";
            SqlCommand cmd1 = new SqlCommand(s, con);
            cmd1 = new SqlCommand(s, con);
            cmd1.Parameters.AddWithValue("@i", DropDownList1.Text);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Return  successfull";
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
}