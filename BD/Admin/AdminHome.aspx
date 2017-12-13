<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="HMenuDD">
        <ul style="background-color: #000000">
            <li><a href="AdminHome.aspx">Home</a></li>
            <li><a href="../AdminRegistration.aspx">Register new admin</a></li>
            <li><a href="../CreateNewOrganization.aspx">Create Organization</a></li>
            <li><a href="Edit_Admin_Profile.aspx">Edit Admin Profile</a></li>
            <li><a>Approvals</a>
                <ul>
                    <li><a href="Request_For_Blood_Data.aspx">Blood Request Data</a></li>
                    <li><a href="Blood_Donation_Status_Data.aspx">Blood Donation Status</a></li>
                </ul>
            </li>
            <li><a href="Donor_Data.aspx">Donors Data</a></li>
            <li><a href="../Organization_Data.aspx">Organization Data</a></li>
            
            <li>
            <a href="../Home/Home.aspx">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton></a></li>
        </ul>
    </div>
                    <hr />
    <table align="center" class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="impact" 
                    Font-Size="XX-Large" Text="Welcome Admin"></asp:Label>
&nbsp;<asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="impact" 
                    Font-Size="XX-Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table align="center" class="nav-justified">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" CssClass="text-center" Font-Bold="True" 
                    Font-Size="Medium" Font-Names="Century Schoolbook">The Admin accepts or rejects the request for blood by checking the availablity of blood 
and can inform user about blood request response by sending mail to user. Admin will cange the blood donation status from "willing to Donate" to "Donated Blood" when user
will donate Blood to Desired Organization, Before donating Blood User should make sure that he have filled the "Blood donation status form".
It is responsiblity of hospital, Blood collection centers, and Blood Storage facilities to protect the
 health of those donating Blood and to assure the safety of the Blood supply. 
Therefore, tests will be performed and a donor's general health is evaluated at the time of every donation. 
All physical conditions are ultimately subject to the review and approval of a physician in charge and accountable.
 High and Low Blood pressure may exclude a donor for an undetermined length of time.</asp:Label>
            </td>
        </tr>
        </table>
<br />
</asp:Content>

