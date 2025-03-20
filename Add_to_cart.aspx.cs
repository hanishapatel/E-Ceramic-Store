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

public partial class Add_to_cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    DataTable dt = new DataTable();
    public string PrePageURL;
    public string URLPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        PrePageURL = Request.UrlReferrer.ToString();
        URLPath = PrePageURL;
        if(PrePageURL.Contains("Tiles.aspx"))
        {
               

            int PID = Convert.ToInt32(Request.QueryString["PID"].ToString());
            string sel = "select * from productmaster where Product_ID=" + PID;
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            ViewState["Product"] = dt;
        }
        else if (PrePageURL.Contains("Glazed_tiles.aspx"))
        {
            int PID = Convert.ToInt32(Request.QueryString["PID"].ToString());
            string sel = "select * from productmaster where Product_ID=" + PID;
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            ViewState["Product"] = dt;
        }
        else if (PrePageURL.Contains("Wooden_tiles.aspx"))
        {
            int PID = Convert.ToInt32(Request.QueryString["PID"].ToString());
            string sel = "select * from productmaster where Product_ID=" + PID;
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            ViewState["Product"] = dt;
        }
        else if (PrePageURL.Contains("Marbles.aspx"))
        {
            int PID = Convert.ToInt32(Request.QueryString["PID"].ToString());
            string sel = "select * from productmaster where Product_ID=" + PID;
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            ViewState["Product"] = dt;
        }
        if (PrePageURL.Contains("Order_Details.aspx"))
        {
            int PID = Convert.ToInt32(Request.QueryString["ProQTY"].ToString());
            string selp = "select P.Product_ID,P.Product_Type,P.Product_Category,P.Product_Name,P.Size,P.Price,P.Image,O.OrderDetail_ID,O.Quantity,O.Product_ID from productmaster P left join Order_Detail O  on P.Product_ID=O.Product_ID where P.Product_ID = " + PID;
            SqlDataAdapter da1 = new SqlDataAdapter(selp, con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            Repeater1.DataSource = dt1;
            Repeater1.DataBind();
            TextBox1.Text = dt1.Rows[0][8].ToString();
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tiles.aspx");    
    }

    protected void btnAddOrder_Click(object sender, EventArgs e)
    {
        PrePageURL = Request.UrlReferrer.ToString();

        if (URLPath.Contains("Add_to_cart.aspx"))
        {

            dt = (DataTable)ViewState["Product"];
            string inst = "insert into Order_Detail values(@Product_ID,@Product_Type,@Product_Category,@Product_Name,@Size,@Price,@Quantity,@Amount)";
            SqlCommand cmd = new SqlCommand(inst, con);


            cmd.Parameters.AddWithValue("Product_ID", SqlDbType.Int).Value = dt.Rows[0][0].ToString();
            cmd.Parameters.AddWithValue("Product_Type", SqlDbType.VarChar).Value = dt.Rows[0][1].ToString();
            cmd.Parameters.AddWithValue("Product_Category", SqlDbType.VarChar).Value = dt.Rows[0][2].ToString();
            cmd.Parameters.AddWithValue("Product_Name", SqlDbType.VarChar).Value = dt.Rows[0][3].ToString();
            cmd.Parameters.AddWithValue("Size", SqlDbType.VarChar).Value = dt.Rows[0][4].ToString();
            cmd.Parameters.AddWithValue("Price", SqlDbType.VarChar).Value = dt.Rows[0][5].ToString();
            cmd.Parameters.AddWithValue("Quantity", SqlDbType.Int).Value = TextBox1.Text;

            int amt = Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(dt.Rows[0][5].ToString());
            cmd.Parameters.AddWithValue("Amount", SqlDbType.Int).Value = amt;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Order_Details.aspx");

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        if (URLPath.Contains("Order_Details.aspx"))
        {
            int PID = Convert.ToInt32(Request.QueryString["ProQTY"].ToString());
            string upquantity = "update Order_Detail set Quantity = " + TextBox1.Text + "where Product_ID = " + PID;
            SqlCommand cmd1 = new SqlCommand(upquantity,con);
            try
            {
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Order_Details.aspx");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
      }
}