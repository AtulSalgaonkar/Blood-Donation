<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CreateNewOrganization.aspx.cs" Inherits="Admin_CreateNewOrganization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            <li><a href="Home/Home.aspx">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton></a></li>
        </ul>
                    <hr />
        <br />
    
        <table align="center" id="CNewOrgTbl" class="style1" runat="server" >
            <tr>
                <td colspan="3" height="100" 
                    style="background-image: url('Images/MenuBar.gif')">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Impact" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        ForeColor="#FF8285" Text="Create New Organization"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="Organization Type  :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="OrgTypeDDL1" runat="server" Font-Bold="True" 
                        Width="202px">
                        <asp:ListItem Value="SO">[ Select Organization ]</asp:ListItem>
                        <asp:ListItem>Hospital</asp:ListItem>
                        <asp:ListItem>NGO</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="OrgTypeDDL1" ErrorMessage="!" Font-Bold="True" 
                        Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="State :"></asp:Label>
                </td>
                <td>
                <asp:DropDownList ID="SDDL2" runat="server" AutoPostBack="True" Height="22px" 
                    onselectedindexchanged="SDDL_SelectedIndexChanged" Width="187px">
                </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="SDDL2" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="City :"></asp:Label>
                </td>
                <td>
                <asp:DropDownList ID="CDDL2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="CDDL_SelectedIndexChanged" Width="187px">
                </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="CDDL2" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="Location Address :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="LocAddrTB1" runat="server" Height="43px" TextMode="MultiLine" 
                        Width="304px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="LocAddrTB1" ErrorMessage="!" Font-Bold="True" 
                        Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="Contact No :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ConNoTB1" runat="server" Width="304px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ConNoTB1" ErrorMessage="!" Font-Bold="True" 
                        Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="Organization E-mail ID :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="OrgEmTB1" runat="server" 
                        Width="304px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="OrgEmTB1" ErrorMessage="!" Font-Bold="True" 
                        Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Organization Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="OrgNameTB1" runat="server" Width="304px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="OrgNameTB1" ErrorMessage="!" Font-Bold="True" 
                        Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="Uppload Organization Logo :"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="UppImg1" runat="server" Width="240px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Button ID="CNOrgB1" runat="server" Font-Bold="True" 
                        Text="Create New Organization" Font-Size="Medium" 
                        onclick="CNOrgB1_Click" BackColor="Black" BorderColor="#CCCCCC" 
                        ForeColor="#FF8285" CssClass="btn focus" />
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>

