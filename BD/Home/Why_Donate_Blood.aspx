<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="Why_Donate_Blood.aspx.cs" Inherits="Home_Why_Donate_Blood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 47px;
        }
        .style5
        {
            height: 106px;
        }
        .style6
        {
            height: 47px;
            text-align: left;
        }
        .style7
        {
            font-weight: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="style5" style="background-image: url('../Images/MenuBar.gif')">
                <asp:Label ID="LBLBDSF" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="XX-Large" Font-Underline="True" Text="Why Donate Blood?" 
                    ForeColor="#FF777A" Font-Names="Impact"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <span class="style7">
                <asp:Image ID="Image4" runat="server" 
                    ImageUrl="~/Home/LABimg/whyDonateBlood1.gif" />
                <br />
                You don’t need a special reason to give blood. </span>
                <br />
                You just need your own reason.<br />
            </td>
        </tr>
        <tr>
            <td class="style6">
                <ol>
                    <li>Some of us give blood because we were asked by a friend.</li>
                    <li>Some know that a family member or a friend might need blood some day.</li>
                    <li>Some believe it is the right thing we do.</li>
                </ol>
                <p>
                    Whatever your reason, the need&nbsp;is constant and&nbsp;your contribution is important 
                    for a healthy and reliable blood supply.&nbsp; And&nbsp; you’ll feel good knowing you&#39;ve 
                    helped change a life.</p>
                <p>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#FF8080" Text="Some Health Benefits"></asp:Label>
                </p>
                <p>
                    You will receive a mini physical to check your:</p>
                <ul>
                    <li>Pulse</li>
                    <li>Blood pressure</li>
                    <li>Body temperature</li>
                    <li>Hemoglobin</li>
                </ul>
                <p>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#FF8080" Text="What Can You Expect?"></asp:Label>
                </p>
                <ol>
                    <li>Have a light meal and plenty to drink.</li>
                    <li>Bring your donor card, driver&#39;s license or two other forms of identification.</li>
                    <li>Bring the names of medications you are taking.</li>
                </ol>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

