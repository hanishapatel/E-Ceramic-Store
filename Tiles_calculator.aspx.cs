using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;


public partial class Tiles_calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        double Height = Convert.ToInt32(TextBox1.Text);
        double width = Convert.ToInt32(TextBox2.Text);
        double Area = Convert.ToInt32(TextBox3.Text); 
        double Squarefeet = Math.Round((Height * width));
        Sqft.Text =Squarefeet.ToString()  ;
        double tilesnum = Math.Round(Squarefeet/Area);
        tilesneeded.Text = tilesnum.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Sqft.Text = "";
        tilesneeded.Text = "";
    }
}