using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Eventform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }


    }
    private void LoadData()
    {
        string sel = "select * from eventform ";
        SqlDataAdapter da = new SqlDataAdapter(sel, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string inst = "insert into eventform values(@Event_Name,@Date,@Venue,@Description)";
        SqlCommand cmd = new SqlCommand(inst, con);



        cmd.Parameters.AddWithValue("Event_Name", SqlDbType.VarChar).Value = TextBox4.Text;
        cmd.Parameters.AddWithValue("Date", SqlDbType.Date).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("Venue", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("Description", SqlDbType.VarChar).Value = TextBox3.Text;

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            LoadData();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string up = " update eventmaster set values(@Event_Name,@Date,@Venue,@Description)";
        SqlCommand cmd1 = new SqlCommand(up, con);

        cmd1.Parameters.AddWithValue("Event_Name", SqlDbType.VarChar).Value = TextBox4.Text;
        cmd1.Parameters.AddWithValue("Date", SqlDbType.Date).Value = TextBox1.Text;
        cmd1.Parameters.AddWithValue("Venue", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd1.Parameters.AddWithValue("Description", SqlDbType.VarChar).Value = TextBoxMode.MultiLine;

        try
        {
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();

           

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
  /* protected void Button3_Click(object sender, EventArgs e)
    {
        string del = "delete from eventmaster values(@Event_Name,@Date,@Venue,@Description)";
        SqlCommand cmd2 = new SqlCommand(del, con);

        cmd2.Parameters.AddWithValue("@Event_Name", SqlDbType.VarChar).Value = TextBox4.Text;
        cmd2.Parameters.AddWithValue("@Date", SqlDbType.Date).Value = TextBox1.Text;
        cmd2.Parameters.AddWithValue("@Venue", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd2.Parameters.AddWithValue("@Description", SqlDbType.VarChar).Value = TextBoxMode.MultiLine;

        try
        {
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();

            Label6.Text = "Data Deleted !!";

        }
        catch (Exception ex)
        {
            throw ex;
        }

    }*/

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "up")
        {
            string i = e.CommandArgument.ToString();
            Session["Event_ID"] = e.CommandArgument.ToString();
            string sel = "select * from eventform where Event_ID=" + Convert.ToInt32(i);
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                
                TextBox4.Text = dr["Event_Name"].ToString();
                TextBox1.Text = dr["Date"].ToString();
                TextBox2.Text = dr["Venue"].ToString();
               TextBox3.Text = dr["Description"].ToString();
               
            }
            con.Close();
            LoadData();

            Button1.Enabled = false;
            Button2.Enabled = true;

        }
        if (e.CommandName == "del")
        {
            string i = e.CommandArgument.ToString();

            string del = "delete  from eventform where Event_ID=" + Convert.ToInt32(i);
            SqlCommand cmd = new SqlCommand(del, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                LoadData();
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }
    }
}