<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exhibition-form.aspx.cs" Inherits="Admin_Exhibition_form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ffceb7">
    <form id="form1" runat="server">
    <div>
    <center>
    <table  border="2"  style="font-size: medium">
    <tr>
    <td align="left" >
    Title
    </td>
    <td align="center">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left" >
    Date
    </td>
    <td align="center">
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="left" >
    Venue
    </td>
    <td align="center">
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
      <td align="center">
          <asp:Button ID="Button1" runat="server" Text="Add" Width="50px" height="30px" 
              onclick="Button1_Click"/>
      </td>
      <td align="center">
          <asp:Button ID="Button2" runat="server" Text="Update"  Width="60px" 
              Height="30px" onclick="Button2_Click"/>
     </td>
      </tr>
    </table>
    </center>
    </div>
    <br />
      <div>
       <center>
      <table>
     <tr>
     <td>
         <asp:Repeater ID="Repeater1" runat="server" 
             onitemcommand="Repeater1_ItemCommand">
         <ItemTemplate>
         <table style=" border: 1px solid #A55129; background-color: #FFF7E7; height: 100px;";  cellpadding="5"
                                            cellspacing="5" width="400px"   >
                                           
                  <tr>
                  <td class="style2" align="left" style="font-size: Medium">
                  Exhibition ID
                  </td>
                  <td>
                      <asp:Label ID="Label1" runat="server" Text='<%#Eval("Exhibition_ID") %>'></asp:Label>
                  </td>
                  </tr>
                  <tr>
                  <td class="style2" align="left" style="font-size: Medium">
                Title
                  </td>
                  <td>
                      <asp:Label ID="Label2" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                  </td>
                  <td>
                      <asp:Button ID="Button3" runat="server" Text="Update" CommandName="up" CommandArgument='<%#Eval("Exhibition_ID")%>'/>
                  </td>
                  </tr>
                  <tr>
                  <td class="style2" align="left" style="font-size: Medium">
                  Date
                  </td>
                  <td>
                  <asp:Label ID="Label3" runat="server" Text='<%#Eval("Date") %>'></asp:Label>
                      </td>
                     
                  </tr>
                  <tr>
                  <td class="style2" align="left" style="font-size: Medium">
                  Venue
                  </td>
                  <td>
                      <asp:Label ID="Label4" runat="server" Text='<%#Eval("Venue") %>'></asp:Label>
                  </td>
                   <td>
                       <asp:Button ID="Button4" runat="server" Text="Delete" CommandName="del" CommandArgument='<%#Eval("Exhibition_ID")%>' />
                  </td>
                  
                  </tr>
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
