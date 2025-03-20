<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 268435456px;
        }
    </style>
</head>
<body bgcolor="#ffceb7">
    <form id="form1" runat="server">
    <div>
    <center>
      <table width="550" height ="500" style="font-size: large; font-weight: bold;">
        <tr>
            <td colspan='5'>
            <asp:LinkButton ID="lblAddProduct" runat="server" Text="Add New Product" 
                    onclick="lblAddProduct_Click" ></asp:LinkButton>
            
            </td > 
            <td  >
            <asp:LinkButton ID= "lbleventform" runat="server" Text="Add Events" 
                    onclick="lbleventform_Click"></asp:LinkButton>
            <br /><br />
            <asp:LinkButton ID= "lbladdeventimg" runat="server" Text="Add Event Images" 
                    onclick="lbladdeventimg_Click"></asp:LinkButton>
           
            </td>
            <td >
               <asp:LinkButton ID = "lblexhibition" runat="server" Text="Add Exhibition" 
                    onclick="lblexhibition_Click"></asp:LinkButton><br /><br />
                <asp:LinkButton ID="lblexhibitionimg" runat="server" 
                    Text="Add Exhibition Images" onclick="lblexhibitionimg_Click"></asp:LinkButton>
            </td>
            
            

        </tr>
    </table>
    </center>
    </div>
    </form>
</body>
</html>
