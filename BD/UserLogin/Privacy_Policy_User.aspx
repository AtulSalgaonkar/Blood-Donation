<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin/UserHome.master" AutoEventWireup="true" CodeFile="Privacy_Policy_User.aspx.cs" Inherits="UserLogin_Privacy_Policy_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 47px;
        }
        .style5
        {
            height: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="style5" style="background-image: url('../Images/MenuBar.gif')">
                <asp:Label ID="LBLBDSF" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="XX-Large" Font-Underline="True" ForeColor="#FF777A" 
                    Text="Privacy Policy" Font-Names="Impact"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" 
                    Font-Names="Century Schoolbook" style="text-align:center" 
                    Text="IndianBloodDonation.com Blood Donors does not claim that potential donors are free from any disease or bodily conditions that prevent them from donating blood at the time when they are contacted for blood donation. IndianBloodDonation.com Blood Donors does not guarantee that a potential donor will agree to donate blood whenever called upon to do so. It is entirely at the discretion of the individual whether or not to donate blood. Potential donors registering on this site MUST UNDERSTAND that this site is a public directory and all the information on this site is accessible to EVERYONE. IndianBloodDonation.com cannot be held responsible for any dispute, losses or harm arising out of or due to misuse of any information (Eg. Telephone numbers) provided on this site and is not liable to pay any damages thereof. IndianBloodDonation.com cannot be held responsible for any disputes, losses or harm caused to the blood recipient or blood donor or any third party interested in them that arises due to any interaction* between them. IndianBloodDonation.com Blood Donors does not arrange for blood donors. It merely provides relevant information about potential donors to those in need of blood. We urge you not to make false registrations/not to register if you do not seriously wish to donate blood. It is a matter of life and death for those in need of blood in an emergency. "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

