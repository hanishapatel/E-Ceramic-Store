<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 146px;
    }
    .style2
    {
        width: 189px;
    }
        .style3
        {
            width: 189px;
            height: 26px;
        }
        .style4
        {
            width: 146px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
        <tr>
        <td class="style2" align="left" style="font-size:Medium">
        Role ID
        </td>
        <td class="style1">
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="style2" align="left" style="font-size:Medium">
        Role Name
        </td>
        <td class="style1">
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
            </tr>
   
        <tr>
        <td class="style2" align="left" style="font-size:Medium"  >
         First Name
        </td>
        <td class="style1">
            <asp:TextBox id="textbox1" runat="server" CausesValidation="True"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Please, enter first name" ControlToValidate="textbox1" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="style2" rowspan='2'align="left" style="font-size:Medium">
           <asp:Image ID="Image1" runat="server" Width="100px" />
           
       </td>  
        </tr>
        <tr>
          <td class="style2" align="left" style="font-size:Medium">
        Middle Name
        </td>
        <td class="style1">
            <asp:TextBox id="textbox2" runat="server" CausesValidation="True"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please,enter middle name" ControlToValidate="textbox2" ForeColor="Red"></asp:RequiredFieldValidator>
        </td> 
        
        </tr>
        <tr>
        <td class="style2"align="left" style="font-size:Medium">
        Last Name
        </td>
        <td class="style1">
            <asp:TextBox id="textbox3" runat="server" CausesValidation="True"> </asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please,enter last name" ControlToValidate="textbox3"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td class="style2"align="left" style="font-size:Medium">
        Occupation
        </td>
        <td class="style1">
            <asp:TextBox id="textbox4" runat="server"  CausesValidation="True"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please,enter occupation " ControlToValidate="textbox4"></asp:RequiredFieldValidator>
        </td>
        </tr>
         <tr>
        <td class="style2"align="left" style="font-size:Medium">
        Joining Date 
        </td>
        <td class="style1" align="left" style="font-size:Medium">
            <asp:TextBox id="textbox5" runat="server" CausesValidation="True"> </asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please,enter joining date" ControlToValidate="textbox5"></asp:RequiredFieldValidator>
        </td>
        <td class="style2" rowspan='3' align="left" style="font-size:Medium">
       <asp:FileUpload ID="FileUpload1" runat="server" />
   </td>
   </tr>
   <tr>
   <td class="style1"align="left" style="font-size:Medium">
   Address
        </td>
       
        <td class="style1">
            <asp:TextBox ID="TextBox11" runat="server" CausesValidation="True"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please,enter your address" ControlToValidate="textbox11"></asp:RequiredFieldValidator>
            
        </td>
         <td class="style1"align="left" style="font-size:Medium">
       <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
       </td> 
        </tr>
         <tr>
        <td class="style2"align="left" style="font-size:Medium">
        City
        </td>
        <td class="style1">
            <asp:TextBox id="textbox6" runat="server" CausesValidation="True"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please,enter city name" ControlToValidate="textbox6"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td class="style2" align="left" style="font-size:Medium">
        Pin Code
        </td>
        <td class="style1">
            <asp:TextBox id="textbox7" runat="server" CausesValidation="True"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="textbox7" ErrorMessage="Please,enter pincode"></asp:RequiredFieldValidator>
        </td> 
        </tr>   
        <tr>
        <td class="style2"align="left" style="font-size:Medium">
          State
        </td>
        <td class="style1">
            <asp:TextBox id="textbox8" runat="server" CausesValidation="True"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="textbox8" ErrorMessage="Please, enter state name "></asp:RequiredFieldValidator>
         </td> 
         </tr> 
         <tr>
        <td class="style2"align="left" style="font-size:Medium">
        Gender
        </td>
        <td class="style1"align="left" style="font-size:Medium">
            <asp:RadioButton id="rbMale" runat="server" Groupname="Gender" Text="Male" />
        </td>
        </tr>
        <tr>
        <td colspan='1' class="style2"align="left" style="font-size:Medium">
            &nbsp;</td>
        <td class="style1"align="left" style="font-size:Medium">
            <asp:RadioButton id="rbfemale" runat="server" Groupname="Gender" 
                Text="Female" />
         </td>
         </tr>
          <tr>
        <td class="style2"align="left" style="font-size:Medium">
      Contact No
        </td>
        <td class="style1">
            <asp:TextBox id="textbox9" runat="server" ></asp:TextBox>
           
        </td>
        </tr>
         <tr>
        <td class="style3"align="left" style="font-size:Medium">
      Email ID
        </td>
        <td class="style4">
            <asp:TextBox id="textbox10" runat="server" CausesValidation="True"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="textbox10" ErrorMessage="enter valid email"></asp:RequiredFieldValidator>
         </td>
         </tr>
         <tr>
         <td class="style2"align="left" style="font-size:Medium">
         Password
         </td>
         <td class="style1" >
             <asp:TextBox ID="textBox12" runat="server" CausesValidation="True"></asp:TextBox><br />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="enter valid password" ControlToValidate="textbox12"></asp:RequiredFieldValidator>
             </td>
         </tr>
         
       
       <tr>
       <td colspan='2'align="left" style="font-size:Medium"><center>
            
            <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click"
                 />
           
            </center>
        </td>
        </tr>
        
   



</table>
</asp:Content>

