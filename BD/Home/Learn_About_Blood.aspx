<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="Learn_About_Blood.aspx.cs" Inherits="Home_Learn_About_Blood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 47px;
        }
        .style5
        {
            height: 111px;
        }
    .style6
    {
        height: 47px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="style5" style="background-image: url('../Images/MenuBar.gif')">
                <asp:Label ID="LBLBDSF" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="XX-Large" Font-Underline="True" Text="Learn About Blood" 
                    ForeColor="#FF777A" Font-Names="Impact"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                 <marquee behavior="scroll" direction="left" scrollamount="5" 
                    style="color: #FF0000; font-size: small;">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Home/LABimg/1.jpg" />
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Home/LABimg/2.jpg" />
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Home/LABimg/3.jpg" />
                <asp:Image ID="Image7" runat="server" ImageUrl="~/Home/LABimg/4.jpg" />
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Home/LABimg/5.jpg" />
                <asp:Image ID="Image9" runat="server" ImageUrl="~/Home/LABimg/6.jpg" />
                <asp:Image ID="Image10" runat="server" ImageUrl="~/Home/LABimg/7.jpg" />
                <asp:Image ID="Image11" runat="server" ImageUrl="~/Home/LABimg/8.jpg" />
                <asp:Image ID="Image12" runat="server" ImageUrl="~/Home/LABimg/9.jpg" />
                <asp:Image ID="Image13" runat="server" ImageUrl="~/Home/LABimg/10.jpg" />
                <asp:Image ID="Image14" runat="server" ImageUrl="~/Home/LABimg/11.jpg" /></marquee></td>
        </tr>
        <tr>
            <td class="style6" align="left">
                 &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" 
                     Font-Names="Impact" Font-Size="X-Large" 
                     Text="What Happens to Donated Blood?" ForeColor="#FF8080"></asp:Label>
                 <br />
                 Blood donations help millions of patients in need.&nbsp;
                 <br />
                 To make the journey from “arm to arm,” every unit goes through a series of steps<br />
&nbsp;and tests to ensure that it is as safe as can be.<br />
                 <br />
                 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Impact" 
                     Font-Size="X-Large" Text="All About Blood Types" ForeColor="#FF8080"></asp:Label>
                 <br />
                 All human blood may look alike, but you can’t donate to just anyone and you 
                 can’t receive blood from just anyone.
                 <br />
                 Different blood types need to be matched correctly.<br />
                 <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Impact" 
                     Font-Size="X-Large" Text="Blood Components" ForeColor="#FF8080"></asp:Label>
                 <br />
                 <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                     Text="How can one donation help multiple people?"></asp:Label>
                 <br />
                 In modern medical treatments, patients may receive a pint of whole blood or just 
                 specific components of the blood needed to treat their particular condition.<br />
&nbsp;Up to four components can be derived from donated blood. This approach to treatment, 
                 referred to as blood component therapy,
                 <br />
                 allows several patients to benefit from one pint of donated whole blood. The 
                 main transfusable blood components include:<br />
                 <asp:Image ID="BloodComponent" runat="server" CssClass="btn focus" 
                     ImageUrl="~/Home/LABimg/blood-components-vile.jpg" />
                 <br />
                 <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                     Text="Whole Blood" ForeColor="#FF8080"></asp:Label>
                 <br />
                 Whole blood contains red cells, white cells, and platelets (~45% of volume) 
                 suspended in plasma (~55% of volume).<br />
                 <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                     Text="Red cells" ForeColor="#FF8080"></asp:Label>
                 <br />
                 Red cells, or erythrocytes, carry oxygen from the lungs to your body’s tissue 
                 and take carbon dioxide back to your lungs to be exhaled.<br />
                 <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                     Text="Platelets" ForeColor="#FF8080"></asp:Label>
                 <br />
                 Platelets, or thrombocytes, are small, colorless cell fragments in the blood 
                 whose main function is to interact with clotting proteins to stop or prevent 
                 bleeding.<br />
                 <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                     Text="Plasma" ForeColor="#FF8080"></asp:Label>
                 <br />
                 Plasma is a fluid, composed of about 92% water, 7% vital proteins such as 
                 albumin, gamma globulin, anti- hemophilic factor, and other clotting factors,
                 <br />
                 and 1% mineral salts, sugars, fats, hormones and vitamins.<br />
                 <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                     Text="Cryoprecipitated AHF" ForeColor="#FF8080"></asp:Label>
                 <br />
                 Cryoprecipitated Antihemophilic Factor (Cryo) is a portion of plasma rich in 
                 clotting factors, including Factor VIII and fibrinogen.
                 <br />
                 It is prepared by freezing and then slowly thawing the frozen plasma.<br />
                 <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

