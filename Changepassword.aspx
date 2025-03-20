<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td class="style2" align="left" style="font-size:Medium" >
Email ID
</td>
<td class="style1">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2" align="left" style="font-size:Medium" >
Current Password
</td>
<td class="style1">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2" align="left" style="font-size:Medium" >
New Password
</td>
<td class="style1" >
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2" align="left" style="font-size:Medium" >
Confirm Password
</td>
<td class="style1">
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </td>

</tr>
<tr>
<td colspan="2"><center>
    <asp:Button ID="Button1" runat="server" Text="Submit" 
        onclick="Button1_Click1" />&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Home" onclick="Button2_Click1" />

        
        <asp:Label ID="lblMsg" runat="server" Text="lblMsg"></asp:Label>
    </center>
</td>
</tr>
</table>
</asp:Content>

