<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="Who_Can_D_Blood.aspx.cs" Inherits="Home_Who_Can_D_Blood" %>

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
    <table class="nav-justified">
    <tr>
        <td class="style5" style="background-image: url('../Images/MenuBar.gif')">
            <asp:Label ID="LBLBDSF" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="XX-Large" Font-Underline="True" Text="Who can donate Blood ?" 
                    ForeColor="#FF777A" Font-Names="Impact"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="text-left">
            <p>
                Any healthy adult, both male and female, can donate blood&nbsp;once in every three 
                months.&nbsp;<br />
                Good health of the donor must be fully ensured.
                <br />
                The universally accepted criteria for donor selection are:</p>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <ol>
                <li class="text-left">Age between 18 and 60&nbsp;years</li>
                <li class="text-left">Hemoglobin : not less than 12.5 g/dL</li>
                <li class="text-left">Pulse : between 50 and 100/minute with no irregularities</li>
                <li class="text-left">Blood Pressure : Systolic 90 : 180 mm Hg and Diastolic 50 : 
                    100 mm Hg</li>
                <li class="text-left">Temperature : Normal (oral temperature not exceeding 37.5 
                    degree C)</li>
                <li class="text-left">Body weight : not less than 46&nbsp;Kg</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td class="style4">
                <asp:Image ID="Image4" runat="server" CssClass="img-circle" 
                    ImageUrl="~/Home/who can Donate blood image/1.gif" Height="250px" 
                    Width="400px" />
        &nbsp;
                <asp:Image ID="Image5" runat="server" CssClass="img-circle" Height="250px" 
                    ImageUrl="~/Home/who can Donate blood image/2.gif" Width="400px" />
&nbsp;
                <asp:Image ID="Image6" runat="server" CssClass="img-circle" Height="250px" 
                    ImageUrl="~/Home/who can Donate blood image/3.gif" Width="400px" />
                <br />
                <br />
                <asp:Image ID="Image7" runat="server" CssClass="img-circle" Height="250px" 
                    ImageUrl="~/Home/who can Donate blood image/4.gif" Width="400px" />
&nbsp;
                <asp:Image ID="Image8" runat="server" CssClass="img-circle" Height="250px" 
                    ImageUrl="~/Home/who can Donate blood image/5.gif" Width="400px" />
&nbsp;
                <asp:Image ID="Image9" runat="server" CssClass="img-circle" Height="250px" 
                    ImageUrl="~/Home/who can Donate blood image/6.gif" Width="400px" />
                <br />
                <br />
                <asp:Image ID="Image10" runat="server" CssClass="img-circle" Height="250px" 
                    ImageUrl="~/Home/who can Donate blood image/7.gif" Width="500px" />
&nbsp;
                <asp:Image ID="Image11" runat="server" CssClass="img-circle" Height="250px" 
                    ImageUrl="~/Home/who can Donate blood image/8.gif" Width="500px" />
        </td>
    </tr>
</table>
</asp:Content>

