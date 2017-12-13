<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin/UserHome.master" AutoEventWireup="true" CodeFile="EditP.aspx.cs" Inherits="EditP" %>

<asp:Content ID="UsrHC1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
    
        <table class="style1" runat="server" id="tblEdit">
            <tr>
                <td colspan="3" class="style5" height="100" 
                    style="background-image: url('../Images/MenuBar.gif')">
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Impact" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        style="text-align: center" Text="Edit Profile" ForeColor="#FF777A"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="FN" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Full Name :"></asp:Label>
                </td>
                <td style="text-align: left" class="style6">
                    <asp:TextBox ID="FNTB2" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="FNTB2" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Gen" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" Text="Gender :"></asp:Label>
                </td>
                <td style="text-align: left" class="style6">
                    <asp:RadioButtonList ID="GenRB2" runat="server" 
                        RepeatDirection="Horizontal" style="font-size: large">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <p style="text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="GenRB2" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    </p>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="State" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Location :"></asp:Label>
                </td>
                <td style="text-align: center" class="style6">
                    <asp:DropDownList ID="StateDDL2" runat="server" style="font-size: large" 
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
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="StateDDL2" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Phn" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Phone no :"></asp:Label>
                </td>
                <td style="text-align: left" class="style6">
                    <asp:TextBox ID="PhnTB2" runat="server" style="font-size: large; text-align: left;" 
                        Width="304px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="PswdTB2" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Em" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" Text="E-mail :"></asp:Label>
                </td>
                <td style="text-align: left" class="style6">
                    <span class="style3">exampleemail@host.com</span><br />
                    <asp:TextBox ID="EmTB2" runat="server" Width="304px"></asp:TextBox>
                    <br />
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="EmTB2" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="EmTB2" ErrorMessage="*you must enter the valid email id" 
                        ForeColor="#0000CC" style="color: #FF0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="UN" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Username :"></asp:Label>
                </td>
                <td style="text-align: left" class="style6">
                    <asp:TextBox ID="UNTB2" runat="server" style="font-size: large" 
                        Width="304px" ReadOnly="True"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="UNTB2" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Pswd" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Password :"></asp:Label>
                </td>
                <td style="text-align: left" class="style6">
                    <asp:TextBox ID="PswdTB2" runat="server" style="font-size: large" 
                        Width="304px" TextMode="Password"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="PswdTB2" ErrorMessage="*Password required" 
                        ForeColor="#0000CC" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="CoPa" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Confirm Password :"></asp:Label>
                </td>
                <td style="text-align: left" class="style6">
                    <asp:TextBox ID="CoPaTB2" runat="server" style="font-size: large" 
                        Width="304px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="CoPaTB2" ErrorMessage="!" 
                        style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="PswdTB2" ControlToValidate="CoPaTB2" 
                        ErrorMessage="*Password dosent mach" ForeColor="#0000CC" 
                        style="color: #FF0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="style2" style="text-align: center; color: #FF0000">
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Button ID="SavechangeB" runat="server" 
                        style="font-size: large; text-align: right;" Text="Save Changes" 
                        onclick="SavechangeB_Click" BackColor="Black" BorderColor="#CCCCCC" 
                        ForeColor="#FF8285" CssClass="btn focus" />
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </asp:Content>
