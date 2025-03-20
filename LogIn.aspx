<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 80px;
        }
        .style2
        {
            width: 80px;
            height: 33px;
        }
    .style3
    {
        height: 28px;
    }
    </style>
</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table>
  <tr>
    <td class="style3">
        <asp:DropDownList ID="DropDownList1" runat="server" >
        <asp:listitem>Admin</asp:listitem>
        <asp:listitem>Customer</asp:listitem>
        <asp:ListItem>Institution</asp:ListItem>
        </asp:DropDownList>
        
        
    </td>
    </tr>
   
         <tr>  
            <td class="style2" align="left" style="font-size: Medium">
                Email ID
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter valid email" ControlToValidate="textbox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" align="left" style="font-size: Medium">
                Password
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True" 
                    TextMode="Password"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textbox2" ErrorMessage="Enter valid password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan='4'>
                <center>
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" onclick="Button1_Click"  />&nbsp;<asp:Label 
                        ID="Label1" runat="server" Text="Label"></asp:Label>
                </center>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style1" align="center" style="font-size: medium">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationForm.aspx">New User? Click Here</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style1" align="center" style="font-size: medium">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Changepassword.aspx">Want to Change Password?</asp:HyperLink>
            &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

