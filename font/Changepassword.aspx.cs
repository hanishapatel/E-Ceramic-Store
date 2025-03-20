using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



public partial class Changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

   protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            
            con.Open();

            string Email_ID = TextBox1.Text;
            string Password = TextBox2.Text;
            string New_Password = TextBox3.Text;
            string Confirm_Password = TextBox4.Text;

            string sel = "select Email_ID,Password from registration where Email_ID=@Email_ID and Password = @Password";

            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter re = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@Email_ID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password",TextBox2.Text );
            DataTable dt = new DataTable();
            re.Fill(dt);
           

            
            if(dt.Rows[0][0].ToString() != string.Empty && dt.Rows[0][1].ToString() != string.Empty)
            
            {
                if (New_Password.Trim() != Confirm_Password.Trim())
                {
                   lblMsg.Text = "New Password and old password does not match";

                }
                else
                {
                    string UP  = "UPDATE registration SET Password = @New_Password WHERE Email_ID=@Email_ID";
                    SqlCommand cmd1 = new SqlCommand(UP, con);
                    cmd1.Parameters.AddWithValue("@New_Password", TextBox3.Text);
                    cmd1.Parameters.AddWithValue("@Email_ID", TextBox1.Text);
                    cmd1.Parameters.AddWithValue("@Password", TextBox2.Text);

                    int count = cmd1.ExecuteNonQuery();

                    if (count > 0)
                    {
                        lblMsg.Text = "Password changed successfully";
                    }
                    else
                    {
                        lblMsg.Text = "password not changed";
                    }
                }
            }
            cmd.ExecuteNonQuery();
            con.Close();
            lblMsg.Text = "Congratulations !! Your Password has been changed successfully";
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
   protected void Button2_Click(object sender, EventArgs e)
   {
       Response.Redirect("~/Home.aspx");
   }
} 