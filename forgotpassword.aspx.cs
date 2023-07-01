using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
public partial class forgotpassword : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\digitallibrary\digitallibrary\App_Data\diglibrary.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String str = "select * from membersignup where email=" + "'" + TextBox1.Text + "'";
            SqlCommand cm = new SqlCommand(str, conn);
            SqlDataReader reader;
            conn.Open();
            reader = cm.ExecuteReader();

            int f1 = 0;
            while (reader.Read())
            {
                f1++;
            }
            conn.Close();
            if (f1 == 0)
            {           
                Response.Write("<script>alert('Invalid credentials');</script>");
                clearForm();
            }
            else
            {
                string allowedChars = "";
                allowedChars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";
                allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
                allowedChars += "1,2,3,4,5,6,7,8,9,0,!,@,#,$,%,&,?";
                char[] sep = { ',' };
                string[] arr = allowedChars.Split(sep);
                string passwordString = "";
                string temp = "";
                Random rand = new Random();
                string txt = TextBox1.Text;
                for (int i = 0; i < Convert.ToInt32(txt.Length); i++)
                {
                    temp = arr[rand.Next(0, arr.Length)];
                    passwordString += temp;
                }
                string str1 = "update membersignup set password = @p where email= " + "'" + TextBox1.Text.Trim() + "'";
                conn.Open();
                SqlCommand cmd = new SqlCommand(str1, conn);
                cmd.Parameters.AddWithValue("@p", passwordString);
                cmd.ExecuteNonQuery();
                conn.Close();
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("hemanthsharma47@gmail.com");
                msg.To.Add(TextBox1.Text);
                msg.Subject = "Your New Password ";
                msg.Body = "Your New Password is " + passwordString;
                msg.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                System.Net.NetworkCredential Networkcred = new System.Net.NetworkCredential();
                Networkcred.UserName = "hemanthsharma47@gmail.com";
                Networkcred.Password = "sharma@47";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = Networkcred;
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(msg);   
                Response.Write("<script>alert(' New Password Generated  Is Sent To Your Mail Account.');</script>");
                clearForm();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
            clearForm();
        }
    }
    void clearForm()
    {
        TextBox1.Text = "";
    }
}