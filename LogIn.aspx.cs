using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class LogIn : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Session["Loginsession"] ="";
            Session["Adminsessions"]="";
           
            LoadData();
        }

    }
    private void LoadData()
    {
        string sel = "select Role_ID,Role_Name from Rolemaster";
        SqlDataAdapter da = new SqlDataAdapter(sel,con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataTextField = "Role_Name";
        DropDownList1.DataValueField = "Role_ID";
        DropDownList1.DataSource = ds;
        DropDownList1.DataBind();
    }

 /*protected void Button1_Click(object sender, EventArgs e)
    {

        string sel = "select * from login where Email_ID='" + TextBox1.Text + "' ";
        SqlDataAdapter da = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            if (TextBox1.Text == dt.Rows[0][1].ToString())
            {
                if (TextBox2.Text == dt.Rows[0][2].ToString())
                {
                    Session["entry"] = TextBox1.Text;
                    Response.Redirect("~/LogIn.aspx");

                }
                else
                {
                    Response.Write("Password Invalid");

                }
            }
            else
            {
                Response.Write("Email ID Invalid");

            }
        }
        string inst = "insert into login values(@Email_ID,@Password)";
        SqlCommand cmd = new SqlCommand(inst, con);

        cmd.Parameters.AddWithValue("@Email_id", SqlDbType.VarChar).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("@Password", SqlDbType.VarChar).Value = TextBox2.Text;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Product.aspx");
        }
        catch (Exception ex)
        {
            throw ex;
        }
         
    }*/

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string inst = "insert into login values(@Email_ID,@Password)";
        SqlCommand cmd = new SqlCommand(inst, con);

        cmd.Parameters.AddWithValue("@Email_id", SqlDbType.VarChar).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("@Password", SqlDbType.VarChar).Value = TextBox2.Text;
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


    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string inst = "insert into login values(@Email_ID,@Password)";
        SqlCommand cmd = new SqlCommand(inst, con);

        cmd.Parameters.AddWithValue("@Email_id", SqlDbType.VarChar).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("@Password", SqlDbType.VarChar).Value = TextBox2.Text;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Session["Loginsession"] = TextBox1.Text;
            if (Session["Loginsession"].ToString() == "admin.ceramic@gmail.com")
            {
                Session["AdminSession"] = TextBox1.Text;
            }
            Response.Redirect("Home.aspx");

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}
 


