using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Faq_form : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string inst = "insert into Faq_master values(@Name,@Email_ID,@Message)";
        SqlCommand cmd = new SqlCommand(inst, con);


        cmd.Parameters.AddWithValue("Name", SqlDbType.VarChar).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("Email_ID", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("Message", SqlDbType.VarChar).Value = TextBox3.Text;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
           

        }
        catch (Exception ex)
        {
            throw ex;
        }

    }
}