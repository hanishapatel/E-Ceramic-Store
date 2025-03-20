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

public partial class Order_Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            load_data1();
        }
    }
    private void load_data1()
    {

        string sel = "select  *from Order_Detail ";
        SqlDataAdapter da = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        string total = "select sum(Amount) from Order_Detail";
        SqlDataAdapter da1 = new SqlDataAdapter(total, con);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        Label1.Text = dt1.Rows[0][0].ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkRow = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
            if (chkRow.Checked)
            {
                int no = Convert.ToInt32(row.Cells[1].Text);

                string del = "delete from Order_Detail where OrderDetail_ID  = " + no;
                SqlCommand cmd = new SqlCommand(del, con);
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

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Order_Placed.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkRow = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
            if (chkRow.Checked)
            {
                int no = Convert.ToInt32(row.Cells[2].Text);
                Response.Redirect("Add_to_cart.aspx?ProQty="+no);
                
                //string up = "update Order_Detail set values where OrderDetail_ID  = " + no;
                //SqlCommand cmd = new SqlCommand(up, con);
                //try
                //{
                //    con.Open();
                //    cmd.ExecuteNonQuery();
                //    con.Close();
                //    load_data1();
                //}
                //catch (Exception ex)
                //{
                //    throw ex;
                //}
            }

        }

    }
}