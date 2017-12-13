<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="ForgetPassword1.aspx.cs" Inherits="LoginM_ForgetPassword1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
        }
        .style5
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
        <table class="style1">
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Enter Username : "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="304px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Send my Password in mail" 
                        CssClass="btn focus" Font-Bold="True" BackColor="Black" 
                        BorderColor="#CCCCCC" ForeColor="#FF8080" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    </td>
                <td class="style5">
                    <asp:Label ID="lblMsg" runat="server" style="font-weight: 700" Visible="False"></asp:Label>
                </td>
                <td class="style5">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

