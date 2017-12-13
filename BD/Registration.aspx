<%@ Page Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: left;
        }
        .style4
        {
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
    
        &nbsp;&nbsp;<table align="center" class="style1" runat="server" id="tblRegister">
            <tr>
                <td colspan="3" 
                    style="text-align: center; background-image: url('Images/MenuBar.gif');" 
                    class="style4">
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Impact" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        style="text-align: center" Text="Create new Donor Account" 
                        ForeColor="#FF777A"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <br />
                    <asp:Label ID="FN" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Full Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="FNTB" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="FNTB" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Gen" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" Text="Gender :"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="GenRB" runat="server" 
                        RepeatDirection="Horizontal" style="font-size: large">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="GenRB" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="State" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Location :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="StateDDL" runat="server" style="font-size: large" 
                        Width="198px" Height="20px">
                        <asp:ListItem Selected="True" Value="SYS">[Select your Location]</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>Gujrat</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="StateDDL" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Phn" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Phone no :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="PhnTB" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="PswdTB" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Em" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" Text="E-mail :"></asp:Label>
                </td>
                <td>
                    <span class="style3"><a href="mailto:exampleemail@gamil.com">exampleemail@gamil.com</a></span><br />
                    <asp:TextBox ID="EmTB" runat="server" style="font-size: large" 
                        Width="304px" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="EmTB" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="EmTB" ErrorMessage="*you must enter the valid email id" 
                        ForeColor="#0000CC" style="color: #FF0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="UN" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Username :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="UNTB" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="UNTB" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Pswd" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="PswdTB" runat="server" style="font-size: large" 
                        Width="304px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="PswdTB" ErrorMessage="*Password required" 
                        ForeColor="#0000CC" style="color: #FF0000" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="CoPa" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Confirm Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="CoPaTB" runat="server" style="font-size: large" 
                        Width="304px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="CoPaTB" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="PswdTB" ControlToValidate="CoPaTB" 
                        ErrorMessage="*Password dosent mach" ForeColor="#0000CC" 
                        style="color: #FF0000" Font-Bold="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="SecCh" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Security Check :"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:Image ID="SecChIM" runat="server" Height="61px" Width="181px" 
                        ImageUrl="~/SecurityCheck.aspx" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="TinBox" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Text in the Box  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TinBoxTB" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TinBoxTB" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="style2" style="text-align: center; color: #FF0000">
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:CheckBox ID="TnCcb" runat="server" 
                        style="font-weight: 700; font-size: large; text-align: center;" 
                        Text="I agree to &lt;a href='TandC.aspx'&gt;Terms and Conditions&lt;/a&gt;" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Button ID="RrgB" runat="server" onclick="RrgB_Click" 
                        style="font-size: large" Text="Register" BackColor="Black" 
                        BorderColor="#CCCCCC" ForeColor="#FF8285" CssClass="btn focus" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </asp:Content>