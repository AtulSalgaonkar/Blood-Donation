<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="TandC.aspx.cs" Inherits="Home_TandC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 47px;
        }
        .style5
        {
            height: 117px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="table-responsive">
        <tr>
            <td class="style5" style="background-image: url('Images/MenuBar.gif')">
                <asp:Label ID="LBLBDSF" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="XX-Large" Font-Underline="True" Text="Terms and Conditions" 
                    ForeColor="#FF777A" Font-Names="Impact"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Font-Names="Century Schoolbook" style="text-align:center"
                    Font-Size="Medium">We do not sell contact details of potential donors to any third party or use it in any way for commercial gains. Before donating Blood User should make sure that he have filled the "Blood donation status form".
 We do not guarantee that a potential donor will agree to donate blood whenever called upon to do so. It is entirely depended on the individual whether or not to donate blood.
 We does not claim that potential donors are free from any disease, ailment, or bodily conditions preventing them from donating blood at the time when they are contacted for blood donation.
 We urge you not to make false registrations if you do not seriously wish to donate blood. It is a matter of life and death for those in need of blood in an emergency or otherwise.</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

