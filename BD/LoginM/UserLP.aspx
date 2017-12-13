<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="UserLP.aspx.cs" Inherits="LoginM_UserLP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #Table2
        {
            width: 48%;
            height: 234px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <asp:Panel ID="pnlLI" runat="server" Width="1010px">
        <table id="Table2" align="center" class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="True" 
                        Font-Size="XX-Large" Font-Underline="True" Text="User Login"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="UN" runat="server" Font-Bold="True" Text="Username :"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="UNTB2" runat="server" Width="363px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="PSWD" runat="server" Font-Bold="True" Text="Password :"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="PSWDTB" runat="server" TextMode="Password" Width="363px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style2" style="text-align: center">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    <asp:Button ID="LB2" runat="server" Font-Bold="True" Font-Size="Large" 
                        onclick="LB2_Click" Text="Login" BackColor="Black" BorderColor="#CCCCCC" 
                        ForeColor="#FF8285" CssClass="btn focus" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    -----------------------------------or----------------------------------<br />
                    <asp:Button ID="CNA" runat="server" BackColor="Black" BorderColor="#CCCCCC" 
                        Font-Bold="True" Font-Size="Large" ForeColor="#FF8285" 
                        Text="Create new Account?" PostBackUrl="~/Registration.aspx" 
                        CssClass="btn focus" />
                    <br />
                    <asp:LinkButton ID="ForgetPassword1" runat="server" 
                        PostBackUrl="~/LoginM/ForgetPassword1.aspx">Forgotten password?</asp:LinkButton>
                </td>
            </tr>
        </table>
    </asp:Panel>
    
</asp:Content>

