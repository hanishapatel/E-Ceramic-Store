using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

public partial class ShowExhibitionImage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        int ImageID = Convert.ToInt32(Request.QueryString["EID"].ToString());
        string selImage = "select * from ExhibitionImage_Master where Exhibition_ID = " + ImageID;
        SqlDataAdapter da = new SqlDataAdapter(selImage, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }
}