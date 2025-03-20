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

public partial class Wooden_tiles : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = GetData();
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }

    }
    private DataSet GetData()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from productmaster where Product_Type ='" + DropDownList1.SelectedItem.Text + "' and size ='" + DropDownList2.SelectedItem.Text + " ' and Product_Category ='Wooden Tiles' ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "PID")
        {
            try
            {
                int PID = Convert.ToInt32(e.CommandArgument.ToString());
                //Response.Write(e.CommandArgument.ToString());
              
                Response.Redirect("Add_to_cart.aspx?PID=" + PID,false);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sel = "select * from productmaster where Product_Type ='" + DropDownList1.SelectedItem.Text + "' and size ='" + DropDownList2.SelectedItem.Text + " ' and Product_Category ='Wooden Tiles' ";
        SqlCommand cmd = new SqlCommand(sel, con);
        SqlDataAdapter da = new SqlDataAdapter(sel, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataSet ds = GetData();
            Repeater1.DataSource = ds;
            Repeater1.DataBind();



        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}