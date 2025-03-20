using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lblAddProduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product.aspx");
    }
    protected void lbleventform_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Eventform.aspx");
    }
    protected void lbladdeventimg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Addeventimages.aspx");
    }
    protected void lblexhibition_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Exhibition-form.aspx");
    }

    protected void lblexhibitionimg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Exhibition-images.aspx");
    }
}