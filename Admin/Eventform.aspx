<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Eventform.aspx.cs" Inherits="Admin_Eventform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 1621px;
        }
    </style>
</head>
<body bgcolor="#ffceb7">
    <form id="form1" runat="server">
    <div>
    <center>
    <table border="2" >
      <tr>
      <td align="left"  >
      Event Name
      </td>
      <td align="center">
          <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
      </td>
      </tr>
      <tr>
      <td align="left" >
      Date
      </td>
      <td align="center">
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      </td>
      </tr>
      <tr>
      <td align="left" >
      Venue
      </td>
      <td align="center">
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
      </td>
      </tr>
      <tr>
      <td align="left" >
      Description
      </td>
      <td align="center">
          <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
      </td>
      </tr>
      <tr>
      <td align="center">
          <asp:Button ID="Button1" runat="server" Text="Add" Height="30px" Width="50px" onclick="Button1_Click" />
      </td>
      <td align="center" style="font-family: 'Times New Roman', Times, serif; font-size: medium; ">
          <asp:Button ID="Button2" runat="server" Text="Update" Height="30px" Width="70px" onclick="Button2_Click" />
          
      </td>
      </tr>
      </table>
    </center>
    </div>
      <div>
      <center style="height: auto; width: auto">
       <table frame="border" > 
         <tr>
           <td class="style1">
               <asp:Repeater ID="Repeater1" runat="server" 
                   onitemcommand="Repeater1_ItemCommand" >
               <ItemTemplate>
               <table style=" border: 1px solid #A55129; background-color: #FFF7E7; height: 100px;";  cellpadding="5"
                                            cellspacing="5" width="400px"   >
                                           
                  <tr>
                  <td class="style2" align="left" style="font-size: Medium">
                  Event ID
                  </td>
                  <td>
                      <asp:Label ID="Label1" runat="server" Text='<%#Eval("Event_ID") %>'></asp:Label>
                  </td>
                  </tr>
                  <tr>
                  <td class="style2" align="left" style="font-size: Medium">
                  Event Name
                  </td>
                  <td>
                      <asp:Label ID="Label2" runat="server" Text='<%#Eval("Event_Name") %>'></asp:Label>
                  </td>
                  <td>
                  <asp:Button ID="Button3" runat="server" Text="Update" CommandName="up" CommandArgument='<%#Eval("Event_ID")%>' />
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
                  <asp:Button ID="Button4" runat="server" Text="Delete" CommandName="del" CommandArgument='<%#Eval("Event_ID")%>' />
                  </td>
                  
                  </tr>
                  <tr >
                  <td class="style2" align="left" style="font-size: Medium">
                  Description
                  </td>
                  <td>
                      <asp:Label ID="Label5" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
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
