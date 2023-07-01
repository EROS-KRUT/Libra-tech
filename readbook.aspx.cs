using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class readbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string wbal = Session["wbal"].ToString();
        double wb = Convert.ToDouble(wbal);
        Label1.Text = "Rs." + wbal;
        if (wb >= 10)
        {
            Button1.Enabled = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("readbook1.aspx");
    }
}