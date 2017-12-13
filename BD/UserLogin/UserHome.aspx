<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin/UserHome.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserLogin_UserHome" %>

<asp:Content ID="UsrHC1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center" class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="impact" 
                    Font-Size="XX-Large" Text="Welcome"></asp:Label>
&nbsp;
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="impact" 
                    Font-Size="XX-Large"></asp:Label>
                <table align="center" class="nav-justified">
                    <tr>
                        <td>
                            <asp:Image ID="Image4" runat="server" 
                                ImageUrl="~/UserLogin/userHomeImg/use 1.jpg" />
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
    </table>
    </asp:Content>

