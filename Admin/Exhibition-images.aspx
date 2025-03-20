<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exhibition-images.aspx.cs" Inherits="Admin_Exhibition_images" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ffceb7">
    <form id="form1" runat="server">
    <div>
    <center>
    <table border="2" style="font-size: medium">
    <tr>
    <td>
    Title
    </td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>---Select Title---</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td align="center">
        <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" />
    </td>
    <td>
        <asp:Image ID="Image1" runat="server"  Height="100px" Width="100px"  />
    </td>
    </tr>
    <tr>
    <td align="center">
        <asp:Button ID="Button2" runat="server" Text="Add" Height="30px" Width="100px" 
            onclick="Button2_Click" />
    </td>
    </tr>
    </table>
    </center>
   </div>
   <br /><br />
   <div>
   <center>
   <table>
   <tr>
   <td>
       <asp:Repeater ID="Repeater1" runat="server">
       <ItemTemplate>
       <table>
       <tr>
       <td>
           <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("Title")%>'></asp:LinkButton>
       </td>
       </tr>
       </table>
       </ItemTemplate>
       </asp:Repeater>
   </td>
   </tr>
   </table>
   </center>
   </div>
    </form>
</body>
</html>
