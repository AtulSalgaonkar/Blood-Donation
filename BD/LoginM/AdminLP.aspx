<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="AdminLP.aspx.cs" Inherits="LoginM_AdminLP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 40%;
        }
        .style5
        {
            width: 40%;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table id="Table2" align="center" class="style1" __designer:mapid="0">
        <tr __designer:mapid="1">
            <td __designer:mapid="2" class="style4">
                &nbsp;</td>
            <td style="text-align: left" __designer:mapid="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="True" 
                        Font-Size="XX-Large" Font-Underline="True" Text="Admin Login"></asp:Label>
            </td>
            <td __designer:mapid="5">
                    &nbsp;</td>
        </tr>
        <tr __designer:mapid="1">
            <td __designer:mapid="2" class="style4">
                &nbsp;</td>
            <td style="text-align: left" __designer:mapid="3">
                &nbsp;</td>
            <td __designer:mapid="5">
                    &nbsp;</td>
        </tr>
        <tr __designer:mapid="6">
            <td __designer:mapid="7" class="style5">
                <asp:Label ID="AN" runat="server" Font-Bold="True" Text="Admin Name :"></asp:Label>
            </td>
            <td style="text-align: left" __designer:mapid="9">
                <asp:TextBox ID="ANTB3" runat="server" Width="363px"></asp:TextBox>
            </td>
            <td __designer:mapid="b">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="d">
            <td __designer:mapid="e" class="style5">
                <asp:Label ID="PSWD3" runat="server" Font-Bold="True" Text="Password :"></asp:Label>
            </td>
            <td style="text-align: left" __designer:mapid="10">
                <asp:TextBox ID="PSWDTB3" runat="server" TextMode="Password" Width="363px"></asp:TextBox>
            </td>
            <td __designer:mapid="12">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="14">
            <td class="style4" __designer:mapid="15">
            </td>
            <td class="style2" style="text-align: left" __designer:mapid="16">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
            <td class="style2" __designer:mapid="18">
            </td>
        </tr>
        <tr __designer:mapid="19">
            <td __designer:mapid="1a" class="style4">
                &nbsp;</td>
            <td style="text-align: left" __designer:mapid="1b">
                <asp:Button ID="LB3" runat="server" Font-Bold="True" Font-Size="Large" 
                         Text="Login" onclick="LB3_Click" CssClass="btn focus" 
                    BackColor="Black" BorderColor="#CCCCCC" ForeColor="#FF8080" />
            </td>
            <td __designer:mapid="1d">
                    &nbsp;</td>
        </tr>
        <tr __designer:mapid="1e">
            <td colspan="3" __designer:mapid="1f">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

