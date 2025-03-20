using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Product : System.Web.UI.Page
{
    string filename, filepath;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginmaster"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.Visible= true;
        if (!IsPostBack)
        {
            LoadData();

        }
        

    }
    private void LoadData()
    {
        string sel = "select * from productmaster ";
        SqlDataAdapter da = new SqlDataAdapter(sel, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList4.DataTextField = "Product_ID";
        DropDownList4.DataValueField = "Product_ID";
        DropDownList4.DataSource = ds;
        DropDownList4.DataBind();
        GridView1.DataSource = ds;
        GridView1.DataBind();
        
            //string sel1 = "select *from productmaster ";
            //SqlDataAdapter dt = new SqlDataAdapter(sel1, con);
            //DataSet db = new DataSet();
            //da.Fill(db);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
       


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
        string inst = "insert into productmaster values(@Product_Type,@Product_Category,@Product_Name,@Size,@Price,@Image)";
        SqlCommand cmd = new SqlCommand(inst, con);


        cmd.Parameters.AddWithValue("@Product_Type", SqlDbType.VarChar).Value = DropDownList5.SelectedItem.Text;
        cmd.Parameters.AddWithValue("@Product_Category", SqlDbType.VarChar).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.AddWithValue("@Product_Name", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("@Size", SqlDbType.VarChar).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.AddWithValue("@Price", SqlDbType.VarChar).Value = DropDownList3.SelectedItem.Text;
        cmd.Parameters.AddWithValue("@Image", SqlDbType.VarChar).Value = Image1.ImageUrl;
       
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

 /*   protected void Button3_Click(object sender, EventArgs e)
    {
        string up = " update productmaster set values(@Product_Category,@Product_Name,@Size,@Price,@Image,@Description)";
            SqlCommand cmd1 = new SqlCommand(up, con);


            cmd1.Parameters.AddWithValue("@Product_Category", SqlDbType.VarChar).Value = DropDownList1.SelectedItem.Text;
            cmd1.Parameters.AddWithValue("@Product_Name", SqlDbType.VarChar).Value = TextBox2.Text;
            cmd1.Parameters.AddWithValue("@Size", SqlDbType.VarChar).Value = DropDownList2.SelectedItem.Text;
            cmd1.Parameters.AddWithValue("@Price", SqlDbType.VarChar).Value = DropDownList3.SelectedItem.Text;
            cmd1.Parameters.AddWithValue("@Image", SqlDbType.VarChar).Value = Image1.ImageUrl;
            cmd1.Parameters.AddWithValue("@Description", SqlDbType.VarChar).Value = TextBox3.Text;
            try
            {
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Data Updated!!";
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string del = "delete from productmaster values(@Product_Category,@Product_Name,@Size,@Price,@Image,@Description)";
        SqlCommand cmd2 = new SqlCommand(del, con);


        cmd2.Parameters.AddWithValue("@Product_Category", SqlDbType.VarChar).Value = DropDownList1.SelectedItem.Text;
        cmd2.Parameters.AddWithValue("@Product_Name", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd2.Parameters.AddWithValue("@Size", SqlDbType.VarChar).Value = DropDownList2.SelectedItem.Text;
        cmd2.Parameters.AddWithValue("@Price", SqlDbType.VarChar).Value = DropDownList3.SelectedItem.Text;
        cmd2.Parameters.AddWithValue("@Image", SqlDbType.VarChar).Value = Image1.ImageUrl;
        cmd2.Parameters.AddWithValue("@Description", SqlDbType.VarChar).Value = TextBox3.Text;
        try
        {
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data deleted!!";
            
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    */

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        {
            int s = Convert.ToInt32(DropDownList4.SelectedItem.Text);
            string sel = "select * from productmaster where Product_ID =" + s;
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
         //   TextBox1.Text = dt.Rows[0][0].ToString();
            DropDownList5.SelectedItem.Text = dt.Rows[0][1].ToString();
            DropDownList1.SelectedItem.Text = dt.Rows[0][2].ToString();
            TextBox2.Text = dt.Rows[0][3].ToString();
            DropDownList2.SelectedItem.Text = dt.Rows[0][4].ToString();
            DropDownList3.SelectedItem.Text = dt.Rows[0][5].ToString();
            Image1.ImageUrl = dt.Rows[0][6].ToString();
           
         }

    }
   /* protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "up")
        {
            string i = e.CommandArgument.ToString();
            Session["Product_ID"] = e.CommandArgument.ToString();
            string sel = "select * from productmaster where Product_ID=" + Convert.ToInt32(i);
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                TextBox1.Text = dr["Product_ID"].ToString();
                DropDownList1.SelectedItem.Text = dr["Product_category"].ToString();
                TextBox2.Text = dr["Product_Name"].ToString();
                DropDownList2.SelectedItem.Text = dr["Size"].ToString();
                DropDownList3.SelectedItem.Text = dr["Price"].ToString();
                Image1.ImageUrl = dr["Image"].ToString();
                TextBox3.Text = dr["Description"].ToString();

            }
            con.Close();
            LoadData();

            Button1.Enabled = false;
            Button5.Enabled = true;

        }
        if (e.CommandName == "del")
        {
            string i = e.CommandArgument.ToString();

            string del = "delete from productmaster where Product_ID=" + Convert.ToInt32(i);
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
    } */

    protected void Button5_Click(object sender, EventArgs e)
    {
    
        string up = " update productmaster set values(@Product_Type,@Product_Category,@Product_Name,@Size,@Price,@Image)";
            SqlCommand cmd1 = new SqlCommand(up, con);

            cmd1.Parameters.AddWithValue("@Product_Type", SqlDbType.VarChar).Value = DropDownList5.SelectedItem.Text;
            //cmd1.Parameters.AddWithValue("@Product_ID", SqlDbType.Int).Value = TextBox1.Text;  
            cmd1.Parameters.AddWithValue("@Product_Category", SqlDbType.VarChar).Value = DropDownList1.SelectedItem.Text;
            cmd1.Parameters.AddWithValue("@Product_Name", SqlDbType.VarChar).Value = TextBox2.Text;
            cmd1.Parameters.AddWithValue("@Size", SqlDbType.VarChar).Value = DropDownList2.SelectedItem.Text;
            cmd1.Parameters.AddWithValue("@Price", SqlDbType.VarChar).Value = DropDownList3.SelectedItem.Text;
            cmd1.Parameters.AddWithValue("@Image", SqlDbType.VarChar).Value = Image1.ImageUrl;
            
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


   
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "up")
        {
            string i = e.CommandArgument.ToString();
            Session["Product_ID"] = e.CommandArgument.ToString();
            string sel = "select * from productmaster where Product_ID=" + Convert.ToInt32(i);
            SqlDataAdapter da = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
              //  TextBox1.Text = dr["Product_ID"].ToString();
                DropDownList5.SelectedItem.Text = dr["Product_Type"].ToString();
                DropDownList1.SelectedItem.Text = dr["Product_category"].ToString();
                TextBox2.Text = dr["Product_Name"].ToString();
                DropDownList2.SelectedItem.Text = dr["Size"].ToString();
                DropDownList3.SelectedItem.Text = dr["Price"].ToString();
                Image1.ImageUrl = dr["Image"].ToString();
                

            }
            con.Close();
            LoadData();

            Button2.Enabled = false;
            Button5.Enabled = true;

        }
        if (e.CommandName == "del")
        {
            string i = e.CommandArgument.ToString();

            string del = "delete from productmaster where Product_ID=" + Convert.ToInt32(i);
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