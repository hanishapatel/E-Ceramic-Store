using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Showevent : System.Web.UI.Page
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
        string sel = "select Event_ID, Event_Name,Date,Venue from eventform";
        SqlDataAdapter da = new SqlDataAdapter(sel, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
       
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Image")
        { 
            int EID = Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("ShowImage.aspx?EID="+EID);
        
        }
    }
}