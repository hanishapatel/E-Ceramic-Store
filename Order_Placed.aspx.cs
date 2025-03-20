using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

using System.Net;
using System.Net.Mail;
using System.Web;


public partial class Order_Placed : System.Web.UI.Page
{

    //SqlConnection con = new SqlConnection();
    //SqlCommand cmd = new SqlCommand();
    //DataSet ds = new DataSet();
    //smp obj = new Sms();

     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
     DataTable dt1 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            load_data1();
        }
    }
    private void load_data1()
    {
        string sel = "select * from Order_Detail ";
        SqlDataAdapter da = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        string total = "select sum(Amount) from Order_Detail";
        SqlDataAdapter da1 = new SqlDataAdapter(total, con);
        da1.Fill(dt1);
        Label1.Text = dt1.Rows[0][0].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string inst = "insert into Order_to_be_placed values(@Name,@Pincode,@Email_ID,@Address,@City,@State,@Contact_No)";
        SqlCommand cmd = new SqlCommand(inst, con);

        cmd.Parameters.AddWithValue("Name", SqlDbType.VarChar).Value = Convert.ToString(TextBox1.Text);
        cmd.Parameters.AddWithValue("Pincode", SqlDbType.VarChar).Value = Convert.ToString(TextBox2.Text);
        cmd.Parameters.AddWithValue("Email_ID", SqlDbType.VarChar).Value = Convert.ToString(TextBox5.Text);
        cmd.Parameters.AddWithValue("Address", SqlDbType.VarChar).Value = Convert.ToString(TextBox6.Text);
        cmd.Parameters.AddWithValue("City", SqlDbType.VarChar).Value = Convert.ToString(TextBox3.Text);
        cmd.Parameters.AddWithValue("State", SqlDbType.VarChar).Value = Convert.ToString(DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("Contact_No", SqlDbType.VarChar).Value = Convert.ToString(TextBox4.Text);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            load_data1();

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //ds = obj.sel("select First_Name,Email_ID,Password from registration where First_Name= '" + TextBox1.Text + "' ");
        //lblerror.Text = (ds.Tables[0].Rows[0]["EmailId"]).ToString();
        //if (ds.Tables[0].Rows.Count > 0)
        //{

        //    MailMessage Msg = new MailMessage();
        //    // Sender e-mail address.
        //    Msg.From = new MailAddress(lblerror.Text);
        //    // Recipient e-mail address.
        //    Msg.To.Add(lblerror.Text);
        //    Msg.Subject = "Your Order Details";
        //    Msg.Body = "Hi, <br/>Please check your order Details<br/><br/>Your First_Name: " + ds.Tables[0].Rows[0]["first Name"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["Password"] + "<br/><br/>";
        //    Msg.IsBodyHtml = true;
        //    // your remote SMTP server IP.
        //    SmtpClient smtp = new SmtpClient();
        //    smtp.Host = "smtp.gmail.com";
        //    smtp.Port = 587;
        //    smtp.Credentials = new System.Net.NetworkCredential("epicceramic1@gmail.com", "8401588874");
        //    smtp.EnableSsl = true;
        //    smtp.Send(Msg);
        //    Msg = null;
        //}
        //else
        //{

        //}

        //Response.Redirect("Feedback.aspx");

        //ilClient.Host = "smtp.gmail.com";

        MailMessage Msg = new MailMessage("epicceramic1@gmail.com", TextBox5.Text, 
            "Confirmation Order !!", "Hi, Customer,This is your Total " +
            "Payable Amount is :"+Label1.Text+ "Thank you for Shopping <br> Have a nice day !!");
        Msg.IsBodyHtml = false;
        NetworkCredential mailAuthentication = new 
            NetworkCredential("epicceramic1@gmail.com", "fvjg cltw lxrp oavf");
        SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
        mailClient.EnableSsl = true;
        mailClient.UseDefaultCredentials = false;
        mailClient.Credentials = mailAuthentication;
        mailClient.Send(Msg);
       
    }
}