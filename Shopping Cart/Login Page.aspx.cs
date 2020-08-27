using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Shopping_Cart
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-GK8JMRQ; Initial Catalog=Shopping Cart; Integrated Security=True;");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Register where Email='" + EmailIDtxtbox.Text + "' and Password='" + Passwordtxtbox.Text + "'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count==1)
            {
                Loginsuccesslbl.Text = "Login Successful";
                Loginsuccesslbl.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Loginsuccesslbl.Text = "Login Error. If you are a new user click register";
                Loginsuccesslbl.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}