<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .style2
        {
            height: 30px;
        }
    </style>
</head>
<body bgcolor="#ffceb7">
    <form id="form1" runat="server"> 
    <div>
        <center>
            <table border="1" style="font-size: medium">
                <tr>
                    <td class="style1">
                        <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"
                            AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <%--<tr>
                    <td class="style2" align="left" style="font-size: Medium">
                        Product ID
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>--%>
                <tr>
                <td class="style2" align="left" style="font-size: Medium" >
                  Product Type
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>---Select Type Of Product---</asp:ListItem>
                    <asp:ListItem>Flooring</asp:ListItem>
                    <asp:ListItem>Wall</asp:ListItem>
                    <asp:ListItem>Bathroom</asp:ListItem>
                    <asp:ListItem>Kitchen</asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                    <td class="style2" align="left" style="font-size: Medium">
                        Product Category
                    </td>
                    <td class="style1">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>---Select Items---</asp:ListItem>
                            <asp:ListItem>Ceramic Tiles</asp:ListItem>
                            <asp:ListItem>Wooden Tiles</asp:ListItem>
                            <asp:ListItem>Glazed Tiles </asp:ListItem>
                            <asp:ListItem>Marbles</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>s
                <tr>
                    <td class="style2" align="left" style="font-size: Medium">
                        Product Name
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2" align="left" style="font-size: Medium">
                        Size
                    </td>
                    <td class="style1">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>---Select Size---</asp:ListItem>
                            <asp:ListItem>300mmx900mm</asp:ListItem>
                            <asp:ListItem>300mmx600mm</asp:ListItem>
                            <asp:ListItem>300mmx300mm</asp:ListItem>
                            <asp:ListItem>800mmx800mm</asp:ListItem>
                            <asp:ListItem>600mmx605mm</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2" align="left" style="font-size: Medium">
                        Price
                    </td>
                    <td class="style1">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>---Select Price---</asp:ListItem>
                            <asp:ListItem>55</asp:ListItem>
                            <asp:ListItem>45</asp:ListItem>
                            <asp:ListItem>35</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>80</asp:ListItem>
                            <asp:ListItem>65</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2" align="left" style="font-size: Medium">
                        Image
                    </td>
                    <td class="style1">
                        <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />

                        <asp:Button ID="Button1" runat="server" Text="Save"  Height="30px" Width="50px" OnClick="Button1_Click" />
                    </td>
                    
                </tr>
                
                <tr>
                    <td class="style2" align="center" colspan="2">
                        <asp:Button ID="Button2" runat="server" Text="ADD" Height="30px" Width="50px"  OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="UPDATE" Height="30px" Width="70px"  OnClick="Button5_Click" />
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
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2"
                            OnRowCommand="GridView1_RowCommand" Width="400px" >
                            
                            <Columns>
                                <asp:TemplateField>
                                <ItemTemplate>
                                <table style="border: 1px solid #A55129; background-color: #FFF7E7" cellpadding="5"
                                            cellspacing="5" width="520px">
                                            <tr>
                                                <td style="width: 200px">
                                                    <asp:Image ID="Image2" ImageUrl='<%# Eval("Image") %>' runat="server" Height="200px"
                                                        Width="200px" />
                                                </td>
                                                <td style="width: 200px">
                                                    <table>
                                                        <tr>
                                                            <td class="style2" align="left" style="font-size: Medium">
                                                                <b>Product ID</b>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Product_ID") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                        <td class="style2" align="left" style="font-size: Medium">
                                                        <b>Product Type</b>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("Product_Type") %>'></asp:Label>
                                                        </td>
                                                        </tr>
                                                       <tr>
                                                            <td class="style2" align="left" style="font-size: Medium">
                                                                <b>Product Category</b>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Product_Category")%>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style2" align="left" style="font-size: Medium">
                                                                <b>Product Name</b>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("Product_Name")%>'></asp:Label>
                                                            </td>
                                                           
                                                        </tr>
                                                        <tr>
                                                            <td class="style2" align="left" style="font-size: Medium">
                                                                <b>Size</b>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblsize" runat="server" Text='<%#Eval("Size")%>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style2" align="left" style="font-size: Medium">
                                                                <b>Price</b>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="left" colspan="2">
                                                                <asp:Button ID="Button3" runat="server" Text="Update" CommandName="up" CommandArgument='<%#Eval("Product_ID")%>' />
                                                            </td>
                                                            <td align="center" colspan="2">
                                                                <asp:Button ID="Button4" runat="server" Text="Delete" CommandName="del" CommandArgument='<%#Eval("Product_ID")%>' />
                                                            </td>
                                                        </tr>
                                                     </table>
                                                </td>
                                            </tr>
                                        </table>
                                </ItemTemplate>
                                    
                                </asp:TemplateField> 
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>
