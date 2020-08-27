using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Shopping_Cart
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-GK8JMRQ; Initial Catalog=Shopping Cart; Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Register values('"+FirstNametxtbox.Text+"','"+LastNametxtbox.Text+"','"+EmailIDtxtbox.Text+"','"+GenderSelection.SelectedItem.Value+"','"+Addresstxtbox.Text+"','"+MobileNumbertxtbox.Text+"','"+Passwordtxtbox.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Successlbl.Text = "Registered Successfully";
            Response.Redirect("Login Page.aspx");

        }
    }
}