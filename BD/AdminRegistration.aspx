<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminRegistration.aspx.cs" Inherits="AdminRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: left;
            width: 214px;
        }
        .style5
        {
            width: 214px;
        }
        .style6
        {
            color: #0000CC;
        }
        .style7
        {
            height: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="HMenuDD">
    
        <ul style="background-color: #000000">
            <li><a href="Admin/AdminHome.aspx">Home</a></li>
            <li><a href="AdminRegistration.aspx">Register new admin</a></li>
            <li><a href="CreateNewOrganization.aspx">Create Organization</a></li>   
            <li><a href="Admin/Edit_Admin_Profile.aspx">Edit Admin Profile</a></li>
            <li><a>Approvals</a>
                <ul>
                    <li><a href="Admin/Request_For_Blood_Data.aspx">Blood Request Data</a></li>
                    <li><a href="Admin/Blood_Donation_Status_Data.aspx">Blood Donation Status</a></li>
                </ul>
            </li>
            <li><a href="Admin/Donor_Data.aspx">Donors Data</a></li>
            <li><a href="Organization_Data.aspx">Organization Data</a></li>
            <li><a href="Home/Home.aspx">Logout</a></li>
        </ul>
                    <hr />
    
        &nbsp;<table align="center" class="style1" runat="server" id="tblRegister">
            <tr>
                <td colspan="3" 
                    style="text-align: center; background-image: url('Images/MenuBar.gif');" 
                    class="style7">
&nbsp;<asp:Label ID="CNALbl" runat="server" Font-Bold="True" Font-Names="Impact" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        ForeColor="#FF8285" Text="Create New Admin"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="FNlbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Admin Full Name :"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="AFNTB3" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="AFNTB3" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Genlbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Gender :"></asp:Label>
                </td>
                <td class="style4">
                    <asp:RadioButtonList ID="GenRB3" runat="server" 
                        RepeatDirection="Horizontal" style="font-size: large" Width="150px">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="GenRB3" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Statelbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Location :"></asp:Label>
                </td>
                <td class="style4">
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
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="StateDDL" ErrorMessage="!" Font-Bold="True" 
                        Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Phnlbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Phone no :"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="PhnTB3" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="PhnTB3" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Emlbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="E-mail :"></asp:Label>
                </td>
                <td class="style4">
                    <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style6">exampleemail@host.com</span></span><br />
                    <asp:TextBox ID="EmTB3" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="EmTB3" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="EmTB3" ErrorMessage="*you must enter the valid email id" 
                        Font-Bold="True" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="UNlbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Admin Name :"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="ANTB3" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ANTB3" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Pswdlbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Password :"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="PswdTB3" runat="server" style="font-size: large" 
                        Width="304px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="PswdTB3" ErrorMessage="*Password required" Font-Bold="True" 
                        Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="CoPalbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Confirm Password :"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="CoPaTB3" runat="server" style="font-size: large" 
                        Width="304px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="CoPaTB3" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="PswdTB3" ControlToValidate="CoPaTB3" 
                        ErrorMessage="*Password dosent mach" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="SecChlbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Security Check :"></asp:Label>
                </td>
                <td style="text-align: left" class="style5">
                    <asp:Image ID="SecChIM" runat="server" Height="61px" Width="181px" 
                        ImageUrl="~/SecurityCheck.aspx" />
                </td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="TinBoxlbl" runat="server" Font-Bold="True" 
                        Font-Names="Franklin Gothic Demi Cond" style="font-size: large" 
                        Text="Text in the Box  :"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TinBoxTB" runat="server" style="font-size: large" 
                        Width="304px"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TinBoxTB" ErrorMessage="!" Font-Bold="True" 
                        Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
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
                        Checked="True" Visible="False" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Button ID="RrgB" runat="server" onclick="RrgB_Click" 
                        style="font-size: large" Text="Register" BackColor="Black" 
                        BorderColor="#CCCCCC" ForeColor="#FF8285" CssClass="btn focus" 
                        Font-Bold="True" />
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

