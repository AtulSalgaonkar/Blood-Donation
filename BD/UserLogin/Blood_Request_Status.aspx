<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin/UserHome.master" AutoEventWireup="true" CodeFile="Blood_Request_Status.aspx.cs" Inherits="UserLogin_Blood_Request_Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center" id="BloodReqSTbl" runat="server">
        <tr>
            <td class="style4" colspan="3" 
                style="background-image: url('../Images/MenuBar.gif')">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Impact" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        ForeColor="#FF8285" Text="Blood Request Status"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="UNlbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Username :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="UNlbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="FNlbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Full Nmae :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="FNlbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Elbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="E-mail :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="Elbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Slbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="State :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="Slbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Clbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="City :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="Clbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="BRAlbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Blood Required Address :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="BloodRAlbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="BGlbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Blood Group :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="BGlbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="RDlbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Request Date :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="RDlbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="BRDlbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Blood Required Date :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="BRDlbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="SORlbl" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Status of Request :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="SORlbl0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="MsgIpLBL" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Message :"></asp:Label>
            </td>
            <td class="text-left">
                <asp:Label ID="MsgIpLBL0" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

