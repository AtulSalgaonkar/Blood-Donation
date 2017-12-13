<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
<marquee direction="left" behavior="scroll" scrollamount="5" 
        style="color: #FF0000; font-size: small;">  ***  Warning- Do not pay any amount to any person promising supply of blood packets or arranging donors. Inform IndianBloodDonation.com at contact@IndianBloodDonation.com or call our nearest team members. so that we can initiate police/legal action.***   </marquee>
</p>
<p>


<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    <asp:AdRotator ID="AdRotator1" runat="server" Height="300px" Width="1300px" 
            AdvertisementFile="~/Home/Slider1.xml" CssClass="img-responsive" />
        <asp:Timer ID="Timer1" runat="server" Interval="2000">
        </asp:Timer>
    
    </ContentTemplate>
    </asp:UpdatePanel>
    
    </div>

</p>
    <table align="center" class="table-responsive">
        <tr>
            <td>
                <asp:Image ID="Image4" runat="server" Height="133px" Width="379px" 
                    ImageUrl="~/Home/fact1.jpg" />
            </td>
            <td>
                <asp:Label ID="fact1" runat="server" Font-Bold="True" 
                    Text="The average adult has about 10 units of blood in his body. Roughly 1 unit is given during a donation. A healthy donor may donate red blood cells every 56 days, or double red cells every 112 days. "></asp:Label>
            </td>
        </tr>
    </table>
    <table align="center" class="table-responsive">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                    Text="Facts about the blood supply :"></asp:Label>
                <br />
                <ol>
                    <li class="style3">
                        <asp:Label ID="Label2" runat="server" 
                            
                            Text="Blood cannot be manufactured – it can only come from generous donors." 
                            Font-Bold="True"></asp:Label>
                    </li>
                    <li class="style3">
                        <asp:Label ID="Label3" runat="server" 
                            
                            Text="Type AB-positive plasma can be transfused to patients of all other blood types. AB plasma is also usually in short supply" 
                            Font-Bold="True"></asp:Label>
                    </li>
                </ol>
&nbsp;</td>
            <td>
                <asp:Image ID="Image6" runat="server" Height="125px" 
                    ImageUrl="~/Home/fact2.jpg" Width="391px" />
            </td>
        </tr>
    </table>
    <table align="center" class="table-responsive">
        <tr>
            <td>
                <asp:Image ID="Image5" runat="server" Height="136px" 
                    ImageUrl="~/Home/fact3.jpg" Width="248px" />
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" 
                    Text="Facts about blood and its components  :"></asp:Label>
                <br />
                <ol>
                    <li style="text-align: left">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" style="text-align: left" 
                            Text="Blood makes up about 7 percent of your body's weight."></asp:Label>
                    </li>
                    <li style="text-align: left">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" style="text-align: left" 
                            Text="There are four types of transfusable products that can be derived from blood: red cells, platelets, plasma and cryoprecipitate. Typically,&nbsp;two or three of these are produced from a unit of donated whole blood hence each donation can help save up to three lives."></asp:Label>
                    </li>
                </ol>
            </td>
        </tr>
    </table>
    <p>
</p>
    <p>
</p>
    <p>
</p>
</asp:Content>

