<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="ForgetPassword2.aspx.cs" Inherits="LoginM_ForgetPassword2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table id="tblEdit" runat="server" class="style1">
        <tr>
            <td class="style2" colspan="2">
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="mail Id (email) :" Visible="False"></asp:Label>
                &nbsp;<asp:TextBox ID="mailTB" runat="server" ReadOnly="True" Visible="False" 
                    Width="304px"></asp:TextBox>
                <br />
                <asp:TextBox ID="UserNTB" runat="server" ReadOnly="True" Visible="False" 
                    Width="304px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Subj : " Visible="False"></asp:Label>
                <asp:TextBox ID="SubTB" runat="server" ReadOnly="True" style="text-align: left" 
                    Width="304px" Visible="False" >Your Password is : </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label4" runat="server" 
                    Text="pass (mail message) (password)&nbsp; : " Visible="False"></asp:Label>
                <asp:TextBox ID="PassTB" runat="server" ReadOnly="True" 
                    Width="304px" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Impact" 
                    Font-Size="XX-Large" style="font-weight: 700" 
                    Text="Are You Sure you dont know your password ?"></asp:Label>
                <br />
                <asp:Button ID="S" runat="server" Font-Bold="True" onclick="S_Click" 
                    Text="Yes send me mail" CssClass="btn focus" BackColor="Black" 
                    BorderColor="#CCCCCC" ForeColor="#FF8080" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                    onclick="Button1_Click" Text="No dont send me mail" CssClass="btn focus" 
                    BackColor="Black" BorderColor="#CCCCCC" ForeColor="#FF8080" />
            </td>
        </tr>
    </table>
</asp:Content>

