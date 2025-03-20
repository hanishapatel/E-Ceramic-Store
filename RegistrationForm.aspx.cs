using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class RegistrationForm : System.Web.UI.Page
{
    string filename, filepath;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.Visible = false;

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/images/") + filename);
                Image1.Visible = true;
                Image1.ImageUrl = "~/images/" + filename;
                filepath = "~/images/" + filename;


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        else
        {

        }
    }


   
   
   protected void Button2_Click(object sender, EventArgs e)
   {
       {
           if (rbMale.Checked == true)
           {
               string g = rbMale.Text;
           }
           else if (rbfemale.Checked == true)
           {
               string g = rbfemale.Text;
           }



           string inst = "insert into registration values(@Image,@First_Name,@Middle_Name,@Last_Name,@Occupation,@Joining_Date,@Address,@City,@Pincode,@State,@Gender,@Contact_no,@Email_ID,@Password,@Role_ID,@Role_Name)";
           SqlCommand cmd = new SqlCommand(inst, con);

           cmd.Parameters.AddWithValue("Image", SqlDbType.VarChar).Value = Image1.ImageUrl;
           cmd.Parameters.AddWithValue("First_Name", SqlDbType.VarChar).Value = textbox1.Text;
           cmd.Parameters.AddWithValue("Middle_Name", SqlDbType.VarChar).Value = textbox2.Text;
           cmd.Parameters.AddWithValue("Last_Name", SqlDbType.VarChar).Value = textbox3.Text;
           cmd.Parameters.AddWithValue("Occupation", SqlDbType.VarChar).Value = textbox4.Text;
           cmd.Parameters.AddWithValue("Joining_Date", SqlDbType.Date).Value = Convert.ToDateTime(textbox5.Text);
           cmd.Parameters.AddWithValue("Address", SqlDbType.VarChar).Value = TextBox11.Text;
           cmd.Parameters.AddWithValue("City", SqlDbType.VarChar).Value = textbox6.Text;
           cmd.Parameters.AddWithValue("Pincode", SqlDbType.Int).Value = textbox7.Text;
           cmd.Parameters.AddWithValue("State", SqlDbType.VarChar).Value = textbox8.Text;
           cmd.Parameters.AddWithValue("Gender", SqlDbType.VarChar).Value = Button2.Text;
           cmd.Parameters.AddWithValue("Contact_no", SqlDbType.NVarChar).Value = textbox9.Text;
           cmd.Parameters.AddWithValue("Email_id", SqlDbType.VarChar).Value = textbox10.Text;
           cmd.Parameters.AddWithValue("Password", SqlDbType.VarChar).Value = textBox12.Text;
           cmd.Parameters.AddWithValue("Role_ID", SqlDbType.Int).Value = TextBox13.Text;
           cmd.Parameters.AddWithValue("Role_Name", SqlDbType.VarChar).Value = TextBox14.Text;
           try
           {
               con.Open();
               cmd.ExecuteNonQuery();
               con.Close();
               Response.Redirect("~/LogIn.aspx");
           }
           catch (Exception ex)
           {
               throw ex;
           }

       }
   }
}

