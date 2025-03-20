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

public partial class Admin_Addeventimages : System.Web.UI.Page
{
    string filename, filepath;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.Visible = false;
        if (!IsPostBack)
        {
            LoadData();
        }
    }
    private void LoadData()
    {
        string sel = "select Event_ID, Event_Name from eventform";
        SqlDataAdapter da = new SqlDataAdapter(sel, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataTextField = "Event_Name";
        DropDownList1.DataValueField = "Event_ID";
        DropDownList1.DataSource = ds;
        DropDownList1.DataBind();
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
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
        string inst = "insert into addeventimages values(@Event_ID,@Event_Name,@ImagePath)";
        SqlCommand cmd = new SqlCommand(inst, con);



        cmd.Parameters.AddWithValue("Event_ID", SqlDbType.Int).Value = DropDownList1.SelectedItem.Value;
        cmd.Parameters.AddWithValue("Event_Name", SqlDbType.VarChar).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.AddWithValue("ImagePath", SqlDbType.VarChar).Value = Image1.ImageUrl;

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