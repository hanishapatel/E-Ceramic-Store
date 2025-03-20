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

public partial class Admin_Exhibition_form : System.Web.UI.Page
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
        string sel = "select * from Exhibition_Master ";
        SqlDataAdapter da = new SqlDataAdapter(sel, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string inst = "insert into Exhibition_Master values(@Title,@Date,@Venue)";
        SqlCommand cmd = new SqlCommand(inst, con);

        cmd.Parameters.AddWithValue("Title", SqlDbType.VarChar).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("Date", SqlDbType.Date).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("Venue", SqlDbType.VarChar).Value = TextBox3.Text;
        

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
        string up = " update Exhibution_Master set values(@Title,@Date,@Venue)";
        SqlCommand cmd1 = new SqlCommand(up, con);

        cmd1.Parameters.AddWithValue("Title", SqlDbType.VarChar).Value = TextBox1.Text;
        cmd1.Parameters.AddWithValue("Date", SqlDbType.Date).Value = TextBox2.Text;
        cmd1.Parameters.AddWithValue("Venue", SqlDbType.VarChar).Value = TextBox3.Text;

        try
        {
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            LoadData();
       }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "up")
        {
            string i = e.CommandArgument.ToString();
            Session["Exhibition_ID"] = e.CommandArgument.ToString();
            string sel = "select * from Exhibition_Master where Exhibition_ID=" + Convert.ToInt32(i);
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {

               
                TextBox1.Text = dr["Title"].ToString();
                TextBox2.Text = dr["Date"].ToString();
                TextBox3.Text = dr["Venue"].ToString();

            }
            con.Close();
            LoadData();

          

        }
        if (e.CommandName == "del")
        {
            string i = e.CommandArgument.ToString();

            string del = "delete from Exhibition_ID where Exhibition_ID=" + Convert.ToInt32(i);
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